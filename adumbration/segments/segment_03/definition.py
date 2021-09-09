import pathlib

import abjad
import baca
import evans
import quicktions

from adumbration.materials.pitch import clef_handlers, ring_pitch_handler
from adumbration.materials.score_structure.instruments import instruments as insts
from adumbration.materials.score_structure.score_structure import score
from adumbration.materials.score_structure.segment_03.time_signatures import (
    time_signatures,
)
from adumbration.materials.timespans.segment_03.convert_timespans import (
    handler_commands,
    rhythm_commands,
)

gettato = evans.GettatoHandler(
    number_of_attacks=[4, 5, 6],
    actions=["throw", "drop"],
)


def _add_gettato(selections):
    gettato(selections)


section_title = abjad.Markup(
    r"""\markup { \box \override #'(font-name . "STIXGeneral Bold") \caps { Extinct Anatomies } }""",
    direction=abjad.Up,
    literal=True,
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
            ring_pitch_handler,
            evans.return_vertical_moment_ties,
        ),
        evans.call(
            "score",
            evans.SegmentMaker.beam_score,
            abjad.select().components(abjad.Score),
        ),
        evans.attach(
            "Global Context",
            evans.metric_modulation(
                metronome_mark=((1, 4), quicktions.Fraction(460, 3)),
                left_note=(abjad.Note("c'4")),
                right_note=(
                    abjad.Tuplet(multiplier=(2, 3), components=[abjad.Note("c'4")])
                ),
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
            abjad.Markup(r"\markup ord.", direction=abjad.Up, literal=True),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 2",
            abjad.Markup(r"\markup ord.", direction=abjad.Up, literal=True),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 3",
            abjad.Markup(r"\markup ord.", direction=abjad.Up, literal=True),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 4",
            abjad.Markup(r"\markup ord.", direction=abjad.Up, literal=True),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("sfp"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("<|"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(3),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("sfp"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartHairpin("<|"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(3),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("sfp"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 3",
            abjad.StartHairpin("<|"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(3),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("sfp"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 4",
            abjad.StartHairpin("<|"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(3),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("sfp"),
            baca.selectors.leaf(4),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("<"),
            baca.selectors.leaf(4),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("fff"),
            baca.selectors.leaf(5),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("sfp"),
            baca.selectors.leaf(4),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartHairpin("<"),
            baca.selectors.leaf(4),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("fff"),
            baca.selectors.leaf(5),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("sfp"),
            baca.selectors.leaf(4),
        ),
        evans.attach(
            "Voice 3",
            abjad.StartHairpin("<"),
            baca.selectors.leaf(4),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("fff"),
            baca.selectors.leaf(5),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("sfp"),
            baca.selectors.leaf(4),
        ),
        evans.attach(
            "Voice 4",
            abjad.StartHairpin("<"),
            baca.selectors.leaf(4),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("fff"),
            baca.selectors.leaf(5),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            baca.selectors.leaf(6),
        ),
        evans.attach(
            "Voice 1",
            abjad.Articulation("accent"),
            baca.selectors.leaf(6),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("p"),
            baca.selectors.leaf(6),
        ),
        evans.attach(
            "Voice 2",
            abjad.Articulation("accent"),
            baca.selectors.leaf(6),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("p"),
            baca.selectors.leaf(6),
        ),
        evans.attach(
            "Voice 3",
            abjad.Articulation("accent"),
            baca.selectors.leaf(6),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("p"),
            baca.selectors.leaf(6),
        ),
        evans.attach(
            "Voice 4",
            abjad.Articulation("accent"),
            baca.selectors.leaf(6),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("f"),
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 1",
            abjad.Articulation("tenuto"),
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\markup sp.", direction=abjad.Up, literal=True),
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("f"),
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 2",
            abjad.Articulation("tenuto"),
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 2",
            abjad.Markup(r"\markup sp.", direction=abjad.Up, literal=True),
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("f"),
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 3",
            abjad.Articulation("tenuto"),
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 3",
            abjad.Markup(r"\markup sp.", direction=abjad.Up, literal=True),
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("f"),
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 4",
            abjad.Articulation("tenuto"),
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 4",
            abjad.Markup(r"\markup sp.", direction=abjad.Up, literal=True),
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(10),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(10),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(10),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(10),
        ),
        evans.call("Voice 1", _add_gettato, baca.selectors.leaf(-3)),
        evans.call("Voice 2", _add_gettato, baca.selectors.leaf(-3)),
        evans.call("Voice 3", _add_gettato, baca.selectors.leaf(-3)),
        evans.call("Voice 4", _add_gettato, baca.selectors.leaf(-3)),
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
    add_final_grand_pause=True,
    score_includes=[
        "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/evansdsg2/Scores/adumbration/adumbration/build/first_stylesheet.ily",
    ],
    segment_name="segment_03",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=True,
    mm_rests=False,
    barline="||",
    tempo=((1, 4), 102),
    rehearsal_mark="",
    page_break_counts=[90],
    fermata="scripts.ulongfermata",
)

maker.build_segment()
# maker._make_sc_file()
