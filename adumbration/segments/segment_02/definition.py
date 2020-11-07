import pathlib

import abjad
import baca
import evans

from adumbration.materials.pitch import clef_handlers, flurry_pitch_handler
from adumbration.materials.score_structure.instruments import instruments as insts
from adumbration.materials.score_structure.score_structure import score
from adumbration.materials.score_structure.segment_02.time_signatures import (
    time_signatures,
)
from adumbration.materials.timespans.segment_02.convert_timespans import (
    handler_commands,
    rhythm_commands,
)


def _slur_runs(selections):
    for run in abjad.select(selections).runs():
        if 1 < len(run):
            abjad.attach(abjad.StartSlur(), run[0])
            abjad.attach(abjad.StopSlur(), run[-1])


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
            flurry_pitch_handler,
            evans.return_vertical_moment_ties,
        ),
        evans.call(
            "score",
            evans.SegmentMaker.beam_score,
            abjad.select().components(abjad.Score),
        ),
        evans.attach(
            "Voice 2",
            abjad.StopTextSpan(command=r"\stopTextSpanOne"),
            baca.leaf(0),
        ),
        evans.attach(
            "Global Context",
            evans.metric_modulation(
                metronome_mark=((1, 4), 115),
                left_note=(abjad.Note("c'8.")),
                right_note=(abjad.Note("c'4")),
                modulated_beat=(abjad.Note("c'4")),
            ),
            baca.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("pp"),
            baca.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup("sp.", direction=abjad.Up),
            baca.leaf(0),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("p"),
            baca.leaf(1),
        ),
        evans.attach(
            "Voice 2",
            abjad.Markup("sp.", direction=abjad.Up),
            baca.leaf(1),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("pp"),
            baca.leaf(1),
        ),
        evans.attach(
            "Voice 3",
            abjad.Markup("sp.", direction=abjad.Up),
            baca.leaf(1),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("pp"),
            baca.leaf(1),
        ),
        evans.attach(
            "Voice 4",
            abjad.Markup("sp.", direction=abjad.Up),
            baca.leaf(1),
        ),
        evans.call(
            "Voice 1",
            _slur_runs,
            baca.leaves(),
        ),
        evans.call(
            "Voice 2",
            _slur_runs,
            baca.leaves(),
        ),
        evans.call(
            "Voice 3",
            _slur_runs,
            baca.leaves(),
        ),
        evans.call(
            "Voice 4",
            _slur_runs,
            baca.leaves(),
        ),
        evans.detach("Voice 1", abjad.StartSlur(), baca.leaf(10)),
        evans.attach("Voice 1", abjad.StartSlur(), baca.leaf(11)),
        evans.detach("Voice 2", abjad.StartSlur(), baca.leaf(1)),
        evans.attach("Voice 2", abjad.StartSlur(), baca.leaf(3)),
        evans.attach("Voice 3", abjad.StopSlur(), baca.leaf(4)),
        evans.attach("Voice 3", abjad.StartSlur(), baca.leaf(5)),
        evans.detach("Voice 3", abjad.StopSlur(), baca.leaf(-1, pitched=True)),
        evans.attach("Voice 3", abjad.StopSlur(), baca.leaf(-2, pitched=True)),
        evans.attach("Voice 4", abjad.StopSlur(), baca.leaf(8)),
        evans.attach("Voice 4", abjad.StartSlur(), baca.leaf(12)),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mp"),
            baca.leaf(8, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("f"),
            baca.leaf(16, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("f"),
            baca.leaf(-13, pitched=True),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("mf"),
            baca.leaf(-13, pitched=True),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("mf"),
            baca.leaf(-11, pitched=True),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("f"),
            baca.leaf(-4, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.LilyPondLiteral(
                r"\once \override Staff.TupletBracket.direction = #UP",
                format_slot="after",
            ),
            baca.leaf(9),
        ),
        evans.attach(
            "Voice 1",
            abjad.LilyPondLiteral(
                r"\once \override Staff.TupletBracket.direction = #UP",
                format_slot="after",
            ),
            baca.leaf(14),
        ),
        evans.attach(
            "Voice 2",
            abjad.LilyPondLiteral(
                r"\once \override Staff.TupletBracket.direction = #UP",
                format_slot="absolute_before",
            ),
            baca.leaf(1),
        ),
        evans.attach(
            "Voice 2",
            abjad.LilyPondLiteral(
                r"\once \override Staff.TupletBracket.direction = #UP",
                format_slot="after",
            ),
            baca.leaf(18),
        ),
        evans.attach(
            "Global Context",
            abjad.Markup(
                "Crocodiles (i)",
                direction=abjad.Up,
            )
            .caps()
            .override(("font-name", "STIXGeneral Bold"))
            .box(),
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
    segment_name="segment_02",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=False,
    barline="||",
    tempo=((1, 4), 153),
    rehearsal_mark="",
    page_break_counts=[90],
)

maker.build_segment()
