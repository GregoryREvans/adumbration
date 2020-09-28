from collections import OrderedDict

import abjad
from abjadext import rmakers as rmakers
from tsmakers.CascadingTimespanMaker import CascadingTimespanMaker
from tsmakers.TaleaTimespanMaker import TaleaTimespanMaker

from adumbration.materials.score_structure.instruments import instruments

music_specifiers = OrderedDict(
    [(f"Voice {i+1}", None) for i, name in enumerate(instruments)]
)

# #######
# rhythm#
# #######
rhythm_target_timespan = abjad.Timespan(0, (5, 2))

rhythm_timespan_maker = CascadingTimespanMaker(
    cascade_pattern=(-1),
    # division_masks=None,
    # fuse_groups=None,
    # padding=None,
    playing_talea=rmakers.Talea(
        [
            2,
            2,
            2,
            2,
            3,
        ],
        8,
    ),
    playing_groupings=([2, 3, 2, 3, 2, 2]),
    repeat=True,
    # silence_talea=rmakers.Talea([1, 1, 2, 3, 5], 4),
    timespan_specifier=None,
)

rhythm_timespan_list = rhythm_timespan_maker(
    music_specifiers=music_specifiers, target_timespan=rhythm_target_timespan
)

# ######
# pitch#
# ######
pitch_target_timespan = abjad.Timespan(0, (5, 2))

pitch_timespan_maker = TaleaTimespanMaker(
    playing_talea=rmakers.Talea(counts=([5, 3, 2, 6]), denominator=4),
    silence_talea=rmakers.Talea(counts=([0]), denominator=4),
)

pitch_timespan_list = pitch_timespan_maker(
    music_specifiers=music_specifiers, target_timespan=pitch_target_timespan
)
