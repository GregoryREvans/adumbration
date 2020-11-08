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
rhythm_target_timespan = abjad.Timespan(0, 7)

rhythm_timespan_maker = tsmakers.TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(
        counts=(
            [
                5,
                2,
                4,
                0,
            ]
        ),
        denominator=4,
    ),
    playing_talea=rmakers.Talea(
        counts=(
            [
                5,
                4,
                3,
                4,
                5,
                6,
                5,
                4,
                3,
                5,
                4,
                3,
                4,
                5,
                6,
                54,
                2,
            ]
        ),
        denominator=8,
    ),
    silence_talea=rmakers.Talea(
        counts=(
            [
                2,
                4,
                5,
                1,
                2,
                4,
                5,
                1,
                2,
                4,
                5,
                1,
                0,
            ]
        ),
        denominator=4,
    ),
)

rhythm_timespan_list = rhythm_timespan_maker(
    music_specifiers=music_specifiers, target_timespan=rhythm_target_timespan
)
