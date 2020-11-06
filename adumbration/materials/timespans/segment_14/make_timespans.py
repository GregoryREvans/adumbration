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
rhythm_target_timespan = abjad.Timespan(0, 21)

rhythm_timespan_maker = tsmakers.TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(
        counts=(
            [
                0,
                0,
                0,
                0,
            ]
        ),
        denominator=4,
    ),
    playing_talea=rmakers.Talea(
        counts=(
            [
                3,
                5,
                2,
                5,
                3,
                2,
                4,
                6,
                7,
                3,
                4,
                8,
                4,
                10,
                6,
                5,
                9,
                9,
            ]
        ),
        denominator=4,
    ),
    silence_talea=rmakers.Talea(
        counts=(
            [
                1,
                0,
                2,
                1,
                0,
                3,
                2,
                1,
                0,
                4,
                3,
                2,
                1,
                0,
                5,
                4,
                3,
                2,
                1,
                0,
            ]
        ),
        denominator=1,
    ),
)

rhythm_timespan_list = rhythm_timespan_maker(
    music_specifiers=music_specifiers, target_timespan=rhythm_target_timespan
)
