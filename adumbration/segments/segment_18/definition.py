import pathlib

import abjad
import baca
import evans

from adumbration.materials.pitch import clef_handlers
from adumbration.materials.score_structure.instruments import instruments as insts
from adumbration.materials.score_structure.score_structure import score
from adumbration.materials.score_structure.segment_18.time_signatures import (
    time_signatures,
)
from adumbration.materials.timespans.segment_18.convert_timespans import rhythm_commands

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

crescendi = evans.DynamicHandler(
    ["sfp", "ff"],
    forget=False,
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
        evans.call(
            "score",
            evans.SegmentMaker.beam_score,
            abjad.select().components(abjad.Score),
        ),
        evans.attach(
            "Global Context",
            abjad.Markup(
                "Ghosts of Departed Quantities",
                direction=abjad.Up,
            )
            .caps()
            .override(("font-name", "STIXGeneral Bold"))
            .box(),
            baca.leaf(0),
        ),
        evans.attach(
            "Global Context",
            mark_115,
            baca.leaf(0),
        ),
        evans.call("Voice 1", clef_handlers[0], abjad.select()),
        evans.call("Voice 2", clef_handlers[1], abjad.select()),
        evans.call("Voice 3", clef_handlers[2], abjad.select()),
        evans.call("Voice 4", clef_handlers[3], abjad.select()),
        evans.call(
            "Voice 1",
            crescendi,
            abjad.select(),
        ),
        evans.call(
            "Voice 2",
            crescendi,
            abjad.select(),
        ),
        evans.call(
            "Voice 3",
            crescendi,
            abjad.select(),
        ),
        evans.call(
            "Voice 4",
            crescendi,
            abjad.select(),
        ),
        evans.call(
            "Voice 1",
            evans.PitchHandler(
                [
                    ["a'", "b''"],
                    ["a'", "c'''"],
                    ["a'", "cs'''"],
                    ["a'", "ctqs'''"],
                ],
                forget=False,
            ),
            abjad.select(),
        ),
        evans.call(
            "Voice 2",
            evans.PitchHandler(
                [
                    ["e'", "g'"],
                    ["e'", "b'"],
                    ["e'", "c''"],
                ],
                forget=False,
            ),
            abjad.select(),
        ),
        evans.call(
            "Voice 3",
            evans.PitchHandler(
                [
                    ["fs", "d'"],
                    ["fs", "ds'"],
                    ["fs", "dtqs'"],
                    ["ftqs", "dtqs'"],
                ],
                forget=False,
            ),
            abjad.select(),
        ),
        evans.call(
            "Voice 4",
            evans.PitchHandler(
                [
                    ["d,", "a,"],
                    ["d,", "a,"],
                    ["d,", "c"],
                ],
                forget=False,
            ),
            abjad.select(),
        ),
    ],
    score_template=score,
    time_signatures=time_signatures,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/evansdsg2/Scores/adumbration/adumbration/build/first_stylesheet.ily",
    ],
    segment_name="segment_18",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=True,
    mm_rests=False,
    barline="||",
    tempo=((1, 4), 115),
    rehearsal_mark="",
    page_break_counts=[90],
    fermata="scripts.ushortfermata",
)

maker.build_segment()
# maker._make_sc_file()
