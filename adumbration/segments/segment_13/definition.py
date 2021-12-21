import pathlib

import abjad
import baca
import evans

from adumbration.materials.pitch import clef_handlers
from adumbration.materials.score_structure.instruments import instruments as insts
from adumbration.materials.score_structure.score_structure import score
from adumbration.materials.score_structure.segment_13.time_signatures import (
    time_signatures,
)
from adumbration.materials.timespans.segment_13.convert_timespans import rhythm_commands


def remove_ottava(leaf):
    indicators = abjad.get.indicators(leaf, abjad.Ottava)
    for _ in indicators:
        abjad.detach(_, leaf)


# clefs = [
#     clef_handlers[0],
#     clef_handlers[1],
#     evans.ClefHandler(
#         clef="alto",
#         add_extended_clefs=True,
#         add_ottavas=True,
#     ),
#     evans.ClefHandler(
#         clef="treble",
#         add_extended_clefs=True,
#         add_ottavas=True,
#     ),
# ]

gett_handler = evans.GettatoHandler(
    number_of_attacks=[
        5,
        7,
        4,
        6,
        3,
        5,
        2,
        4,
    ],
    actions=["throw", "throw", "drop"],
    boolean_vector=[1],
    vector_forget=False,
)

tempo_handler = evans.TempoSpannerHandler(
    tempo_list=[
        (2, 0, 1, "60"),
        (2, 0, 1, "90"),
        (2, 0, 1, "90"),
        (2, 0, 1, "120"),
        (2, 0, 1, "120"),
        (2, 0, 1, "60"),
    ],
    boolean_vector=[1],
    padding=0.2,
    staff_padding=0.2,
    forget=False,
)

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
            lambda _: abjad.Selection(_).components(abjad.Score),
        ),
        evans.call(
            "score",
            evans.SegmentMaker.rewrite_meter,
            lambda _: abjad.Selection(_).components(abjad.Score),
        ),
        "skips",
        evans.call(
            "score",
            evans.SegmentMaker.beam_score,
            lambda _: abjad.Selection(_).components(abjad.Score),
        ),
        evans.attach(
            "Global Context",
            abjad.Markup(
                r"""\markup \override #'(font-name . "STIXGeneral Bold") \box \caps Quipu""",
                direction=abjad.Up,
            ),
            baca.selectors.leaf(0),
        ),
        evans.call(
            "Voice 1",
            clef_handlers[0],
            lambda _: abjad.Selection(_),
        ),
        evans.call(
            "Voice 2",
            clef_handlers[1],
            lambda _: abjad.Selection(_),
        ),
        evans.call(
            "Voice 3",
            evans.ClefHandler(
                clef="alto",
                add_extended_clefs=True,
                add_ottavas=True,
            ),
            lambda _: abjad.Selection(_),
        ),
        evans.call(
            "Voice 4",
            evans.ClefHandler(
                allowable_clefs=["bass", "treble"],
                clef="bass",
                clef_shelf=12,
                add_extended_clefs=True,
                add_ottavas=True,
            ),
            lambda _: abjad.Selection(_),
        ),
        evans.attach(
            "Voice 4",
            abjad.Clef("bass"),
            baca.selectors.leaf(5, pitched=True),
        ),
        evans.call(
            "Voice 3",
            remove_ottava,
            baca.selectors.leaf(11),
        ),
        evans.call(
            "Voice 3",
            remove_ottava,
            baca.selectors.leaf(12),
        ),
        evans.call(
            "Voice 4",
            remove_ottava,
            baca.selectors.leaf(9),
        ),
        evans.call(
            "Voice 4",
            remove_ottava,
            baca.selectors.leaf(10),
        ),
        evans.call(
            "Voice 4",
            remove_ottava,
            baca.selectors.leaf(11),
        ),
        evans.call(
            "Voice 4",
            remove_ottava,
            baca.selectors.leaf(13),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(
                r"\markup XSB(c.3)",
                direction=abjad.Up,
            ),
            baca.selectors.leaf(6, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(
                r"\markup XSB(c.5)",
                direction=abjad.Up,
            ),
            baca.selectors.leaf(9, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(
                r"\markup XSB(c.7)",
                direction=abjad.Up,
            ),
            baca.selectors.leaf(10, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(
                r"\markup XSB(c.9)",
                direction=abjad.Up,
            ),
            baca.selectors.leaf(12, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Articulation("staccato"),
            baca.selectors.leaf(5, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Markup(
                r"\markup XSB(c.3)",
                direction=abjad.Up,
            ),
            baca.selectors.leaf(7, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Markup(
                r"\markup XSB(c.5)",
                direction=abjad.Up,
            ),
            baca.selectors.leaf(9, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Markup(
                r"\markup XSB(c.7)",
                direction=abjad.Up,
            ),
            baca.selectors.leaf(12, pitched=True),
        ),
        evans.attach(
            "Voice 3",
            abjad.Markup(
                r"\markup XSB(c.3)",
                direction=abjad.Up,
            ),
            baca.selectors.leaf(0, pitched=True),
        ),
        evans.attach(
            "Voice 3",
            abjad.Markup(
                r"\markup XSB(c.5)",
                direction=abjad.Up,
            ),
            baca.selectors.leaf(3, pitched=True),
        ),
        evans.attach(
            "Voice 3",
            abjad.Markup(
                r"\markup XSB(c.7)",
                direction=abjad.Up,
            ),
            baca.selectors.leaf(11, pitched=True),
        ),
        evans.attach(
            "Voice 3",
            abjad.Markup(
                r"\markup XSB(c.9)",
                direction=abjad.Up,
            ),
            baca.selectors.leaf(13, pitched=True),
        ),
        evans.attach(
            "Voice 3",
            abjad.Markup(
                r"\markup { slow bow }",
                direction=abjad.Up,
            ),
            baca.selectors.leaf(15, pitched=True),
        ),
        evans.attach(
            "Voice 4",
            abjad.Markup(
                r"\markup XSB(c.3)",
                direction=abjad.Up,
            ),
            baca.selectors.leaf(5, pitched=True),
        ),
        evans.attach(
            "Voice 4",
            abjad.Markup(
                r"\markup XSB(c.4)",
                direction=abjad.Up,
            ),
            baca.selectors.leaf(6, pitched=True),
        ),
        evans.attach(
            "Voice 4",
            abjad.Markup(
                r"\markup XSB(c.7)",
                direction=abjad.Up,
            ),
            baca.selectors.leaf(8, pitched=True),
        ),
        evans.attach(
            "Voice 4",
            abjad.Markup(
                r"\markup XSB(c.9)",
                direction=abjad.Up,
            ),
            baca.selectors.leaf(10, pitched=True),
        ),
        evans.attach(
            "Voice 4",
            abjad.Markup(
                r"\markup { slow bow }",
                direction=abjad.Up,
            ),
            baca.selectors.leaf(12, pitched=True),
        ),
        evans.call(
            "Voice 1",
            gett_handler,
            lambda _: abjad.Selection(_)
            .logical_ties(pitched=True)
            .get(
                [
                    2,
                    7,
                    10,
                ]
            ),
        ),
        evans.call(
            "Voice 2",
            gett_handler,
            lambda _: abjad.Selection(_)
            .logical_ties(pitched=True)
            .get(
                [
                    3,
                    4,
                    6,
                    8,
                ]
            ),
        ),
        evans.call(
            "Voice 3",
            gett_handler,
            lambda _: abjad.Selection(_)
            .logical_ties(pitched=True)
            .get(
                [
                    2,
                    9,
                ]
            ),
        ),
        evans.call(
            "Voice 4",
            gett_handler,
            lambda _: abjad.Selection(_)
            .logical_ties(pitched=True)
            .get(
                [
                    0,
                    1,
                    9,
                ]
            ),
        ),
        evans.attach(
            "Global Context",
            mark_115,
            baca.selectors.leaf(0),
        ),
    ],
    score_template=score,
    time_signatures=time_signatures,
    # clef_handlers=[None],
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=True,
    score_includes=[
        "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/evansdsg2/Scores/adumbration/adumbration/build/first_stylesheet.ily",
    ],
    segment_name="segment_13",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=False,
    mm_rests=False,
    barline="||",
    tempo=((1, 4), 115),
    rehearsal_mark="",
    page_break_counts=[90],
    fermata="scripts.ushortfermata",
)

maker.build_segment()
# maker._make_sc_file()
