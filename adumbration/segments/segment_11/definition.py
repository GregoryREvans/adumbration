import pathlib

import abjad
import baca
import evans

from adumbration.materials.pitch import clef_handlers
from adumbration.materials.score_structure.instruments import instruments as insts
from adumbration.materials.score_structure.score_structure import score
from adumbration.materials.score_structure.segment_11.time_signatures import (
    time_signatures,
)
from adumbration.materials.timespans.segment_11.convert_timespans import (
    handler_commands,
    rhythm_commands,
)

tempo_handler = evans.TempoSpannerHandler(
    tempo_list=[
        (2, 0, 1, "115"),
        (2, 0, 1, "50"),
        (2, 0, 1, "50"),
        (2, 0, 1, "75"),
        (2, 0, 1, "50"),
        (2, 0, 1, "75"),
        (2, 0, 1, "50"),
        (2, 0, 1, "75"),
    ],
    boolean_vector=[1],
    padding=0.2,
    staff_padding=0.2,
    forget=False,
)

marks = evans.CyclicList(
    [
        abjad.LilyPondLiteral(
            r"^ \markup { ½clt. \raise #0.75 \baca-circle-very-wide-markup }",
            format_slot="after",
        ),
        # abjad.LilyPondLiteral(
        #     r"^ \markup { finger percussion }",
        #     format_slot="after",
        # ),
        abjad.LilyPondLiteral(
            r"^ \markup { slow bow }",
            format_slot="after",
        ),
        abjad.LilyPondLiteral(
            r"^ \markup { arco \raise #0.75 \baca-circle-granulation-markup }",
            format_slot="after",
        ),
        abjad.LilyPondLiteral(
            r"^ \markup { slow bow }",
            format_slot="after",
        ),
        abjad.LilyPondLiteral(
            r"^ \markup { arco \raise #0.75 \baca-circle-ext-tight-markup }",
            format_slot="after",
        ),
        abjad.LilyPondLiteral(
            r"^ \markup { clt. \raise #0.75 \baca-circle-fast-markup }",
            format_slot="after",
        ),
        abjad.LilyPondLiteral(
            r"^ \markup { slow bow }",
            format_slot="after",
        ),
        # abjad.LilyPondLiteral(
        #     r"^ \markup { finger percussion }",
        #     format_slot="after",
        # ),
        abjad.LilyPondLiteral(
            r"^ \markup { ½clt. \raise #0.75 \baca-circle-slow-markup }",
            format_slot="after",
        ),
        abjad.LilyPondLiteral(
            r"^ \markup { arco \raise #0.75 \baca-circle-tight-poss-grind-at-talon-markup }",
            format_slot="after",
        ),
        abjad.LilyPondLiteral(
            r"^ \markup { clt. \raise #0.75 \baca-circle-wide-poss-markup }",
            format_slot="after",
        ),
        abjad.LilyPondLiteral(
            r"^ \markup { slow bow }",
            format_slot="after",
        ),
        abjad.LilyPondLiteral(
            r"^ \markup { ½clt. \raise #0.75 \baca-circle-slow-markup }",
            format_slot="after",
        ),
        abjad.LilyPondLiteral(
            r"^ \markup { arco \raise #0.75 \baca-circle-very-wide-markup }",
            format_slot="after",
        ),
        abjad.LilyPondLiteral(
            r"^ \markup { clt. \raise #0.75 \baca-circle-fast-markup }",
            format_slot="after",
        ),
    ],
    forget=False,
)

section_title = abjad.Markup(
    r"""\markup \override #'(font-name . "STIXGeneral Bold") \column { \box \caps "Komm Komm Komm" \caps "[Komm (v)]" }""",
    direction=abjad.Down,
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
            section_title,
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            marks(r=1)[0],
            lambda _: abjad.Selection(_).runs().get([0]).leaf(0),
        ),
        # evans.attach("Voice 1", marks(r=1)[0], lambda _: abjad.Selection(_).runs().get([1]).leaf(0)),
        evans.attach(
            "Voice 1",
            marks(r=1)[0],
            lambda _: abjad.Selection(_).runs().get([2]).leaf(0),
        ),
        evans.attach(
            "Voice 1",
            marks(r=1)[0],
            lambda _: abjad.Selection(_).runs().get([4]).leaf(0),
        ),
        evans.attach(
            "Voice 1",
            marks(r=1)[0],
            lambda _: abjad.Selection(_).runs().get([5]).leaf(0),
        ),
        evans.attach(
            "Voice 2",
            marks(r=1)[0],
            lambda _: abjad.Selection(_).runs().get([0]).leaf(0),
        ),
        evans.attach(
            "Voice 2",
            marks(r=1)[0],
            lambda _: abjad.Selection(_).runs().get([1]).leaf(0),
        ),
        evans.attach(
            "Voice 2",
            marks(r=1)[0],
            lambda _: abjad.Selection(_).runs().get([2]).leaf(0),
        ),
        # evans.attach("Voice 2", marks(r=1)[0], lambda _: abjad.Selection(_).runs().get([7]).leaf(0)),
        evans.attach(
            "Voice 3",
            marks(r=1)[0],
            lambda _: abjad.Selection(_).runs().get([0]).leaf(0),
        ),
        evans.attach(
            "Voice 3",
            marks(r=1)[0],
            lambda _: abjad.Selection(_).runs().get([1]).leaf(0),
        ),
        evans.attach(
            "Voice 3",
            marks(r=1)[0],
            lambda _: abjad.Selection(_).runs().get([2]).leaf(0),
        ),
        evans.attach(
            "Voice 3",
            marks(r=1)[0],
            lambda _: abjad.Selection(_).runs().get([3]).leaf(0),
        ),
        evans.attach(
            "Voice 4",
            marks(r=1)[0],
            lambda _: abjad.Selection(_).runs().get([0]).leaf(0),
        ),
        evans.attach(
            "Voice 4",
            marks(r=1)[0],
            lambda _: abjad.Selection(_).runs().get([1]).leaf(0),
        ),
        evans.attach(
            "Voice 4",
            marks(r=1)[0],
            lambda _: abjad.Selection(_).runs().get([2]).leaf(0),
        ),
        evans.call(
            "Global Context",
            tempo_handler,
            lambda _: abjad.Selection(_).leaves().get([1, 2]),
        ),
        evans.call(
            "Global Context",
            tempo_handler,
            lambda _: abjad.Selection(_).leaves().get([4, 5, 6]),
        ),
        evans.attach(
            "Global Context",
            abjad.MetronomeMark((1, 4), 63),
            baca.selectors.leaf(4),
        ),
        evans.call(
            "Global Context",
            tempo_handler,
            lambda _: abjad.Selection(_).leaves().get([8, 9, 10]),
        ),
        evans.call(
            "Global Context",
            tempo_handler,
            lambda _: abjad.Selection(_).leaves().get([13, 14]),
        ),
        evans.attach(
            "Voice 2", abjad.StopBeam(), baca.selectors.leaf(18, pitched=True)
        ),
        evans.detach(
            "Voice 2", abjad.StopBeam(), baca.selectors.leaf(19, pitched=True)
        ),
        evans.detach(
            "Voice 3", abjad.StartBeam(), baca.selectors.leaf(11, pitched=True)
        ),
        evans.detach("Voice 3", abjad.StopBeam(), baca.selectors.leaf(21)),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\markup ½clt.", direction=abjad.Up),
            baca.selectors.leaf(1, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Markup(r"\markup ½clt.", direction=abjad.Up),
            baca.selectors.leaf(15, pitched=True),
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
    segment_name="segment_11",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=True,
    mm_rests=False,
    barline="||",
    tempo=((1, 4), 115),
    rehearsal_mark="",
    page_break_counts=[90],
    fermata="scripts.ufermata",
)

maker.build_segment()


# work on tempi
# remove redundant
# accel spanners!
# maker._make_sc_file()
