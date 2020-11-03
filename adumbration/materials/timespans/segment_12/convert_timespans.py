import abjad
import evans

from adumbration.materials.pitch import (
    circular_pitch_handler,
    noise_pitch_handler,
    tap_pitch_handler,
)
from adumbration.materials.score_structure.segment_12.rhythm_material_pattern import (
    rhythm_material_list,
)
from adumbration.materials.score_structure.segment_12.time_signatures import bounds
from adumbration.materials.timespans.segment_12.make_timespans import (
    dynamic_timespan_list,
    notehead_timespan_list,
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

segment_12_rhythm_timespans = evans.timespan.make_split_list(
    rhythm_timespan_list, bounds
)

rhythm_commands = []
for span in segment_12_rhythm_timespans:
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
        tap_pitch_handler,
        circular_pitch_handler,
        noise_pitch_handler,
        noise_pitch_handler,
        noise_pitch_handler,
        noise_pitch_handler,
        noise_pitch_handler,
    ],
    forget=False,
)

for voice in voice_names:
    for span in pitch_timespan_list:
        if span.voice_name == voice:
            span._handler = pitch_mat(r=1)[0]

segment_12_pitch_timespans = pitch_timespan_list

pitch_commands = []
for span in segment_12_pitch_timespans:
    command = evans.HandlerCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span.handler,
    )
    pitch_commands.append(command)

# ######
# dynamic#
# ######

dynamic_handler_1 = evans.DynamicHandler(
    [
        "p",
        "f",
        "mp",
        "p",
        "pp",
        "p",
        "mf",
        "ff",
        "mf",
    ],
    forget=False,
    hold_last_boolean_vector=[1],
    with_constante_hairpins=False,
    name="dynamic_handler_1",
)

dynamic_handler_2 = evans.DynamicHandler(
    [
        "p",
        "pp",
        "ff",
        "p",
        "mp",
        "p",
        "pp",
        "mp",
        "ff",
    ],
    forget=False,
    hold_last_boolean_vector=[1],
    with_constante_hairpins=False,
    name="dynamic_handler_2",
)

dynamic_handler_3 = evans.DynamicHandler(
    [
        "mf",
        "f",
    ],
    forget=False,
    hold_first_boolean_vector=[1],
    with_constante_hairpins=True,
    name="dynamic_handler_3",
)

dyn_mat = evans.CyclicList(
    [
        dynamic_handler_2,
        dynamic_handler_1,
        dynamic_handler_3,
        dynamic_handler_3,
        dynamic_handler_3,
        dynamic_handler_3,
        dynamic_handler_3,
    ],
    forget=False,
)

for voice in voice_names:
    for span in dynamic_timespan_list:
        if span.voice_name == voice:
            span._handler = dyn_mat(r=1)[0]

segment_12_dynamic_timespans = dynamic_timespan_list

dynamic_commands = []
for span in segment_12_dynamic_timespans:
    command = evans.HandlerCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span.handler,
    )
    dynamic_commands.append(command)

# ######
# noteheads#
# ######

notehead_handler_1 = evans.NoteheadHandler(
    notehead_list=["default"],
    head_boolean_vector=[1],
    head_vector_forget=False,
    forget=False,
)

notehead_handler_2 = evans.NoteheadHandler(
    notehead_list=["cross"],
    head_boolean_vector=[1],
    head_vector_forget=False,
    forget=False,
)

notehead_handler_3 = evans.NoteheadHandler(
    notehead_list=[
        "default",
        "harmonic-mixed",
    ],
    transition=True,
    head_boolean_vector=[1],
    head_vector_forget=False,
    transition_boolean_vector=[1],
    transition_vector_forget=False,
    forget=False,
)

notehead_mat = evans.CyclicList(
    [
        notehead_handler_2,
        notehead_handler_1,
        notehead_handler_3,
        notehead_handler_3,
        notehead_handler_3,
        notehead_handler_3,
        notehead_handler_3,
    ],
    forget=False,
)

for voice in voice_names:
    for span in notehead_timespan_list:
        if span.voice_name == voice:
            span._handler = notehead_mat(r=1)[0]

segment_12_notehead_timespans = notehead_timespan_list

notehead_commands = []
for span in segment_12_notehead_timespans:
    command = evans.HandlerCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span.handler,
    )
    notehead_commands.append(command)

# ##############
# all commands#
# ##############
handler_commands = [
    pitch_commands,
    notehead_commands,
    dynamic_commands,
]
