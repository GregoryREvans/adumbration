import pathlib

import abjad
import baca
import evans
import quicktions

from adumbration.materials.pitch import clef_handlers, seg_5_pitch_handler
from adumbration.materials.score_structure.instruments import instruments as insts
from adumbration.materials.score_structure.score_structure import score
from adumbration.materials.score_structure.segment_05.time_signatures import (
    time_signatures,
)
from adumbration.materials.timespans.segment_05.convert_timespans import (
    handler_commands,
    rhythm_commands,
)


def _add_tremolos(selections):
    for leaf in abjad.Selection(selections).leaves(pitched=True):
        tremolo = abjad.StemTremolo(32)
        abjad.attach(tremolo, leaf)


x = abjad.Markup(r"\markup XFB.", direction=abjad.Up)
n = abjad.Markup(r"\markup norm.", direction=abjad.Up)
s = abjad.Markup(r"\markup noise", direction=abjad.Up)

cyc_techniques = evans.CyclicList([x, n, s, n, x, n, s], forget=False)


def _attach_marks(selections):
    for tie in abjad.Selection(selections).logical_ties(pitched=True):
        abjad.attach(cyc_techniques(r=1)[0], tie[0])


crescendo_markup = abjad.Markup(
    r"""\markup { \override #'(style . "box") \override #'(box-padding . 0.5) \italic \box \whiteout \small "cresc. a m.28 (ff)" }""",
    direction=abjad.Down,
)

section_title = abjad.Markup(
    r"""\markup { \box \override #'(font-name . "STIXGeneral Bold") \caps { Komm (i) } }""",
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
            seg_5_pitch_handler,
            evans.return_vertical_moment_ties,
        ),
        evans.call(
            "score",
            evans.SegmentMaker.beam_score,
            lambda _: abjad.Selection(_).components(abjad.Score),
        ),
        evans.attach(
            "Global Context",
            evans.metric_modulation(
                metronome_mark=((1, 4), quicktions.Fraction(460, 3)),
                left_note=(abjad.Note("c'2")),
                right_note=(abjad.Note("c'4")),
                modulated_beat=(abjad.Note("c'4")),
            ),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Global Context",
            abjad.LilyPondLiteral(r"\break", format_slot="before"),
            baca.selectors.leaf(2),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\markup st.", direction=abjad.Up),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 2",
            abjad.Markup(r"\markup st.", direction=abjad.Up),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 3",
            abjad.Markup(r"\markup st.", direction=abjad.Up),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 4",
            abjad.Markup(r"\markup st.", direction=abjad.Up),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            crescendo_markup,
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 2",
            crescendo_markup,
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 3",
            crescendo_markup,
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 4",
            crescendo_markup,
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(-2, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(-2, pitched=True),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(-2, pitched=True),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(-2, pitched=True),
        ),
        evans.call(
            "Voice 1",
            _add_tremolos,
            lambda _: abjad.Selection(_).leaves(),
        ),
        evans.call(
            "Voice 2",
            _add_tremolos,
            lambda _: abjad.Selection(_).leaves(),
        ),
        evans.call(
            "Voice 3",
            _add_tremolos,
            lambda _: abjad.Selection(_).leaves(),
        ),
        evans.call(
            "Voice 4",
            _add_tremolos,
            lambda _: abjad.Selection(_).leaves(),
        ),
        evans.call(
            "Voice 1",
            _attach_marks,
            lambda _: abjad.Selection(_).logical_ties(),
        ),
        evans.call(
            "Voice 2",
            _attach_marks,
            lambda _: abjad.Selection(_).logical_ties(),
        ),
        evans.call(
            "Voice 3",
            _attach_marks,
            lambda _: abjad.Selection(_).logical_ties(),
        ),
        evans.call(
            "Voice 4",
            _attach_marks,
            lambda _: abjad.Selection(_).logical_ties(),
        ),
        evans.attach(
            "Global Context",
            section_title,
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("<"),
            baca.selectors.leaf(0, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopHairpin(),
            baca.selectors.leaf(-1, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartHairpin("<"),
            baca.selectors.leaf(0, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.StopHairpin(),
            baca.selectors.leaf(-1, pitched=True),
        ),
        evans.attach(
            "Voice 3",
            abjad.StartHairpin("<"),
            baca.selectors.leaf(0, pitched=True),
        ),
        evans.attach(
            "Voice 3",
            abjad.StopHairpin(),
            baca.selectors.leaf(-1, pitched=True),
        ),
        evans.attach(
            "Voice 4",
            abjad.StartHairpin("<"),
            baca.selectors.leaf(0, pitched=True),
        ),
        evans.attach(
            "Voice 4",
            abjad.StopHairpin(),
            baca.selectors.leaf(-1, pitched=True),
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
    segment_name="segment_05",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=True,
    mm_rests=False,
    barline="||",
    tempo=((1, 4), 76),
    rehearsal_mark="",
    page_break_counts=[90],
)

maker.build_segment()
# maker._make_sc_file()
