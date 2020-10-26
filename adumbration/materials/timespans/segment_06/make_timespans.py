from collections import OrderedDict

import abjad
from abjadext import rmakers as rmakers
from tsmakers.CascadingTimespanMaker import CascadingTimespanMaker

from adumbration.materials.score_structure.instruments import instruments

music_specifiers = OrderedDict(
    [(f"Voice {i+1}", None) for i, name in enumerate(instruments)]
)

# #######
# rhythm#
# #######
rhythm_target_timespan = abjad.Timespan(0, 38)

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
            4,
            2,
            3,
        ],
        8,
    ),
    playing_groupings=([3, 4, 2, 3, 4, 3, 2]),
    repeat=True,
    # silence_talea=rmakers.Talea([1, 1, 2, 3, 5], 4),
    timespan_specifier=None,
)

rhythm_timespan_list = rhythm_timespan_maker(
    music_specifiers=music_specifiers, target_timespan=rhythm_target_timespan
)

# temp_list = abjad.TimespanList([
#     abjad.AnnotatedTimespan(_.start_offset, _.stop_offset, annotation=_.voice_name) for _ in rhythm_timespan_list
# ])
#
# abjad.show(temp_list, scale=0.7, key="annotation")

# ######
# pitch#
# ######
pitch_target_timespan = abjad.Timespan(0, 38)

pitch_timespan_maker = CascadingTimespanMaker(
    cascade_pattern=(-1),
    # division_masks=None,
    # fuse_groups=None,
    # padding=None,
    playing_talea=rmakers.Talea(
        [
            2,
            2,
            2,
            4,
            2,
            3,
        ],
        8,
    ),
    playing_groupings=([3, 4, 2, 3, 4, 3, 2]),
    repeat=True,
    # silence_talea=rmakers.Talea([1, 1, 2, 3, 5], 4),
    timespan_specifier=None,
)

pitch_timespan_list = pitch_timespan_maker(
    music_specifiers=music_specifiers, target_timespan=pitch_target_timespan
)

# ######
# dynamic#
# ######
dynamic_target_timespan = abjad.Timespan(0, 38)

dynamic_timespan_maker = CascadingTimespanMaker(
    cascade_pattern=(-1),
    # division_masks=None,
    # fuse_groups=None,
    # padding=None,
    playing_talea=rmakers.Talea(
        [
            2,
            2,
            2,
            4,
            2,
            3,
        ],
        8,
    ),
    playing_groupings=([3, 4, 2, 3, 4, 3, 2]),
    repeat=True,
    # silence_talea=rmakers.Talea([1, 1, 2, 3, 5], 4),
    timespan_specifier=None,
)

dynamic_timespan_list = dynamic_timespan_maker(
    music_specifiers=music_specifiers, target_timespan=dynamic_target_timespan
)
