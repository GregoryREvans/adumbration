from collections import OrderedDict

import abjad
from abjadext import rmakers as rmakers
from tsmakers.TaleaTimespanMaker import TaleaTimespanMaker
from tsmakers.CascadingTimespanMaker import CascadingTimespanMaker

from adumbration.materials.score_structure.instruments import instruments

music_specifiers = OrderedDict(
    [(f"Voice {i+1}", None) for i, name in enumerate(instruments)]
)

# #######
# rhythm#
# #######
rhythm_target_timespan = abjad.Timespan(0, 9)

rhythm_timespan_maker = TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(counts=([0, 2, 2, 0]), denominator=8),
    playing_talea=rmakers.Talea(counts=([5, 3, 2, 1, 1]), denominator=4),
    playing_groupings=([1, 2, 3, 2]),
    # silence_talea=rmakers.Talea(counts=([1, 2, 1, 3]), denominator=4),
)

# rhythm_timespan_maker = CascadingTimespanMaker(
#     cascade_pattern=(-2, -1, 1, 1),
#     # division_masks=None,
#     # fuse_groups=None,
#     # padding=None,
#     playing_talea=rmakers.Talea(
#         [4, 3, 2, 5, 2, 1, ],
#         8,
#     ),
#     playing_groupings=([1, 1, 2, 1, 3, 1]),
#     repeat=True,
#     # silence_talea=rmakers.Talea([1, 1, 2, 3, 5], 4),
#     timespan_specifier=None
# )

rhythm_timespan_list = rhythm_timespan_maker(
    music_specifiers=music_specifiers, target_timespan=rhythm_target_timespan
)

# ######
# pitch#
# ######
pitch_target_timespan = abjad.Timespan(0, 9)

pitch_timespan_maker = TaleaTimespanMaker(
    playing_talea=rmakers.Talea(counts=([5, 3, 2, 6]), denominator=4),
    silence_talea=rmakers.Talea(counts=([0]), denominator=4),
)

pitch_timespan_list = pitch_timespan_maker(
    music_specifiers=music_specifiers, target_timespan=pitch_target_timespan
)

# ########
# dynamic#
# ########
dynamic_target_timespan = abjad.Timespan(0, 10)

dynamic_timespan_maker = TaleaTimespanMaker(
    playing_talea=rmakers.Talea(counts=([2, 3, 2, 4, 3, 6]), denominator=4),
    silence_talea=rmakers.Talea(counts=([0]), denominator=4),
)

dynamic_timespan_list = dynamic_timespan_maker(
    music_specifiers=music_specifiers, target_timespan=dynamic_target_timespan
)

# #############
# articulation#
# #############
articulation_target_timespan = abjad.Timespan(0, 10)

articulation_timespan_maker = TaleaTimespanMaker(
    playing_talea=rmakers.Talea(counts=([3, 2, 4, 2, 6, 3]), denominator=4),
    silence_talea=rmakers.Talea(counts=([0]), denominator=4),
)

articulation_timespan_list = dynamic_timespan_maker(
    music_specifiers=music_specifiers, target_timespan=articulation_target_timespan
)
