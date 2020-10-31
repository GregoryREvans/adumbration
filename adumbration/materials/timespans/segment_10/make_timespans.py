from collections import OrderedDict

import abjad
import tsmakers
from abjadext import rmakers as rmakers
from tsmakers.TaleaTimespanMaker import TaleaTimespanMaker
from tsmakers import SilentTimespan

from adumbration.materials.score_structure.instruments import instruments

music_specifiers = OrderedDict(
    [(f"Voice {i+1}", None) for i, name in enumerate(instruments)]
)

# #######
# rhythm#
# #######
# rhythm_target_timespan = abjad.Timespan(0, 6)
#
# rhythm_timespan_maker = TaleaTimespanMaker(
#     initial_silence_talea=rmakers.Talea(
#         counts=([15, 0, 24, 24]),
#         denominator=4,
#     ),
#     playing_talea=rmakers.Talea(counts=([9, 8, 7]), denominator=4),
#     silence_talea=rmakers.Talea(counts=([5, 1, 5, 1]), denominator=4),
# )
#
# rhythm_timespan_list = rhythm_timespan_maker(
#     music_specifiers=music_specifiers, target_timespan=rhythm_target_timespan
# )
#
# rhythm_timespan_list.append(SilentTimespan(start_offset=abjad.Offset((0, 1)), stop_offset=abjad.Offset((6, 1)), voice_name='Voice 3'))
#
# rhythm_timespan_list.append(SilentTimespan(start_offset=abjad.Offset((0, 1)), stop_offset=abjad.Offset((6, 1)), voice_name='Voice 4'))

rhythm_timespan_list = abjad.TimespanList([
    tsmakers.PerformedTimespan(start_offset=abjad.Offset((0, 1)), stop_offset=abjad.Offset((4, 1)), voice_name='Voice 1'),
    tsmakers.PerformedTimespan(start_offset=abjad.Offset((0, 1)), stop_offset=abjad.Offset((4, 1)), voice_name='Voice 2'),
    tsmakers.PerformedTimespan(start_offset=abjad.Offset((0, 1)), stop_offset=abjad.Offset((3, 4)), voice_name='Voice 3'),
    tsmakers.PerformedTimespan(start_offset=abjad.Offset((3, 4)), stop_offset=abjad.Offset((7, 4)), voice_name='Voice 3'),
    tsmakers.PerformedTimespan(start_offset=abjad.Offset((7, 4)), stop_offset=abjad.Offset((4, 1)), voice_name='Voice 3'),
    tsmakers.PerformedTimespan(start_offset=abjad.Offset((0, 1)), stop_offset=abjad.Offset((4, 1)), voice_name='Voice 4'),
])

# temp_list = abjad.TimespanList([
#     abjad.AnnotatedTimespan(_.start_offset, _.stop_offset, annotation=_.voice_name) for _ in rhythm_timespan_list
# ])
#
# abjad.show(temp_list, scale=0.7, key="annotation")
#
# raise Exception("Stop")

# ######
# pitch#
# ######
pitch_target_timespan = abjad.Timespan(0, 6)

pitch_timespan_maker = TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(
        counts=([15, 0, 24, 24]),
        denominator=4,
    ),
    playing_talea=rmakers.Talea(counts=([9, 8, 7]), denominator=4),
    silence_talea=rmakers.Talea(counts=([5, 1, 5, 1]), denominator=4),
)

pitch_timespan_list = pitch_timespan_maker(
    music_specifiers=music_specifiers, target_timespan=pitch_target_timespan
)

# ######
# dynamic#
# ######
dynamic_target_timespan = abjad.Timespan(0, 6)

dynamic_timespan_maker = TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(
        counts=([15, 0, 24, 24]),
        denominator=4,
    ),
    playing_talea=rmakers.Talea(counts=([9, 8, 7]), denominator=4),
    silence_talea=rmakers.Talea(counts=([5, 1, 5, 1]), denominator=4),
)

dynamic_timespan_list = dynamic_timespan_maker(
    music_specifiers=music_specifiers, target_timespan=dynamic_target_timespan
)
