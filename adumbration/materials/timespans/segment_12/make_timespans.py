from collections import OrderedDict

import abjad
import tsmakers
from abjadext import rmakers

from adumbration.materials.score_structure.instruments import instruments

music_specifiers = OrderedDict(
    [(f"Voice {i+1}", None) for i, name in enumerate(instruments)]
)
# #######
# rhythm#
# #######
rhythm_target_timespan = abjad.Timespan(0, 15)

rhythm_timespan_maker = tsmakers.TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(
        counts=(
            [
                3,
                0,
                12,
                36,
            ]
        ),
        denominator=4,
    ),
    playing_talea=rmakers.Talea(
        counts=(
            [
                5,
                26,
                4,
                5,
                12,
                4,
            ]
        ),
        denominator=4,
    ),
    silence_talea=rmakers.Talea(
        counts=(
            [
                27,
                0,
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
pitch_target_timespan = abjad.Timespan(0, 15)

pitch_timespan_maker = tsmakers.TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(
        counts=(
            [
                3,
                0,
                12,
                36,
            ]
        ),
        denominator=4,
    ),
    playing_talea=rmakers.Talea(
        counts=(
            [
                5,
                26,
                4,
                5,
                12,
                4,
            ]
        ),
        denominator=4,
    ),
    silence_talea=rmakers.Talea(
        counts=(
            [
                27,
                0,
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
dynamic_target_timespan = abjad.Timespan(0, 15)

dynamic_timespan_maker = tsmakers.TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(
        counts=(
            [
                3,
                0,
                12,
                36,
            ]
        ),
        denominator=4,
    ),
    playing_talea=rmakers.Talea(
        counts=(
            [
                5,
                26,
                4,
                5,
                12,
                4,
            ]
        ),
        denominator=4,
    ),
    silence_talea=rmakers.Talea(
        counts=(
            [
                27,
                0,
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
notehead_target_timespan = abjad.Timespan(0, 15)

notehead_timespan_maker = tsmakers.TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(
        counts=(
            [
                3,
                0,
                12,
                36,
            ]
        ),
        denominator=4,
    ),
    playing_talea=rmakers.Talea(
        counts=(
            [
                5,
                26,
                4,
                5,
                12,
                4,
            ]
        ),
        denominator=4,
    ),
    silence_talea=rmakers.Talea(
        counts=(
            [
                27,
                0,
            ]
        ),
        denominator=4,
    ),
)

notehead_timespan_list = notehead_timespan_maker(
    music_specifiers=music_specifiers, target_timespan=notehead_target_timespan
)
