import abjad
import evans

from adumbration.materials.pitch import circular_pitch_handler
from adumbration.materials.score_structure.segment_09.rhythm_material_pattern import (
    rhythm_material_list,
)
from adumbration.materials.score_structure.segment_09.time_signatures import bounds
from adumbration.materials.timespans.segment_09.make_timespans import (
    dynamic_timespan_list,
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

segment_09_rhythm_timespans = evans.timespan.make_split_list(
    rhythm_timespan_list, bounds
)

rhythm_commands = []
for span in segment_09_rhythm_timespans:
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
pitch_mat = evans.CyclicList(
    [
        circular_pitch_handler,
    ],
    forget=False,
)

for voice in voice_names:
    for span in pitch_timespan_list:
        if span.voice_name == voice:
            span._handler = pitch_mat(r=1)[0]

segment_09_pitch_timespans = pitch_timespan_list

pitch_commands = []
for span in segment_09_pitch_timespans:
    command = evans.HandlerCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span.handler,
    )
    pitch_commands.append(command)

# ######
# dynamic#
# ######

circular_dynamic_handler = evans.DynamicHandler(
    [
        "p",
        "pp",
        "p",
        "mp",
    ],
    forget=False,
    hold_last_boolean_vector=[1],
    with_constante_hairpins=False,
    name="circular_dynamic_handler",
)

dyn_mat = evans.CyclicList(
    [
        circular_dynamic_handler,
    ],
    forget=False,
)

for voice in voice_names:
    for span in dynamic_timespan_list:
        if span.voice_name == voice:
            span._handler = dyn_mat(r=1)[0]

segment_09_dynamic_timespans = dynamic_timespan_list

dynamic_commands = []
for span in segment_09_dynamic_timespans:
    command = evans.HandlerCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span.handler,
    )
    dynamic_commands.append(command)

# ##############
# all commands#
# ##############
handler_commands = [
    pitch_commands,
    dynamic_commands,
]
