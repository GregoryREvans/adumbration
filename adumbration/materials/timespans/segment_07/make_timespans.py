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
rhythm_target_timespan = abjad.Timespan(0, 12)

rhythm_timespan_maker = TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(counts=([0]), denominator=8),
    playing_talea=rmakers.Talea(counts=([5, 2, 3, 1, 1]), denominator=4),
    playing_groupings=([2, 3, 2, 1]),
    silence_talea=rmakers.Talea(counts=([1, 2, 1, 3]), denominator=4),
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
pitch_target_timespan = abjad.Timespan(0, 12)

pitch_timespan_maker = TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(counts=([0, 2, 2, 0]), denominator=8),
    playing_talea=rmakers.Talea(counts=([5, 3, 2, 1, 1]), denominator=4),
    playing_groupings=([1, 2, 3, 2]),
    # silence_talea=rmakers.Talea(counts=([1, 2, 1, 3]), denominator=4),
)

pitch_timespan_list = pitch_timespan_maker(
    music_specifiers=music_specifiers, target_timespan=pitch_target_timespan
)
