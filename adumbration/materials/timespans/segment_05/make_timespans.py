from collections import OrderedDict

import abjad
from abjadext import rmakers as rmakers
from tsmakers.TaleaTimespanMaker import TaleaTimespanMaker

from adumbration.materials.score_structure.instruments import instruments

music_specifiers = OrderedDict(
    [(f"Voice {i+1}", None) for i, name in enumerate(instruments)]
)

# #######
# rhythm#
# #######
rhythm_target_timespan = abjad.Timespan(0, (25, 4))

rhythm_timespan_maker = TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(counts=([0]), denominator=8),
    playing_talea=rmakers.Talea(counts=([6, 2, 5, 3, 4, 5]), denominator=4),
    # playing_groupings=([1, 2, 3, 2,]),
    silence_talea=rmakers.Talea(
        counts=(
            [
                0,
            ]
        ),
        denominator=8,
    ),
    # synchronize_step=True,
)

rhythm_timespan_list = rhythm_timespan_maker(
    music_specifiers=music_specifiers, target_timespan=rhythm_target_timespan
)

# ######
# pitch#
# ######
pitch_target_timespan = abjad.Timespan(0, (25, 4))

pitch_timespan_maker = TaleaTimespanMaker(
    playing_talea=rmakers.Talea(counts=([25]), denominator=4),
    silence_talea=rmakers.Talea(counts=([0]), denominator=4),
)

pitch_timespan_list = pitch_timespan_maker(
    music_specifiers=music_specifiers, target_timespan=pitch_target_timespan
)
