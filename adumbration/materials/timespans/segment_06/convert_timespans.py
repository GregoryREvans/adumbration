import abjad
import evans

from adumbration.materials.pitch import (
    cello_pitch_handler_eight,
    cello_pitch_handler_seven,
    cello_pitch_handler_six,
    viola_pitch_handler_eight,
    viola_pitch_handler_seven,
    viola_pitch_handler_six,
    violin_1_pitch_handler_eight,
    violin_1_pitch_handler_seven,
    violin_1_pitch_handler_six,
    violin_2_pitch_handler_eight,
    violin_2_pitch_handler_seven,
    violin_2_pitch_handler_six,
)
from adumbration.materials.score_structure.segment_06.rhythm_material_pattern import (
    rhythm_material_list,
)
from adumbration.materials.score_structure.segment_06.time_signatures import bounds
from adumbration.materials.timespans.segment_06.make_timespans import (
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

segment_06_rhythm_timespans = evans.timespan.make_split_list(
    rhythm_timespan_list, bounds
)

rhythm_commands = []
for span in segment_06_rhythm_timespans:
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
        violin_1_pitch_handler_six,
        violin_1_pitch_handler_six,
        violin_1_pitch_handler_six,
        violin_1_pitch_handler_seven,
        violin_1_pitch_handler_six,
        violin_1_pitch_handler_eight,
        violin_1_pitch_handler_six,
        violin_1_pitch_handler_six,
        violin_1_pitch_handler_seven,
        violin_1_pitch_handler_six,
        violin_1_pitch_handler_six,
        violin_1_pitch_handler_seven,
        violin_1_pitch_handler_seven,
        violin_1_pitch_handler_eight,
        violin_1_pitch_handler_seven,
        violin_1_pitch_handler_six,
        violin_1_pitch_handler_six,
        violin_1_pitch_handler_six,
        violin_1_pitch_handler_seven,
        violin_1_pitch_handler_six,
        violin_1_pitch_handler_six,
        violin_1_pitch_handler_eight,
        violin_2_pitch_handler_eight,
        violin_2_pitch_handler_six,
        violin_2_pitch_handler_seven,
        violin_2_pitch_handler_eight,
        violin_2_pitch_handler_six,
        violin_2_pitch_handler_six,
        violin_2_pitch_handler_six,
        violin_2_pitch_handler_seven,
        violin_2_pitch_handler_six,
        violin_2_pitch_handler_six,
        violin_2_pitch_handler_seven,
        violin_2_pitch_handler_eight,
        violin_2_pitch_handler_eight,
        violin_2_pitch_handler_six,
        violin_2_pitch_handler_seven,
        violin_2_pitch_handler_six,
        viola_pitch_handler_six,
        viola_pitch_handler_six,
        viola_pitch_handler_six,
        viola_pitch_handler_six,
        viola_pitch_handler_eight,
        viola_pitch_handler_six,
        viola_pitch_handler_seven,
        viola_pitch_handler_six,
        viola_pitch_handler_eight,
        viola_pitch_handler_seven,
        viola_pitch_handler_seven,
        viola_pitch_handler_six,
        viola_pitch_handler_eight,
        viola_pitch_handler_seven,
        viola_pitch_handler_seven,
        viola_pitch_handler_six,
        viola_pitch_handler_six,
        viola_pitch_handler_seven,
        viola_pitch_handler_eight,
        viola_pitch_handler_seven,
        viola_pitch_handler_eight,
        viola_pitch_handler_six,
        viola_pitch_handler_six,
        cello_pitch_handler_seven,
        cello_pitch_handler_six,
        cello_pitch_handler_six,
        cello_pitch_handler_eight,
        cello_pitch_handler_seven,
        cello_pitch_handler_seven,
        cello_pitch_handler_six,
        cello_pitch_handler_seven,
        cello_pitch_handler_six,
        cello_pitch_handler_six,
        cello_pitch_handler_seven,
        cello_pitch_handler_six,
        cello_pitch_handler_seven,
        cello_pitch_handler_six,
        cello_pitch_handler_seven,
        cello_pitch_handler_eight,
        cello_pitch_handler_seven,
    ],
    forget=False,
)

for voice in voice_names:
    for span in pitch_timespan_list:
        if span.voice_name == voice:
            span._handler = pitch_mat(r=1)[0]

segment_06_pitch_timespans = pitch_timespan_list

pitch_commands = []
for span in segment_06_pitch_timespans:
    command = evans.HandlerCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span.handler,
    )
    pitch_commands.append(command)

# ######
# dynamic#
# ######

dynamic_handler_six = evans.DynamicHandler(
    ["f", "ff", "f", "mf", "mp", "p", "mf"],
    forget=False,
    hold_last_boolean_vector=[1],
    with_constante_hairpins=False,
    name="dynamic_handler_six"
)

dynamic_handler_seven = evans.DynamicHandler(
    ["niente", "fff",],
    forget=True,
    hold_last_boolean_vector=[1],
    with_constante_hairpins=False,
    name="dynamic_handler_seven"
)

dynamic_handler_eight = evans.DynamicHandler(
    ["mp", "f", "ff", "p"],
    forget=False,
    hold_last_boolean_vector=[1],
    with_constante_hairpins=False,
    name="dynamic_handler_eight"
)

dyn_mat = evans.CyclicList(
    [
        dynamic_handler_six,
        dynamic_handler_six,
        dynamic_handler_six,
        dynamic_handler_seven,
        dynamic_handler_six,
        dynamic_handler_eight,
        dynamic_handler_six,
        dynamic_handler_six,
        dynamic_handler_seven,
        dynamic_handler_six,
        dynamic_handler_six,
        dynamic_handler_seven,
        dynamic_handler_seven,
        dynamic_handler_eight,
        dynamic_handler_seven,
        dynamic_handler_six,
        dynamic_handler_six,
        dynamic_handler_six,
        dynamic_handler_seven,
        dynamic_handler_six,
        dynamic_handler_six,
        dynamic_handler_eight,
        dynamic_handler_eight,
        dynamic_handler_six,
        dynamic_handler_seven,
        dynamic_handler_eight,
        dynamic_handler_six,
        dynamic_handler_six,
        dynamic_handler_six,
        dynamic_handler_seven,
        dynamic_handler_six,
        dynamic_handler_six,
        dynamic_handler_seven,
        dynamic_handler_eight,
        dynamic_handler_eight,
        dynamic_handler_six,
        dynamic_handler_seven,
        dynamic_handler_six,
        dynamic_handler_six,
        dynamic_handler_six,
        dynamic_handler_six,
        dynamic_handler_six,
        dynamic_handler_eight,
        dynamic_handler_six,
        dynamic_handler_seven,
        dynamic_handler_six,
        dynamic_handler_eight,
        dynamic_handler_seven,
        dynamic_handler_seven,
        dynamic_handler_six,
        dynamic_handler_eight,
        dynamic_handler_seven,
        dynamic_handler_seven,
        dynamic_handler_six,
        dynamic_handler_six,
        dynamic_handler_seven,
        dynamic_handler_eight,
        dynamic_handler_seven,
        dynamic_handler_eight,
        dynamic_handler_six,
        dynamic_handler_six,
        dynamic_handler_seven,
        dynamic_handler_six,
        dynamic_handler_six,
        dynamic_handler_eight,
        dynamic_handler_seven,
        dynamic_handler_seven,
        dynamic_handler_six,
        dynamic_handler_seven,
        dynamic_handler_six,
        dynamic_handler_six,
        dynamic_handler_seven,
        dynamic_handler_six,
        dynamic_handler_seven,
        dynamic_handler_six,
        dynamic_handler_seven,
        dynamic_handler_eight,
        dynamic_handler_seven,
    ],
    forget=False,
)

for voice in voice_names:
    for span in dynamic_timespan_list:
        if span.voice_name == voice:
            span._handler = dyn_mat(r=1)[0]

segment_06_dynamic_timespans = dynamic_timespan_list

dynamic_commands = []
for span in segment_06_dynamic_timespans:
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
