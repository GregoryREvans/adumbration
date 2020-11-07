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
rhythm_target_timespan = abjad.Timespan(0, 14)

rhythm_timespan_maker = tsmakers.TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(
        counts=(
            [
                9,
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
                27,
                16,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                4,
                16,
                6,
                6,
                6,
                6,
                6,
                6,
                16,
                5,
                5,
                5,
                5,
                5,
                5,
                5,
                1,
                16,
            ]
        ),
        denominator=4,
    ),
    silence_talea=rmakers.Talea(
        counts=(
            [
                1,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                1,
                0,
                0,
                0,
                0,
                0,
                1,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                1,
            ]
        ),
        denominator=1,
    ),
)

rhythm_timespan_list = rhythm_timespan_maker(
    music_specifiers=music_specifiers, target_timespan=rhythm_target_timespan
)
