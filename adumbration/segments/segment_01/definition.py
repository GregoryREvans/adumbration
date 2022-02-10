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
    for leaf in abjad.Selection(selections).leaves(pitched=True):
        tremolo = abjad.StemTremolo(32)
        abjad.attach(tremolo, leaf)


cyc_padding = evans.CyclicList([4, 5.2, 4.6, 5.9], forget=False)


def _call_text_spanner(selections):
    trem_text = evans.TextSpanHandler(
        span_one_positions=["noise", "norm.", "XFB", "noise", "XFB", "norm."],
        span_one_style="solid-line",
        span_one_padding=cyc_padding(r=1)[0],
        attach_span_one_to="bounds",
        hooks=False,
        forget=False,
    )
    for run in abjad.Selection(selections).runs():
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

section_title = abjad.Markup(
    r"""\markup { \box { \override #'(font-name . "STIXGeneral Bold") \caps { Ombreggiato (i) } } }""",
    direction=abjad.Up,
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
            lambda _: abjad.Selection(_).components(abjad.Score),
        ),
        evans.call(
            "score",
            evans.SegmentMaker.rewrite_meter,
            lambda _: abjad.Selection(_).components(abjad.Score),
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
            lambda _: abjad.Selection(_).components(abjad.Score),
        ),
        evans.call(
            "Voice 1",
            _add_tremolos,
            baca.selectors.leaves(),
        ),
        evans.call(
            "Voice 2",
            _add_tremolos,
            baca.selectors.leaves(),
        ),
        evans.call(
            "Voice 3",
            _add_tremolos,
            baca.selectors.leaves(),
        ),
        evans.call(
            "Voice 4",
            _add_tremolos,
            baca.selectors.leaves(),
        ),
        evans.call(
            "Voice 1",
            _call_text_spanner,
            baca.selectors.leaves(),
        ),
        evans.call(
            "Voice 2",
            _call_text_spanner,
            baca.selectors.leaves(),
        ),
        evans.call(
            "Voice 3",
            _call_text_spanner,
            baca.selectors.leaves(),
        ),
        evans.call(
            "Voice 4",
            _call_text_spanner,
            baca.selectors.leaves(),
        ),
        evans.attach(
            "Global Context",
            mark_115,
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("fff"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("fff"),
            baca.selectors.leaf(1),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("fff"),
            baca.selectors.leaf(1),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("fff"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("sfp"),
            baca.selectors.leaf(3),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("<|"),
            baca.selectors.leaf(3),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(5),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(6),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("f"),
            baca.selectors.leaf(11),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(17),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("sfp"),
            baca.selectors.leaf(5),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartHairpin("<|"),
            baca.selectors.leaf(5),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(9),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("f"),
            baca.selectors.leaf(14),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(17),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("sfp"),
            baca.selectors.leaf(5),
        ),
        evans.attach(
            "Voice 3",
            abjad.StartHairpin("<|"),
            baca.selectors.leaf(5),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(7),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("f"),
            baca.selectors.leaf(11),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(15),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("sfp"),
            baca.selectors.leaf(5),
        ),
        evans.attach(
            "Voice 4",
            abjad.StartHairpin("<|"),
            baca.selectors.leaf(5),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(7),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("f"),
            baca.selectors.leaf(13),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(18),
        ),
        evans.attach(
            "Global Context",
            section_title,
            baca.selectors.leaf(0),
        ),
    ],
    score_template=score,
    time_signatures=time_signatures,
    clef_handlers=clef_handlers,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "/Users/gregoryevans/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/gregoryevans/Scores/adumbration/adumbration/build/first_stylesheet.ily",
    ],
    segment_name="segment_01",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=True,
    mm_rests=False,
    barline="||",
    tempo=((1, 4), 115),
    rehearsal_mark="",
    page_break_counts=[90],
)

maker.build_segment()
# maker._make_sc_file()
