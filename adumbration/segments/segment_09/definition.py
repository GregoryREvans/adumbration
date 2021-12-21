import pathlib

import abjad
import baca
import evans
import quicktions

from adumbration.materials.pitch import clef_handlers
from adumbration.materials.score_structure.instruments import instruments as insts
from adumbration.materials.score_structure.score_structure import score
from adumbration.materials.score_structure.segment_09.time_signatures import (
    time_signatures,
)
from adumbration.materials.timespans.segment_09.convert_timespans import (
    handler_commands,
    rhythm_commands,
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

section_title = abjad.Markup(
    r"""\markup \override #'(font-name . "STIXGeneral Bold") \column { \box \caps "Herzensschatzi Komm" \caps "[Komm (iii)]" }""",
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
            "score",
            evans.SegmentMaker.beam_score,
            lambda _: abjad.Selection(_).components(abjad.Score),
        ),
        evans.attach(
            "Global Context",
            evans.metric_modulation(
                metronome_mark=((1, 4), quicktions.Fraction(115, 3)),
                left_note=(
                    abjad.Tuplet(multiplier=((2, 3)), components=[abjad.Note("c'4")])
                ),
                right_note=(abjad.Note("c'2")),
                modulated_beat=(abjad.Note("c'4")),
            ),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Global Context",
            evans.metric_modulation(
                metronome_mark=((1, 4), 115),
                left_note=(abjad.Note("c'2")),
                right_note=(abjad.Note("c'4")),
                modulated_beat=(abjad.Note("c'4")),
            ),
            baca.selectors.leaf(3),
        ),
        evans.attach(
            "Global Context",
            abjad.MetronomeMark((1, 4), 38),
            baca.selectors.leaf(3),
        ),
        evans.attach(
            "Voice 1",
            abjad.LilyPondLiteral(
                r"^ \markup { ½clt. \raise #0.75 \baca-circle-very-wide-markup }",
                format_slot="after",
            ),
            baca.selectors.leaf(0, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.LilyPondLiteral(
                r"^ \markup { clt. \raise #0.75 \baca-circle-very-wide-markup }",
                format_slot="after",
            ),
            baca.selectors.leaf(0, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.LilyPondLiteral(
                r"^ \markup { clt. \raise #0.75 \baca-circle-slow-markup }",
                format_slot="after",
            ),
            baca.selectors.leaf(2, pitched=True),
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
        "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/evansdsg2/Scores/adumbration/adumbration/build/first_stylesheet.ily",
    ],
    segment_name="segment_09",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=True,
    mm_rests=False,
    barline="||",
    tempo=((1, 4), 115),
    rehearsal_mark="",
    page_break_counts=[90],  # prefer system breaks to page breaks?
    fermata="scripts.uverylongfermata",
)

maker.build_segment()
# maker._make_sc_file()
