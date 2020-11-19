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
rhythm_target_timespan = abjad.Timespan(0, 30)

rhythm_timespan_maker = tsmakers.TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(
        counts=(
            [
                0,
            ]
        ),
        denominator=4,
    ),
    playing_talea=rmakers.Talea(
        counts=(
            [
                2,
                2,
                2,
                1,
                1,
                1,
                1,
                1,
                1,
                2,
                2,
                2,
                1,
                1,
                1,
                1,
                1,
                1,
                2,
                2,
                2,
                30,
            ]
        ),
        denominator=2,
    ),
    silence_talea=rmakers.Talea(
        counts=(
            [
                0,
            ]
        ),
        denominator=4,
    ),
)

rhythm_timespan_list = rhythm_timespan_maker(
    music_specifiers=music_specifiers, target_timespan=rhythm_target_timespan
)
