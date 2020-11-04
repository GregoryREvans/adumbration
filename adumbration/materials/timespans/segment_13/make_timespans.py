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
                5,
                5,
                0,
                0,
            ]
        ),
        denominator=4,
    ),
    playing_talea=rmakers.Talea(
        counts=(
            [
                2,
                7,
                # 1,
                9,
                4,
                4,
                10,
                9,
                9,
                8,
                5,
                10,
                9,
                10,
                5,
                9,
                5,
                9,
                3,
            ]
        ),
        denominator=4,
    ),
    silence_talea=rmakers.Talea(
        counts=(
            [
                1,
                2,
                0,
                0,
                10,
                3,
                1,
                10,
                0,
                0,
                0,
                2,
                10,
                0,
                3,
                1,
                2,
                0,
                3,
                1,
            ]
        ),
        denominator=4,
    ),
)

rhythm_timespan_list = rhythm_timespan_maker(
    music_specifiers=music_specifiers, target_timespan=rhythm_target_timespan
)
