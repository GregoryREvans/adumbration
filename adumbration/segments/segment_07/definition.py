import pathlib

import abjad
import baca
import evans
import quicktions

from adumbration.materials.pitch import clef_handlers, seg_7_global_pitch_handler
from adumbration.materials.score_structure.instruments import instruments as insts
from adumbration.materials.score_structure.score_structure import score
from adumbration.materials.score_structure.segment_07.time_signatures import (
    time_signatures,
)
from adumbration.materials.timespans.segment_07.convert_timespans import (
    handler_commands,
    rhythm_commands,
)

cyc_padding = evans.CyclicList([8, 4.5, 5.5, 7], forget=False)

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
            seg_7_global_pitch_handler,
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
                left_note=(abjad.Note("c'2")),
                right_note=(
                    abjad.Tuplet(multiplier=(2, 3), components=[abjad.Note("c'4")])
                ),
                modulated_beat=(abjad.Note("c'4")),
            ),
            baca.leaf(0),
        ),
        evans.attach(
            "Global Context",
            abjad.Markup(
                "E.H. [komm (ii)]",
                direction=abjad.Up,
            ).override(("font-name", "STIXGeneral Bold")),
            baca.leaf(0),
        ),
        evans.call(
            "Voice 1",
            evans.DynamicHandler(
                [
                    "p",
                    "mf",
                    "f",
                    "mp",
                    "p",
                    "mf",
                    "f",
                    "mp",
                    "pp",
                    "p",
                    "mf",
                    "f",
                    "mp",
                ],
                forget=False,
                hold_last_boolean_vector=[1],
                with_constante_hairpins=False,
            ),
            abjad.select().runs(),
        ),
        evans.call(
            "Voice 2",
            evans.DynamicHandler(
                [
                    "p",
                    "mf",
                    "f",
                    "mp",
                    "p",
                    "mf",
                    "f",
                    "mp",
                    "pp",
                    "p",
                    "mf",
                    "f",
                    "mp",
                    "pp",
                ],
                forget=False,
                hold_last_boolean_vector=[1],
                with_constante_hairpins=False,
            ),
            abjad.select().runs(),
        ),
        evans.call(
            "Voice 3",
            evans.DynamicHandler(
                [
                    "p",
                    "mf",
                    "f",
                    "mp",
                    "pp",
                    "p",
                    "mf",
                    "pp",
                    "f",
                    "mp",
                    "p",
                    "mf",
                    "pp",
                ],
                forget=False,
                hold_last_boolean_vector=[1],
                with_constante_hairpins=False,
            ),
            abjad.select().runs(),
        ),
        evans.call(
            "Voice 4",
            evans.DynamicHandler(
                [
                    "p",
                    "mf",
                    "f",
                    "mp",
                    "pp",
                    "p",
                    "mf",
                    "f",
                    "mp",
                    "p",
                    "mf",
                    "f",
                    "mp",
                    "pp",
                ],
                forget=False,
                hold_last_boolean_vector=[1],
                with_constante_hairpins=False,
            ),
            abjad.select().runs(),
        ),
        evans.call(
            "Voice 1",
            evans.TextSpanHandler(
                span_one_positions=["clt.", "1/2clt.", "norm.", "1/2clt."],
                span_one_style="solid-line",
                span_one_padding=cyc_padding(r=1)[0],
                attach_span_one_to="bounds",
                hooks=False,
                forget=False,
            ),
            abjad.select().runs(),
        ),
        evans.call(
            "Voice 2",
            evans.TextSpanHandler(
                span_one_positions=["clt.", "1/2clt.", "norm.", "1/2clt."],
                span_one_style="solid-line",
                span_one_padding=cyc_padding(r=1)[0],
                attach_span_one_to="bounds",
                hooks=False,
                forget=False,
            ),
            abjad.select().runs(),
        ),
        evans.call(
            "Voice 3",
            evans.TextSpanHandler(
                span_one_positions=["clt.", "1/2clt.", "norm.", "1/2clt."],
                span_one_style="solid-line",
                span_one_padding=cyc_padding(r=1)[0],
                attach_span_one_to="bounds",
                hooks=False,
                forget=False,
            ),
            abjad.select().runs(),
        ),
        evans.call(
            "Voice 4",
            evans.TextSpanHandler(
                span_one_positions=["clt.", "1/2clt.", "norm.", "1/2clt."],
                span_one_style="solid-line",
                span_one_padding=cyc_padding(r=1)[0],
                attach_span_one_to="bounds",
                hooks=False,
                forget=False,
            ),
            abjad.select().runs(),
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
    segment_name="segment_07",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=False,
    barline="||",
    tempo=((1, 4), 51),
    rehearsal_mark="",
    page_break_counts=[90],
    fermata="scripts.ushortfermata",
)

maker.build_segment()
