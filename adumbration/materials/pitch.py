import evans
from abjadext import microtones

clef_handler_one = evans.ClefHandler(
    clef="treble", add_extended_clefs=True, add_ottavas=False
)
clef_handler_two = evans.ClefHandler(
    clef="treble", add_extended_clefs=True, add_ottavas=False
)
clef_handler_three = evans.ClefHandler(
    clef="alto", add_extended_clefs=False, add_ottavas=False
)
clef_handler_four = evans.ClefHandler(
    clef="bass", add_extended_clefs=True, add_ottavas=True
)


clef_handlers = [
    clef_handler_one,
    clef_handler_two,
    clef_handler_three,
    clef_handler_four,
]


pitch_handler_one = evans.PitchHandler(pitch_list=[15], forget=False)

pitch_handler_two = evans.PitchHandler(pitch_list=[3], forget=False)

pitch_handler_three = evans.PitchHandler(pitch_list=[-9], forget=False)

pitch_handler_four = evans.PitchHandler(pitch_list=[-21], forget=False)

seg_3_pitch_handler_one = evans.PitchHandler(pitch_list=[15, 4], forget=False)

seg_3_pitch_handler_two = evans.PitchHandler(pitch_list=[3, 4], forget=False)

seg_3_pitch_handler_three = evans.PitchHandler(pitch_list=[-9, -8], forget=False)

seg_3_pitch_handler_four = evans.PitchHandler(pitch_list=[-9, -8], forget=False)

c_pitch_handler_one = evans.PitchHandler(pitch_list=[12], forget=False)

c_pitch_handler_two = evans.PitchHandler(pitch_list=[0], forget=False)

c_pitch_handler_three = evans.PitchHandler(pitch_list=[-12], forget=False)

c_pitch_handler_four = evans.PitchHandler(pitch_list=[-24], forget=False)

seg_5_pitch_handler_one = evans.PitchHandler(pitch_list=[19], forget=False)

seg_5_pitch_handler_two = evans.PitchHandler(pitch_list=[7], forget=False)

seg_5_pitch_handler_three = evans.PitchHandler(pitch_list=[-5], forget=False)

seg_5_pitch_handler_four = evans.PitchHandler(pitch_list=[-17], forget=False)

ratio_class_segment = microtones.RatioSegment(
    [
        "1/1",  # gold
        "2/1",
        "3/2",
        "5/3",
        "8/5",
        "13/8",
        "21/13",
        "1/1",  # silver
        "2/1",
        "5/2",
        "12/5",
        "169/70",
        "408/169",
    ]
)

global_pitch_handler = evans.PitchHandler(
    pitch_list=ratio_class_segment,
    forget=False,
    name="global_pitch_handler_one",
    as_ratios=True,
    # chord_boolean_vector=[0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    # chord_groups=[2],
)

# segment 2

flurry_pitches = microtones.PitchSegment([0, 1, -1, 2, -2, 3, -3, 4, -4, 5, -5, 6])
flurry_pitches += flurry_pitches.invert(3)
flurry_pitches += flurry_pitches.rotate(-3)
flurry_pitches += flurry_pitches.transpose(3)
flurry_pitches += flurry_pitches.retrograde()[1:-1]
flurry_pitches_list = [_ for _ in flurry_pitches]
cleaned_flurry_pitches = []

for _ in range(len(flurry_pitches_list) - 1):
    if flurry_pitches_list[_] != flurry_pitches_list[_ + 1]:
        cleaned_flurry_pitches.append(flurry_pitches_list[_])

flurry_pitch_handler = evans.PitchHandler(
    pitch_list=cleaned_flurry_pitches,
    forget=False,
    name="flurry_pitch_handler",
    # apply_all=True,
    # chord_boolean_vector=[0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    # chord_groups=[2],
)

# segment 3

ratio_class_segment_2 = microtones.RatioSegment(
    [
        # gold
        "5/4",  # was 5/8
        "2/1",
        "13/8",
        "1/1",
        "3/2",
        "5/2",
        "1/1",
        "1/2",
        # silver
        "9/2",
        "3/1",  # was 3/1
        "7/2",  # was 7/2
        "5/2",
        "2/1",
        "1/1",
        # gold
        "5/4",  # was 5/8
        "2/1",
        "13/8",
        "1/1",
        "3/2",
        "5/2",
        "1/1",
        "1/2",
        # silver
        "9/2",
        "3/1",  # was 3/1
        "7/2",  # was 7/2
        "5/2",
        "2/1",
        "1/1",
        #
        "1/1",
        "9/8",
        "1/1",
        "9/8",
    ]
)

ring_pitch_handler = evans.PitchHandler(
    pitch_list=ratio_class_segment_2,
    forget=False,
    name="ring_pitch_handler",
    as_ratios=True,
    chord_boolean_vector=[
        # phrase 1
        1,
        1,
        1,
        1,
        1,
        1,
        0,
        0,
        # phrase 2
        1,
        1,
        1,
        1,
        1,
        1,
        0,
        0,
        # phrase 3
        0,
        0,
        0,
        0,
    ],
    chord_groups=[2],
)

# segment 4
# Link chord 153
link_pitches = microtones.PitchSegment(
    [0, 2, 9, 8, 11, 3, 4, 10, 7, 5, 1, 6]
).transpose(4)
link_pitches += flurry_pitches.invert(8)
link_pitches += flurry_pitches.retrograde().transpose(7)

link_pitch_handler = evans.PitchHandler(
    pitch_list=link_pitches,
    forget=False,
    name="link_pitch_handler",
    apply_all=True,
)

# segment 5

combination_multiples = microtones.RatioSegment(
    [
        "25/16",  #
        "325/256",
        "9/8",
        "1/1",
        "25/16",  #
        "13/8",
        "9/8",
        "1/1",
        "63/64",  #
        "13/8",
        "9/8",
        "1/1",
        "63/64",  #
        "13/8",
        "9/8",
        "325/256",
        "63/64",  #
        "13/8",
        "9/8",
        "325/256",
        "63/64",  #
        "13/8",
        "9/8",
        "1/1",
        "63/64",  #
        "13/8",
        "175/128",
        "1/1",
    ]
)

seg_5_pitch_handler = evans.PitchHandler(
    pitch_list=combination_multiples,
    forget=False,
    name="seg_5_pitch_handler",
    as_ratios=True,
)

# segment 6

subject_1 = microtones.PitchSegment([4, 0, 1, 6])
gestures_1 = subject_1.transpose(3)
gestures_1 += subject_1.transpose(7).rotate(-1).retrograde()
gestures_1 += subject_1.transpose(4).rotate(-2)
gestures_1 += subject_1.transpose(9).rotate(-3).retrograde()

violin_1_pitch_handler_six = evans.PitchHandler(
    pitch_list=gestures_1,
    forget=False,
)

violin_2_pitch_handler_six = evans.PitchHandler(
    pitch_list=gestures_1.rotate(1),
    forget=False,
)

viola_pitch_handler_six = evans.PitchHandler(
    pitch_list=gestures_1.transpose(-12).rotate(2),
    forget=False,
)

cello_pitch_handler_six = evans.PitchHandler(
    pitch_list=gestures_1.transpose(-12).rotate(3),
    forget=False,
)

subject_2 = microtones.PitchSegment(
    [
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        2,
        2,
        2,
        2,
        2,
        2,
        2,
        7,
        7,
        7,
        7,
        7,
        7,
        7,
        7,
        7,
        4,
        4,
        4,
        4,
        4,
        4,
        4,
        4,
        4,
        4,
        4,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        8,
        8,
        8,
        8,
        8,
        8,
        8,
        8,
        8,
        8,
    ]
)
gestures_2 = subject_2.transpose(8)
gestures_2 += subject_2.transpose(9).rotate(-1).retrograde()
gestures_2 += subject_2.transpose(14).rotate(-2)
gestures_2 += subject_2.transpose(11).rotate(-3).retrograde()
gestures_2 += subject_2.transpose(7).rotate(-4)
gestures_2 += subject_2.transpose(15).rotate(-5).retrograde()

violin_1_pitch_handler_seven = evans.PitchHandler(
    pitch_list=gestures_2,
    forget=False,
)

violin_2_pitch_handler_seven = evans.PitchHandler(
    pitch_list=gestures_2.rotate(1),
    forget=False,
)

viola_pitch_handler_seven = evans.PitchHandler(
    pitch_list=gestures_2.transpose(-12).rotate(2),
    forget=False,
)

cello_pitch_handler_seven = evans.PitchHandler(
    pitch_list=gestures_2.transpose(-24).rotate(3),
    forget=False,
)

subject_3 = microtones.PitchSegment([3, 2, 4, 6])
gestures_3 = subject_3
gestures_3 += subject_3.transpose(3).rotate(-1).retrograde()
gestures_3 += subject_3.transpose(2).rotate(-2)
gestures_3 += subject_3.transpose(4).rotate(-3).retrograde()
gestures_3 += subject_3.transpose(6).rotate(-4)

violin_1_pitch_handler_eight = evans.PitchHandler(
    pitch_list=gestures_3,
    forget=False,
)

violin_2_pitch_handler_eight = evans.PitchHandler(
    pitch_list=gestures_3.rotate(1),
    forget=False,
)

viola_pitch_handler_eight = evans.PitchHandler(
    pitch_list=gestures_3.transpose(-12).rotate(2),
    forget=False,
)

cello_pitch_handler_eight = evans.PitchHandler(
    pitch_list=gestures_3.transpose(-24).rotate(3),
    forget=False,
)
