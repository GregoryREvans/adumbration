import abjad
import evans

from adumbration.materials.pitch import (
    c_pitch_handler_four,
    c_pitch_handler_one,
    c_pitch_handler_three,
    c_pitch_handler_two,
)
from adumbration.materials.score_structure.segment_08.rhythm_material_pattern import (
    rhythm_material_list,
)
from adumbration.materials.score_structure.segment_08.time_signatures import bounds
from adumbration.materials.timespans.segment_08.make_timespans import (
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

segment_08_rhythm_timespans = evans.timespan.make_split_list(
    rhythm_timespan_list, bounds
)

rhythm_commands = []
for span in segment_08_rhythm_timespans:
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
        ("Voice 1", c_pitch_handler_one),
        ("Voice 2", c_pitch_handler_two),
        ("Voice 3", c_pitch_handler_three),
        ("Voice 4", c_pitch_handler_four),
    ]
)

for voice in voice_names:
    for span in pitch_timespan_list:
        if span.voice_name == voice:
            span._handler = voicewise_material[voice]

segment_08_pitch_timespans = pitch_timespan_list

pitch_commands = []
for span in segment_08_pitch_timespans:
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
