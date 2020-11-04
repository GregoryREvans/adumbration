import pathlib

import abjad
import baca
import evans

from adumbration.materials.pitch import clef_handlers, global_pitch_handler
from adumbration.materials.score_structure.instruments import instruments as insts
from adumbration.materials.score_structure.score_structure import score
from adumbration.materials.score_structure.segment_01.time_signatures import (
    time_signatures,
)
from adumbration.materials.timespans.segment_01.convert_timespans import (
    handler_commands,
    rhythm_commands,
)


def _add_tremolos(selections):
    for leaf in abjad.select(selections).leaves(pitched=True):
        tremolo = abjad.StemTremolo(32)
        abjad.attach(tremolo, leaf)


cyc_padding = evans.CyclicList([4, 5.2, 4.6, 5.9], forget=False)


def _call_text_spanner(selections):
    trem_text = evans.TextSpanHandler(
        span_one_positions=["noise", "norm.", "XFB.", "noise", "XFB.", "norm."],
        span_one_style="solid-line",
        span_one_padding=cyc_padding(r=1)[0],
        attach_span_one_to="bounds",
        hooks=False,
        forget=False,
    )
    for run in abjad.select(selections).runs():
        if 1 < len(run):
            trem_text(run)


met_115 = abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 115)
mark_115 = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \huge",
        r"  \concat {",
        f"      {str(met_115)[8:]}",
        r"  }",
        r"}",
    ],
    format_slot="after",
)

maker = evans.SegmentMaker(
    instruments=insts,
    names=[
        '"Violin I"',
        '"Violin II"',
        '"Viola"',
        '"Violoncello"',
    ],
    abbreviations=[
        '"vn. I"',
        '"vn. II"',
        '"va."',
        '"vc."',
    ],
    name_staves=True,
    commands=[
        rhythm_commands,
        evans.call(
            "score",
            evans.SegmentMaker.transform_brackets,
            abjad.select().components(abjad.Score),
        ),
        evans.call(
            "score",
            evans.SegmentMaker.rewrite_meter,
            abjad.select().components(abjad.Score),
        ),
        "skips",
        handler_commands,
        evans.call(
            "vertical",
            global_pitch_handler,
            evans.return_vertical_moment_ties,
        ),
        evans.call(
            "score",
            evans.SegmentMaker.beam_score,
            abjad.select().components(abjad.Score),
        ),
        evans.call(
            "Voice 1",
            _add_tremolos,
            baca.leaves(),
        ),
        evans.call(
            "Voice 2",
            _add_tremolos,
            baca.leaves(),
        ),
        evans.call(
            "Voice 3",
            _add_tremolos,
            baca.leaves(),
        ),
        evans.call(
            "Voice 4",
            _add_tremolos,
            baca.leaves(),
        ),
        evans.call(
            "Voice 1",
            _call_text_spanner,
            baca.leaves(),
        ),
        evans.call(
            "Voice 2",
            _call_text_spanner,
            baca.leaves(),
        ),
        evans.call(
            "Voice 3",
            _call_text_spanner,
            baca.leaves(),
        ),
        evans.call(
            "Voice 4",
            _call_text_spanner,
            baca.leaves(),
        ),
        evans.attach(
            "Global Context",
            mark_115,
            baca.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("fff"),
            baca.leaf(0),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("fff"),
            baca.leaf(1),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("fff"),
            baca.leaf(1),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("fff"),
            baca.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("sfp"),
            baca.leaf(3),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("<|"),
            baca.leaf(3),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("ff"),
            baca.leaf(5),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mp"),
            baca.leaf(6),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("f"),
            baca.leaf(11),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mf"),
            baca.leaf(17),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("sfp"),
            baca.leaf(5),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartHairpin("<|"),
            baca.leaf(5),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("ff"),
            baca.leaf(8),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("mp"),
            baca.leaf(9),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("f"),
            baca.leaf(14),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("mf"),
            baca.leaf(17),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("sfp"),
            baca.leaf(5),
        ),
        evans.attach(
            "Voice 3",
            abjad.StartHairpin("<|"),
            baca.leaf(5),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("ff"),
            baca.leaf(7),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("mp"),
            baca.leaf(8),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("f"),
            baca.leaf(11),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("mf"),
            baca.leaf(15),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("sfp"),
            baca.leaf(5),
        ),
        evans.attach(
            "Voice 4",
            abjad.StartHairpin("<|"),
            baca.leaf(5),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("ff"),
            baca.leaf(7),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("mp"),
            baca.leaf(8),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("f"),
            baca.leaf(13),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("mf"),
            baca.leaf(18),
        ),
        evans.attach(
            "Global Context",
            abjad.Markup(
                "ombreggiato",
                direction=abjad.Up,
            ).override(("font-name", "STIXGeneral Bold")),
            baca.leaf(0),
        ),
    ],
    score_template=score,
    time_signatures=time_signatures,
    clef_handlers=clef_handlers,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/evansdsg2/Scores/adumbration/adumbration/build/first_stylesheet.ily",
    ],
    segment_name="segment_01",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=False,
    barline="||",
    tempo=((1, 4), 115),
    rehearsal_mark="",
    page_break_counts=[90],
)

maker.build_segment()
