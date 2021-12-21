import pathlib

import abjad
import baca
import evans

from adumbration.materials.pitch import clef_handlers
from adumbration.materials.score_structure.instruments import instruments as insts
from adumbration.materials.score_structure.score_structure import score
from adumbration.materials.score_structure.segment_14.time_signatures import (
    time_signatures,
)
from adumbration.materials.timespans.segment_14.convert_timespans import rhythm_commands

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
                r"""\markup \override #'(font-name . "STIXGeneral Bold") \box \caps Fluxes/Phylums""",
                direction=abjad.Up,
            ),
            baca.selectors.leaf(0),
        ),
        evans.call(
            "Voice 1",
            evans.PitchHandler([4], apply_all=True),
            lambda _: abjad.Selection(_),
        ),
        evans.call(
            "Voice 3",
            evans.PitchHandler([-3], apply_all=True),
            lambda _: abjad.Selection(_),
        ),
        evans.call(
            "Voice 4",
            evans.PitchHandler([-24], apply_all=True),
            lambda _: abjad.Selection(_),
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
            clef_handlers[2],
            lambda _: abjad.Selection(_),
        ),
        evans.call(
            "Voice 4",
            clef_handlers[3],
            lambda _: abjad.Selection(_),
        ),
        evans.attach(
            "Global Context",
            evans.metric_modulation(
                metronome_mark=((1, 4), 115),
                left_note=(abjad.Note("c'8.")),
                right_note=(abjad.Note("c'4")),
                modulated_beat=(abjad.Note("c'4")),
            ),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r"\once \override Staff.Clef.X-extent = ##f \once \override Staff.Clef.extra-offset = #'(-2.25 . 0)",
                format_slot="absolute_before",
            ),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 4",
            abjad.LilyPondLiteral(
                r"\once \override Staff.Clef.X-extent = ##f \once \override Staff.Clef.extra-offset = #'(-2.25 . 0)",
                format_slot="absolute_before",
            ),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\markup { full bows as possible }", direction=abjad.Up),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 2",
            abjad.Markup(r"\markup { full bows as possible }", direction=abjad.Up),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 3",
            abjad.Markup(r"\markup { full bows as possible }", direction=abjad.Up),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 4",
            abjad.Markup(r"\markup { full bows as possible }", direction=abjad.Up),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\markup ord.", direction=abjad.Up),
            baca.selectors.leaf(17),
        ),
        evans.attach(
            "Voice 2",
            abjad.Markup(r"\markup ord.", direction=abjad.Up),
            baca.selectors.leaf(11),
        ),
        evans.attach(
            "Voice 3",
            abjad.Markup(r"\markup ord.", direction=abjad.Up),
            baca.selectors.leaf(19),
        ),
        evans.attach(
            "Voice 4",
            abjad.Markup(r"\markup ord.", direction=abjad.Up),
            baca.selectors.leaf(18),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\markup { full bows as possible }", direction=abjad.Up),
            baca.selectors.leaf(30),
        ),
        evans.attach(
            "Voice 2",
            abjad.Markup(r"\markup { full bows as possible }", direction=abjad.Up),
            baca.selectors.leaf(32),
        ),
        evans.attach(
            "Voice 3",
            abjad.Markup(r"\markup { full bows as possible }", direction=abjad.Up),
            baca.selectors.leaf(46),
        ),
        evans.attach(
            "Voice 4",
            abjad.Markup(r"\markup { full bows as possible }", direction=abjad.Up),
            baca.selectors.leaf(68),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\markup ord.", direction=abjad.Up),
            baca.selectors.leaf(40),
        ),
        evans.attach(
            "Voice 2",
            abjad.Markup(r"\markup ord.", direction=abjad.Up),
            baca.selectors.leaf(40),
        ),
        evans.attach(
            "Voice 3",
            abjad.Markup(r"\markup ord.", direction=abjad.Up),
            baca.selectors.leaf(54),
        ),
        evans.attach(
            "Voice 4",
            abjad.Markup(r"\markup ord.", direction=abjad.Up),
            baca.selectors.leaf(81),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\markup { full bows as possible }", direction=abjad.Up),
            baca.selectors.leaf(52),
        ),
        evans.attach(
            "Voice 2",
            abjad.Markup(r"\markup { full bows as possible }", direction=abjad.Up),
            baca.selectors.leaf(67),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\markup ord.", direction=abjad.Up),
            baca.selectors.leaf(62),
        ),
        evans.attach(
            "Voice 2",
            abjad.Markup(r"\markup ord.", direction=abjad.Up),
            baca.selectors.leaf(77),
        ),
        # evans.attach(
        #     "Global Context",
        #     abjad.LilyPondLiteral(r"\break", format_slot="absolute_before"),
        #     baca.selectors.leaf(-2),
        # ),
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
    segment_name="segment_14",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=False,
    mm_rests=False,
    barline=".|:",
    tempo=((1, 4), 153),
    rehearsal_mark="",
    page_break_counts=[90],
    fermata="scripts.ushortfermata",
)

maker.build_segment()
# maker._make_sc_file()
