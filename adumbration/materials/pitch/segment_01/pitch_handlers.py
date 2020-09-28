import evans
from abjadext import microtones

pitch_handler_one = evans.PitchHandler(pitch_list=[12], forget=False)

pitch_handler_two = evans.PitchHandler(pitch_list=[0], forget=False)

pitch_handler_three = evans.PitchHandler(pitch_list=[-12], forget=False)

pitch_handler_four = evans.PitchHandler(pitch_list=[-24], forget=False)

ratio_class_segment = microtones.RatioSegment([
    "1/1", # gold
    "2/1",
    "3/2",
    "5/3",
    "8/5",
    "13/8",
    "21/13",
    "1/1", # silver
    "2/1",
    "5/2",
    "12/5",
    "169/70",
    "408/169",
])

global_pitch_handler = evans.PitchHandler(
    pitch_list=ratio_class_segment,
    forget=False,
    name="global_pitch_handler_one",
    as_ratios=True,
    # chord_boolean_vector=[0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    # chord_groups=[2],
)

ratio_class_segment_2 = microtones.RatioSegment([
    "1/2", # gold
    "5/8",
    "1/1",
    "3/2",
    "13/8",
    "2/1",
    "5/2",
    "1/1", # silver
    "2/1",
    "5/2",
    "3/1",
    "7/2",
    "9/2",
])

global_pitch_handler_two = evans.PitchHandler(
    pitch_list=ratio_class_segment_2,
    forget=False,
    name="global_pitch_handler_two",
    as_ratios=True,
    # chord_boolean_vector=[0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    # chord_groups=[2],
)
