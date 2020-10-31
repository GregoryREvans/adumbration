from collections import OrderedDict

import abjad
import tsmakers
from abjadext import rmakers
from tsmakers.TaleaTimespanMaker import TaleaTimespanMaker
from tsmakers import SilentTimespan

from adumbration.materials.score_structure.instruments import instruments

music_specifiers = OrderedDict(
    [(f"Voice {i+1}", None) for i, name in enumerate(instruments)]
)
# #######
# rhythm#
# #######
rhythm_target_timespan = abjad.Timespan(0, 24)

rhythm_timespan_maker = tsmakers.TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(
        counts=(
            [
                7,
                4,
                0,
                7,
            ]
        ),
        denominator=4,
    ),
    playing_talea=rmakers.Talea(
        counts=(
            [
                2,
                3,
                8,
                8,
                2,
                5,
                8,
                6,
                2,
                7,
                8,
                5,
                13,
                16,
                11,
                8,
                12,
                8,
            ]
        ),
        denominator=4,
    ),
    silence_talea=rmakers.Talea(
        counts=(
            [
                19,
                17,
                4,
                20,
                15,
                19,
                8,
                22,
                17,
                14,
                9,
                4,
                10,
                25,
                19,
            ]
        ),
        denominator=4,
    ),
)

rhythm_timespan_list = rhythm_timespan_maker(
    music_specifiers=music_specifiers, target_timespan=rhythm_target_timespan
)
# #######
# pitch#
# #######
pitch_target_timespan = abjad.Timespan(0, 24)

pitch_timespan_maker = tsmakers.TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(
        counts=(
            [
                7,
                4,
                0,
                7,
            ]
        ),
        denominator=4,
    ),
    playing_talea=rmakers.Talea(
        counts=(
            [
                2,
                3,
                8,
                8,
                2,
                5,
                8,
                6,
                2,
                7,
                8,
                5,
                13,
                16,
                11,
                8,
                12,
                8,
            ]
        ),
        denominator=4,
    ),
    silence_talea=rmakers.Talea(
        counts=(
            [
                19,
                17,
                4,
                20,
                15,
                19,
                8,
                22,
                17,
                14,
                9,
                4,
                10,
                25,
                19,
            ]
        ),
        denominator=4,
    ),
)

pitch_timespan_list = pitch_timespan_maker(
    music_specifiers=music_specifiers, target_timespan=pitch_target_timespan
)
# #######
# dynamic#
# #######
dynamic_target_timespan = abjad.Timespan(0, 24)

dynamic_timespan_maker = tsmakers.TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(
        counts=(
            [
                7,
                4,
                0,
                7,
            ]
        ),
        denominator=4,
    ),
    playing_talea=rmakers.Talea(
        counts=(
            [
                2,
                3,
                8,
                8,
                2,
                5,
                8,
                6,
                2,
                7,
                8,
                5,
                13,
                16,
                11,
                8,
                12,
                8,
            ]
        ),
        denominator=4,
    ),
    silence_talea=rmakers.Talea(
        counts=(
            [
                19,
                17,
                4,
                20,
                15,
                19,
                8,
                22,
                17,
                14,
                9,
                4,
                10,
                25,
                19,
            ]
        ),
        denominator=4,
    ),
)

dynamic_timespan_list = dynamic_timespan_maker(
    music_specifiers=music_specifiers, target_timespan=dynamic_target_timespan
)
# #######
# noteheads#
# #######
notehead_target_timespan = abjad.Timespan(0, 24)

notehead_timespan_maker = tsmakers.TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(
        counts=(
            [
                7,
                4,
                0,
                7,
            ]
        ),
        denominator=4,
    ),
    playing_talea=rmakers.Talea(
        counts=(
            [
                2,
                3,
                8,
                8,
                2,
                5,
                8,
                6,
                2,
                7,
                8,
                5,
                13,
                16,
                11,
                8,
                12,
                8,
            ]
        ),
        denominator=4,
    ),
    silence_talea=rmakers.Talea(
        counts=(
            [
                19,
                17,
                4,
                20,
                15,
                19,
                8,
                22,
                17,
                14,
                9,
                4,
                10,
                25,
                19,
            ]
        ),
        denominator=4,
    ),
)

notehead_timespan_list = notehead_timespan_maker(
    music_specifiers=music_specifiers, target_timespan=notehead_target_timespan
)
