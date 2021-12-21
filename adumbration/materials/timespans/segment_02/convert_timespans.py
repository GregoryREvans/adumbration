import abjad
import evans

from adumbration.materials.pitch import pitch_handler_three, pitch_handler_two
from adumbration.materials.score_structure.segment_02.rhythm_material_pattern import (
    rhythm_material_list,
)
from adumbration.materials.score_structure.segment_02.time_signatures import bounds
from adumbration.materials.timespans.segment_02.make_timespans import (
    pitch_timespan_list,
    rhythm_timespan_list,
)

from .make_timespans import music_specifiers

voice_names = [specifier for specifier in music_specifiers]

# #######
# rhythm#
# #######
rhythm_mat = evans.CyclicList(rhythm_material_list, forget=False)

for voice in voice_names:
    for span in rhythm_timespan_list:
        if span.voice_name == voice:
            span._handler = rhythm_mat(r=1)[0]

segment_02_rhythm_timespans = evans.timespan.make_split_list(
    rhythm_timespan_list, bounds
)

rhythm_commands = []
for span in segment_02_rhythm_timespans:
    r_command = evans.RhythmCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span.handler,
    )
    rhythm_commands.append(r_command)

evans.timespan.intercalate_silences(rhythm_commands)

# ######
# pitch#
# ######
voicewise_material = dict(
    [
        ("Voice 1", pitch_handler_two),
        ("Voice 2", pitch_handler_two),
        ("Voice 3", pitch_handler_two),
        ("Voice 4", pitch_handler_three),
    ]
)

for voice in voice_names:
    for span in pitch_timespan_list:
        if span.voice_name == voice:
            span._handler = voicewise_material[voice]

segment_02_pitch_timespans = pitch_timespan_list

pitch_commands = []
for span in segment_02_pitch_timespans:
    command = evans.HandlerCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span.handler,
    )
    pitch_commands.append(command)

# ##############
# all commands#
# ##############
handler_commands = [
    pitch_commands,
]
