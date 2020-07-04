import itertools
import os
import pathlib
import time
from random import random, seed

from AttachmentHandler import AttachmentHandler
from MusicMaker import MusicMaker

import abjad
import abjadext.rmakers

print("Interpreting file ...")

# Define the time signatures we would like to apply against the timespan structure.

time_signatures = [
    abjad.TimeSignature(pair)
    for pair in [
        (5, 4),
        (2, 4),
        (4, 4),
        (3, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (5, 4),
        (5, 4),
        (3, 4),
        (3, 4),
        (4, 4),
        (4, 4),
        (5, 4),
        (5, 4),
        (3, 4),
        (3, 4),
        (2, 4),
        (3, 4),
        (4, 4),
        (3, 4),
        (4, 4),
        (3, 4),
        (5, 4),
        (3, 4),
        (3, 4),
        (4, 4),
        (3, 4),
        (3, 4),
        (4, 4),
        (5, 4),
        (4, 4),
        (3, 4),
        (5, 4),
        (5, 4),
        (5, 4),
        (5, 4),
        (4, 4),
        (4, 4),
        (5, 4),
        (5, 4),
        (4, 4),
        (4, 4),
        (3, 4),
        (4, 4),
        (4, 4),
        (3, 4),
        (4, 4),
        (1, 4),
    ]
]

bounds = abjad.mathtools.cumulative_sums([_.duration for _ in time_signatures])

# Define Pitch Material


def reduceMod3(rw):
    return [(x % 4) for x in rw]


def reduceMod5(rw):
    return [(x % 6) for x in rw]


def reduceMod7(rw):
    return [(x % 8) for x in rw]


def reduceMod9(rw):
    return [(x % 10) for x in rw]


def reduceMod11(rw):
    return [(x % 12) for x in rw]


def reduceMod13(rw):
    return [(x % 14) for x in rw]


def reduceMod15(rw):
    return [(x % 16) for x in rw]


seed(1)
violin_random_walk = []
violin_random_walk.append(-1 if random() < 0.5 else 1)
for i in range(1, 1000):
    movement = -1 if random() < 0.5 else 1
    value = violin_random_walk[i - 1] + movement
    violin_random_walk.append(value)
violin_random_walk = [abs(x) for x in violin_random_walk]
violin_chord = [5, 8, 14, 23, 27, 28, 30, 37, 30, 28, 27, 23, 14, 8]
violin_notes = [violin_chord[x] for x in reduceMod13(violin_random_walk)]

seed(2)
viola_random_walk = []
viola_random_walk.append(-1 if random() < 0.5 else 1)
for i in range(1, 1000):
    movement = -1 if random() < 0.5 else 1
    value = viola_random_walk[i - 1] + movement
    viola_random_walk.append(value)
viola_random_walk = [abs(x) for x in viola_random_walk]
viola_chord = [-3, 5, 8, 14, 23, 27, 23, 14, 8, 5]
viola_notes = [viola_chord[x] for x in reduceMod9(viola_random_walk)]

seed(3)
cello_random_walk = []
cello_random_walk.append(-1 if random() < 0.5 else 1)
for i in range(1, 1000):
    movement = -1 if random() < 0.5 else 1
    value = cello_random_walk[i - 1] + movement
    cello_random_walk.append(value)
cello_random_walk = [abs(x) for x in cello_random_walk]
cello_chord = [-24, -14, -3, 5, 8, 5, -3, -14]
cello_notes = [cello_chord[x] for x in reduceMod7(cello_random_walk)]

# Define rhythm-makers: two to be sued by the MusicMaker, one for silence.

rmaker_one = abjadext.rmakers.NoteRhythmMaker()

rmaker_two = abjadext.rmakers.EvenDivisionRhythmMaker(
    denominators=[16, 16, 8, 16, 4, 16, 8],
    extra_counts_per_division=[0, 1, 0, 0, -1, 0, 1, -1],
    # burnish_specifier= abjadext.rmakers.BurnishSpecifier(
    #     left_classes=[abjad.Rest],
    #     left_counts=[1],
    #     right_classes=[abjad.Rest],
    #     right_counts=[1],
    #     outer_divisions_only=True,
    #     ),
    tuplet_specifier=abjadext.rmakers.TupletSpecifier(
        trivialize=True, extract_trivial=True, rewrite_rest_filled=True
    ),
)

rmaker_three = abjadext.rmakers.TaleaRhythmMaker(
    talea=abjadext.rmakers.Talea(counts=[1, 1, 1, 2, 1, 3, 1, 4, 5], denominator=16),
    beam_specifier=abjadext.rmakers.BeamSpecifier(
        beam_divisions_together=True, beam_rests=False
    ),
    extra_counts_per_division=[0, 1, 0, -1],
    # burnish_specifier= abjadext.rmakers.BurnishSpecifier(
    #     left_classes=[abjad.Note, abjad.Rest],
    #     left_counts=[1, 0, 1],
    #     ),
    tuplet_specifier=abjadext.rmakers.TupletSpecifier(
        trivialize=True, extract_trivial=True, rewrite_rest_filled=True
    ),
)

silence_maker = abjadext.rmakers.NoteRhythmMaker(
    division_masks=[abjadext.rmakers.SilenceMask(pattern=abjad.index([0], 1))]
)

# Initialize AttachmentHandler

attachment_handler_one = AttachmentHandler(
    starting_dynamic="p",
    ending_dynamic="mp",
    hairpin_indicator="--",
    articulation="accent",
)

attachment_handler_two = AttachmentHandler(
    starting_dynamic="fff",
    ending_dynamic="mf",
    hairpin_indicator=">",
    articulation="tenuto",
)

attachment_handler_three = AttachmentHandler(
    starting_dynamic="mp", ending_dynamic="ff", hairpin_indicator="<|", articulation=""
)

# Initialize MusicMakers with the rhythm-makers.
# ####oboe#####
violinmusicmaker_one = MusicMaker(
    rmaker=rmaker_one,
    pitches=violin_notes,
    continuous=True,
    attachment_handler=attachment_handler_one,
)
violinmusicmaker_two = MusicMaker(
    rmaker=rmaker_two,
    pitches=[0],
    continuous=True,
    attachment_handler=attachment_handler_two,
)
violinmusicmaker_three = MusicMaker(
    rmaker=rmaker_three,
    pitches=[0],
    continuous=True,
    attachment_handler=attachment_handler_three,
)
# ####clarinet#####
violamusicmaker_one = MusicMaker(
    rmaker=rmaker_one,
    pitches=viola_notes,
    continuous=True,
    attachment_handler=attachment_handler_one,
)
violamusicmaker_two = MusicMaker(
    rmaker=rmaker_two,
    pitches=[0],
    continuous=True,
    attachment_handler=attachment_handler_two,
)
violamusicmaker_three = MusicMaker(
    rmaker=rmaker_three,
    pitches=[0],
    continuous=True,
    attachment_handler=attachment_handler_three,
)
# ####bassoon#####
cellomusicmaker_one = MusicMaker(
    rmaker=rmaker_one,
    pitches=cello_notes,
    continuous=True,
    attachment_handler=attachment_handler_one,
)
cellomusicmaker_two = MusicMaker(
    rmaker=rmaker_two,
    pitches=[0],
    continuous=True,
    attachment_handler=attachment_handler_two,
)
cellomusicmaker_three = MusicMaker(
    rmaker=rmaker_three,
    pitches=[0],
    continuous=True,
    attachment_handler=attachment_handler_three,
)

# Define a small class so that we can annotate timespans with additional
# information:


class MusicSpecifier:
    def __init__(self, music_maker, voice_name):
        self.music_maker = music_maker
        self.voice_name = voice_name


# Define an initial timespan structure, annotated with music specifiers. This
# structure has not been split along meter boundaries. This structure does not
# contain timespans explicitly representing silence. Here I make four, one
# for each voice, using Python's list comprehension syntax to save some
# space.

print("Collecting timespans and rmakers ...")
# ##group one###
voice_4_timespan_list = abjad.TimespanList(
    [
        abjad.AnnotatedTimespan(
            start_offset=start_offset,
            stop_offset=stop_offset,
            annotation=MusicSpecifier(music_maker=music_maker, voice_name="Voice 4"),
        )
        for start_offset, stop_offset, music_maker in [
            [(9, 4), (10, 4), violinmusicmaker_one],
            [(15, 4), (18, 4), violinmusicmaker_one],
            [(22, 4), (25, 4), violinmusicmaker_one],
            [(27, 4), (30, 4), violinmusicmaker_one],
            [(30, 4), (32, 4), violinmusicmaker_one],
            [(35, 4), (39, 4), violinmusicmaker_one],
            [(42, 4), (43, 4), violinmusicmaker_one],
            [(43, 4), (44, 4), violinmusicmaker_one],
            [(45, 4), (46, 4), violinmusicmaker_one],
            [(46, 4), (50, 4), violinmusicmaker_one],
            [(54, 4), (57, 4), violinmusicmaker_one],
            [(59, 4), (60, 4), violinmusicmaker_one],
            [(65, 4), (67, 4), violinmusicmaker_one],
            [(67, 4), (69, 4), violinmusicmaker_one],
            [(70, 4), (72, 4), violinmusicmaker_one],
            [(72, 4), (75, 4), violinmusicmaker_one],
            [(76, 4), (78, 4), violinmusicmaker_one],
            [(81, 4), (82, 4), violinmusicmaker_one],
            [(82, 4), (85, 4), violinmusicmaker_one],
            [(90, 4), (91, 4), violinmusicmaker_one],
            [(93, 4), (94, 4), violinmusicmaker_one],
            [(94, 4), (96, 4), violinmusicmaker_one],
            [(100, 4), (104, 4), violinmusicmaker_one],
            [(104, 4), (105, 4), violinmusicmaker_one],
            [(106, 4), (107, 4), violinmusicmaker_one],
            [(107, 4), (108, 4), violinmusicmaker_one],
            [(111, 4), (114, 4), violinmusicmaker_one],
            [(114, 4), (115, 4), violinmusicmaker_one],
            [(116, 4), (119, 4), violinmusicmaker_one],
            [(119, 4), (120, 4), violinmusicmaker_one],
            [(121, 4), (123, 4), violinmusicmaker_one],
            [(123, 4), (125, 4), violinmusicmaker_one],
            [(126, 4), (131, 4), violinmusicmaker_one],
            [(131, 4), (133, 4), violinmusicmaker_one],
            [(136, 4), (141, 4), violinmusicmaker_one],
            [(148, 4), (150, 4), violinmusicmaker_one],
            [(150, 4), (153, 4), violinmusicmaker_one],
            [(155, 4), (159, 4), violinmusicmaker_one],
            [(162, 4), (164, 4), violinmusicmaker_one],
            [(168, 4), (171, 4), violinmusicmaker_one],
            [(173, 4), (175, 4), violinmusicmaker_one],
            [(175, 4), (177, 4), violinmusicmaker_one],
            [(180, 4), (182, 4), violinmusicmaker_one],
            [(186, 4), (190, 4), violinmusicmaker_one],
            [(190, 4), (191, 4), silence_maker],
        ]
    ]
)

voice_2_timespan_list = abjad.TimespanList(
    [
        abjad.AnnotatedTimespan(
            start_offset=start_offset,
            stop_offset=stop_offset,
            annotation=MusicSpecifier(music_maker=music_maker, voice_name="Voice 2"),
        )
        for start_offset, stop_offset, music_maker in [
            [(9, 4), (10, 4), violinmusicmaker_two],
            [(15, 4), (18, 4), violinmusicmaker_two],
            [(22, 4), (25, 4), violinmusicmaker_two],
            [(27, 4), (30, 4), violinmusicmaker_two],
            [(30, 4), (32, 4), violinmusicmaker_two],
            [(35, 4), (39, 4), violinmusicmaker_two],
            [(42, 4), (43, 4), violinmusicmaker_two],
            [(43, 4), (44, 4), violinmusicmaker_two],
            [(45, 4), (46, 4), violinmusicmaker_two],
            [(46, 4), (50, 4), violinmusicmaker_two],
            [(54, 4), (57, 4), violinmusicmaker_two],
            [(59, 4), (60, 4), violinmusicmaker_two],
            [(65, 4), (67, 4), violinmusicmaker_two],
            [(67, 4), (69, 4), violinmusicmaker_two],
            [(70, 4), (72, 4), violinmusicmaker_two],
            [(72, 4), (75, 4), violinmusicmaker_two],
            [(76, 4), (78, 4), violinmusicmaker_two],
            [(81, 4), (82, 4), violinmusicmaker_two],
            [(82, 4), (85, 4), violinmusicmaker_two],
            [(90, 4), (91, 4), violinmusicmaker_two],
            [(93, 4), (94, 4), violinmusicmaker_two],
            [(94, 4), (96, 4), violinmusicmaker_two],
            [(100, 4), (104, 4), violinmusicmaker_two],
            [(104, 4), (105, 4), violinmusicmaker_two],
            [(106, 4), (107, 4), violinmusicmaker_two],
            [(107, 4), (108, 4), violinmusicmaker_two],
            [(111, 4), (114, 4), violinmusicmaker_two],
            [(114, 4), (115, 4), violinmusicmaker_two],
            [(116, 4), (119, 4), violinmusicmaker_two],
            [(119, 4), (120, 4), violinmusicmaker_two],
            [(121, 4), (123, 4), violinmusicmaker_two],
            [(123, 4), (125, 4), violinmusicmaker_two],
            [(126, 4), (131, 4), violinmusicmaker_two],
            [(131, 4), (133, 4), violinmusicmaker_two],
            [(136, 4), (141, 4), violinmusicmaker_two],
            [(148, 4), (150, 4), violinmusicmaker_two],
            [(150, 4), (153, 4), violinmusicmaker_two],
            [(155, 4), (159, 4), violinmusicmaker_two],
            [(162, 4), (164, 4), violinmusicmaker_two],
            [(168, 4), (171, 4), violinmusicmaker_two],
            [(173, 4), (175, 4), violinmusicmaker_two],
            [(175, 4), (177, 4), violinmusicmaker_two],
            [(180, 4), (182, 4), violinmusicmaker_two],
            [(186, 4), (190, 4), violinmusicmaker_two],
            [(190, 4), (191, 4), silence_maker],
        ]
    ]
)

voice_3_timespan_list = abjad.TimespanList(
    [
        abjad.AnnotatedTimespan(
            start_offset=start_offset,
            stop_offset=stop_offset,
            annotation=MusicSpecifier(music_maker=music_maker, voice_name="Voice 3"),
        )
        for start_offset, stop_offset, music_maker in [
            [(9, 4), (10, 4), violinmusicmaker_two],
            [(15, 4), (18, 4), violinmusicmaker_two],
            [(22, 4), (25, 4), violinmusicmaker_two],
            [(27, 4), (30, 4), violinmusicmaker_two],
            [(30, 4), (32, 4), violinmusicmaker_two],
            [(35, 4), (39, 4), violinmusicmaker_two],
            [(42, 4), (43, 4), violinmusicmaker_two],
            [(43, 4), (44, 4), violinmusicmaker_two],
            [(45, 4), (46, 4), violinmusicmaker_two],
            [(46, 4), (50, 4), violinmusicmaker_two],
            [(54, 4), (57, 4), violinmusicmaker_two],
            [(59, 4), (60, 4), violinmusicmaker_two],
            [(65, 4), (67, 4), violinmusicmaker_two],
            [(67, 4), (69, 4), violinmusicmaker_two],
            [(70, 4), (72, 4), violinmusicmaker_two],
            [(72, 4), (75, 4), violinmusicmaker_two],
            [(76, 4), (78, 4), violinmusicmaker_two],
            [(81, 4), (82, 4), violinmusicmaker_two],
            [(82, 4), (85, 4), violinmusicmaker_two],
            [(90, 4), (91, 4), violinmusicmaker_two],
            [(93, 4), (94, 4), violinmusicmaker_two],
            [(94, 4), (96, 4), violinmusicmaker_two],
            [(100, 4), (104, 4), violinmusicmaker_two],
            [(104, 4), (105, 4), violinmusicmaker_two],
            [(106, 4), (107, 4), violinmusicmaker_two],
            [(107, 4), (108, 4), violinmusicmaker_two],
            [(111, 4), (114, 4), violinmusicmaker_two],
            [(114, 4), (115, 4), violinmusicmaker_two],
            [(116, 4), (119, 4), violinmusicmaker_two],
            [(119, 4), (120, 4), violinmusicmaker_two],
            [(121, 4), (123, 4), violinmusicmaker_two],
            [(123, 4), (125, 4), violinmusicmaker_two],
            [(126, 4), (131, 4), violinmusicmaker_two],
            [(131, 4), (133, 4), violinmusicmaker_two],
            [(136, 4), (141, 4), violinmusicmaker_two],
            [(148, 4), (150, 4), violinmusicmaker_two],
            [(150, 4), (153, 4), violinmusicmaker_two],
            [(155, 4), (159, 4), violinmusicmaker_two],
            [(162, 4), (164, 4), violinmusicmaker_two],
            [(168, 4), (171, 4), violinmusicmaker_two],
            [(173, 4), (175, 4), violinmusicmaker_two],
            [(175, 4), (177, 4), violinmusicmaker_two],
            [(180, 4), (182, 4), violinmusicmaker_two],
            [(186, 4), (190, 4), violinmusicmaker_two],
            [(190, 4), (191, 4), silence_maker],
        ]
    ]
)

voice_1_timespan_list = abjad.TimespanList(
    [
        abjad.AnnotatedTimespan(
            start_offset=start_offset,
            stop_offset=stop_offset,
            annotation=MusicSpecifier(music_maker=music_maker, voice_name="Voice 1"),
        )
        for start_offset, stop_offset, music_maker in [
            [(9, 4), (10, 4), violinmusicmaker_three],
            [(15, 4), (18, 4), violinmusicmaker_three],
            [(22, 4), (25, 4), violinmusicmaker_three],
            [(27, 4), (30, 4), violinmusicmaker_three],
            [(30, 4), (32, 4), violinmusicmaker_three],
            [(35, 4), (39, 4), violinmusicmaker_three],
            [(42, 4), (43, 4), violinmusicmaker_three],
            [(43, 4), (44, 4), violinmusicmaker_three],
            [(45, 4), (46, 4), violinmusicmaker_three],
            [(46, 4), (50, 4), violinmusicmaker_three],
            [(54, 4), (57, 4), violinmusicmaker_three],
            [(59, 4), (60, 4), violinmusicmaker_three],
            [(65, 4), (67, 4), violinmusicmaker_three],
            [(67, 4), (69, 4), violinmusicmaker_three],
            [(70, 4), (72, 4), violinmusicmaker_three],
            [(72, 4), (75, 4), violinmusicmaker_three],
            [(76, 4), (78, 4), violinmusicmaker_three],
            [(81, 4), (82, 4), violinmusicmaker_three],
            [(82, 4), (85, 4), violinmusicmaker_three],
            [(90, 4), (91, 4), violinmusicmaker_three],
            [(93, 4), (94, 4), violinmusicmaker_three],
            [(94, 4), (96, 4), violinmusicmaker_three],
            [(100, 4), (104, 4), violinmusicmaker_three],
            [(104, 4), (105, 4), violinmusicmaker_three],
            [(106, 4), (107, 4), violinmusicmaker_three],
            [(107, 4), (108, 4), violinmusicmaker_three],
            [(111, 4), (114, 4), violinmusicmaker_three],
            [(114, 4), (115, 4), violinmusicmaker_three],
            [(116, 4), (119, 4), violinmusicmaker_three],
            [(119, 4), (120, 4), violinmusicmaker_three],
            [(121, 4), (123, 4), violinmusicmaker_three],
            [(123, 4), (125, 4), violinmusicmaker_three],
            [(126, 4), (131, 4), violinmusicmaker_three],
            [(131, 4), (133, 4), violinmusicmaker_three],
            [(136, 4), (141, 4), violinmusicmaker_three],
            [(148, 4), (150, 4), violinmusicmaker_three],
            [(150, 4), (153, 4), violinmusicmaker_three],
            [(155, 4), (159, 4), violinmusicmaker_three],
            [(162, 4), (164, 4), violinmusicmaker_three],
            [(168, 4), (171, 4), violinmusicmaker_three],
            [(173, 4), (175, 4), violinmusicmaker_three],
            [(175, 4), (177, 4), violinmusicmaker_three],
            [(180, 4), (182, 4), violinmusicmaker_three],
            [(186, 4), (190, 4), violinmusicmaker_three],
            [(190, 4), (191, 4), silence_maker],
        ]
    ]
)

# ##group two###
voice_8_timespan_list = abjad.TimespanList(
    [
        abjad.AnnotatedTimespan(
            start_offset=start_offset,
            stop_offset=stop_offset,
            annotation=MusicSpecifier(music_maker=music_maker, voice_name="Voice 8"),
        )
        for start_offset, stop_offset, music_maker in [
            [(9, 4), (10, 4), violamusicmaker_one],
            [(15, 4), (18, 4), violamusicmaker_one],
            [(22, 4), (25, 4), violamusicmaker_one],
            [(27, 4), (30, 4), violamusicmaker_one],
            [(30, 4), (32, 4), violamusicmaker_one],
            [(35, 4), (39, 4), violamusicmaker_one],
            [(42, 4), (43, 4), violamusicmaker_one],
            [(43, 4), (44, 4), violamusicmaker_one],
            [(45, 4), (46, 4), violamusicmaker_one],
            [(46, 4), (50, 4), violamusicmaker_one],
            [(54, 4), (57, 4), violamusicmaker_one],
            [(59, 4), (60, 4), violamusicmaker_one],
            [(65, 4), (67, 4), violamusicmaker_one],
            [(67, 4), (69, 4), violamusicmaker_one],
            [(70, 4), (72, 4), violamusicmaker_one],
            [(72, 4), (75, 4), violamusicmaker_one],
            [(76, 4), (78, 4), violamusicmaker_one],
            [(81, 4), (82, 4), violamusicmaker_one],
            [(82, 4), (85, 4), violamusicmaker_one],
            [(90, 4), (91, 4), violamusicmaker_one],
            [(93, 4), (94, 4), violamusicmaker_one],
            [(94, 4), (96, 4), violamusicmaker_one],
            [(100, 4), (104, 4), violamusicmaker_one],
            [(104, 4), (105, 4), violamusicmaker_one],
            [(106, 4), (107, 4), violamusicmaker_one],
            [(107, 4), (108, 4), violamusicmaker_one],
            [(111, 4), (114, 4), violamusicmaker_one],
            [(114, 4), (115, 4), violamusicmaker_one],
            [(116, 4), (119, 4), violamusicmaker_one],
            [(119, 4), (120, 4), violamusicmaker_one],
            [(121, 4), (123, 4), violamusicmaker_one],
            [(123, 4), (125, 4), violamusicmaker_one],
            [(126, 4), (131, 4), violamusicmaker_one],
            [(131, 4), (133, 4), violamusicmaker_one],
            [(136, 4), (141, 4), violamusicmaker_one],
            [(148, 4), (150, 4), violamusicmaker_one],
            [(150, 4), (153, 4), violamusicmaker_one],
            [(155, 4), (159, 4), violamusicmaker_one],
            [(162, 4), (164, 4), violamusicmaker_one],
            [(168, 4), (171, 4), violamusicmaker_one],
            [(173, 4), (175, 4), violamusicmaker_one],
            [(175, 4), (177, 4), violamusicmaker_one],
            [(180, 4), (182, 4), violamusicmaker_one],
            [(186, 4), (190, 4), violamusicmaker_one],
            [(190, 4), (191, 4), silence_maker],
        ]
    ]
)

voice_6_timespan_list = abjad.TimespanList(
    [
        abjad.AnnotatedTimespan(
            start_offset=start_offset,
            stop_offset=stop_offset,
            annotation=MusicSpecifier(music_maker=music_maker, voice_name="Voice 6"),
        )
        for start_offset, stop_offset, music_maker in [
            [(9, 4), (10, 4), violamusicmaker_two],
            [(15, 4), (18, 4), violamusicmaker_two],
            [(22, 4), (25, 4), violamusicmaker_two],
            [(27, 4), (30, 4), violamusicmaker_two],
            [(30, 4), (32, 4), violamusicmaker_two],
            [(35, 4), (39, 4), violamusicmaker_two],
            [(42, 4), (43, 4), violamusicmaker_two],
            [(43, 4), (44, 4), violamusicmaker_two],
            [(45, 4), (46, 4), violamusicmaker_two],
            [(46, 4), (50, 4), violamusicmaker_two],
            [(54, 4), (57, 4), violamusicmaker_two],
            [(59, 4), (60, 4), violamusicmaker_two],
            [(65, 4), (67, 4), violamusicmaker_two],
            [(67, 4), (69, 4), violamusicmaker_two],
            [(70, 4), (72, 4), violamusicmaker_two],
            [(72, 4), (75, 4), violamusicmaker_two],
            [(76, 4), (78, 4), violamusicmaker_two],
            [(81, 4), (82, 4), violamusicmaker_two],
            [(82, 4), (85, 4), violamusicmaker_two],
            [(90, 4), (91, 4), violamusicmaker_two],
            [(93, 4), (94, 4), violamusicmaker_two],
            [(94, 4), (96, 4), violamusicmaker_two],
            [(100, 4), (104, 4), violamusicmaker_two],
            [(104, 4), (105, 4), violamusicmaker_two],
            [(106, 4), (107, 4), violamusicmaker_two],
            [(107, 4), (108, 4), violamusicmaker_two],
            [(111, 4), (114, 4), violamusicmaker_two],
            [(114, 4), (115, 4), violamusicmaker_two],
            [(116, 4), (119, 4), violamusicmaker_two],
            [(119, 4), (120, 4), violamusicmaker_two],
            [(121, 4), (123, 4), violamusicmaker_two],
            [(123, 4), (125, 4), violamusicmaker_two],
            [(126, 4), (131, 4), violamusicmaker_two],
            [(131, 4), (133, 4), violamusicmaker_two],
            [(136, 4), (141, 4), violamusicmaker_two],
            [(148, 4), (150, 4), violamusicmaker_two],
            [(150, 4), (153, 4), violamusicmaker_two],
            [(155, 4), (159, 4), violamusicmaker_two],
            [(162, 4), (164, 4), violamusicmaker_two],
            [(168, 4), (171, 4), violamusicmaker_two],
            [(173, 4), (175, 4), violamusicmaker_two],
            [(175, 4), (177, 4), violamusicmaker_two],
            [(180, 4), (182, 4), violamusicmaker_two],
            [(186, 4), (190, 4), violamusicmaker_two],
            [(190, 4), (191, 4), silence_maker],
        ]
    ]
)

voice_7_timespan_list = abjad.TimespanList(
    [
        abjad.AnnotatedTimespan(
            start_offset=start_offset,
            stop_offset=stop_offset,
            annotation=MusicSpecifier(music_maker=music_maker, voice_name="Voice 7"),
        )
        for start_offset, stop_offset, music_maker in [
            [(9, 4), (10, 4), violamusicmaker_two],
            [(15, 4), (18, 4), violamusicmaker_two],
            [(22, 4), (25, 4), violamusicmaker_two],
            [(27, 4), (30, 4), violamusicmaker_two],
            [(30, 4), (32, 4), violamusicmaker_two],
            [(35, 4), (39, 4), violamusicmaker_two],
            [(42, 4), (43, 4), violamusicmaker_two],
            [(43, 4), (44, 4), violamusicmaker_two],
            [(45, 4), (46, 4), violamusicmaker_two],
            [(46, 4), (50, 4), violamusicmaker_two],
            [(54, 4), (57, 4), violamusicmaker_two],
            [(59, 4), (60, 4), violamusicmaker_two],
            [(65, 4), (67, 4), violamusicmaker_two],
            [(67, 4), (69, 4), violamusicmaker_two],
            [(70, 4), (72, 4), violamusicmaker_two],
            [(72, 4), (75, 4), violamusicmaker_two],
            [(76, 4), (78, 4), violamusicmaker_two],
            [(81, 4), (82, 4), violamusicmaker_two],
            [(82, 4), (85, 4), violamusicmaker_two],
            [(90, 4), (91, 4), violamusicmaker_two],
            [(93, 4), (94, 4), violamusicmaker_two],
            [(94, 4), (96, 4), violamusicmaker_two],
            [(100, 4), (104, 4), violamusicmaker_two],
            [(104, 4), (105, 4), violamusicmaker_two],
            [(106, 4), (107, 4), violamusicmaker_two],
            [(107, 4), (108, 4), violamusicmaker_two],
            [(111, 4), (114, 4), violamusicmaker_two],
            [(114, 4), (115, 4), violamusicmaker_two],
            [(116, 4), (119, 4), violamusicmaker_two],
            [(119, 4), (120, 4), violamusicmaker_two],
            [(121, 4), (123, 4), violamusicmaker_two],
            [(123, 4), (125, 4), violamusicmaker_two],
            [(126, 4), (131, 4), violamusicmaker_two],
            [(131, 4), (133, 4), violamusicmaker_two],
            [(136, 4), (141, 4), violamusicmaker_two],
            [(148, 4), (150, 4), violamusicmaker_two],
            [(150, 4), (153, 4), violamusicmaker_two],
            [(155, 4), (159, 4), violamusicmaker_two],
            [(162, 4), (164, 4), violamusicmaker_two],
            [(168, 4), (171, 4), violamusicmaker_two],
            [(173, 4), (175, 4), violamusicmaker_two],
            [(175, 4), (177, 4), violamusicmaker_two],
            [(180, 4), (182, 4), violamusicmaker_two],
            [(186, 4), (190, 4), violamusicmaker_two],
            [(190, 4), (191, 4), silence_maker],
        ]
    ]
)

voice_5_timespan_list = abjad.TimespanList(
    [
        abjad.AnnotatedTimespan(
            start_offset=start_offset,
            stop_offset=stop_offset,
            annotation=MusicSpecifier(music_maker=music_maker, voice_name="Voice 5"),
        )
        for start_offset, stop_offset, music_maker in [
            [(9, 4), (10, 4), violamusicmaker_three],
            [(15, 4), (18, 4), violamusicmaker_three],
            [(22, 4), (25, 4), violamusicmaker_three],
            [(27, 4), (30, 4), violamusicmaker_three],
            [(30, 4), (32, 4), violamusicmaker_three],
            [(35, 4), (39, 4), violamusicmaker_three],
            [(42, 4), (43, 4), violamusicmaker_three],
            [(43, 4), (44, 4), violamusicmaker_three],
            [(45, 4), (46, 4), violamusicmaker_three],
            [(46, 4), (50, 4), violamusicmaker_three],
            [(54, 4), (57, 4), violamusicmaker_three],
            [(59, 4), (60, 4), violamusicmaker_three],
            [(65, 4), (67, 4), violamusicmaker_three],
            [(67, 4), (69, 4), violamusicmaker_three],
            [(70, 4), (72, 4), violamusicmaker_three],
            [(72, 4), (75, 4), violamusicmaker_three],
            [(76, 4), (78, 4), violamusicmaker_three],
            [(81, 4), (82, 4), violamusicmaker_three],
            [(82, 4), (85, 4), violamusicmaker_three],
            [(90, 4), (91, 4), violamusicmaker_three],
            [(93, 4), (94, 4), violamusicmaker_three],
            [(94, 4), (96, 4), violamusicmaker_three],
            [(100, 4), (104, 4), violamusicmaker_three],
            [(104, 4), (105, 4), violamusicmaker_three],
            [(106, 4), (107, 4), violamusicmaker_three],
            [(107, 4), (108, 4), violamusicmaker_three],
            [(111, 4), (114, 4), violamusicmaker_three],
            [(114, 4), (115, 4), violamusicmaker_three],
            [(116, 4), (119, 4), violamusicmaker_three],
            [(119, 4), (120, 4), violamusicmaker_three],
            [(121, 4), (123, 4), violamusicmaker_three],
            [(123, 4), (125, 4), violamusicmaker_three],
            [(126, 4), (131, 4), violamusicmaker_three],
            [(131, 4), (133, 4), violamusicmaker_three],
            [(136, 4), (141, 4), violamusicmaker_three],
            [(148, 4), (150, 4), violamusicmaker_three],
            [(150, 4), (153, 4), violamusicmaker_three],
            [(155, 4), (159, 4), violamusicmaker_three],
            [(162, 4), (164, 4), violamusicmaker_three],
            [(168, 4), (171, 4), violamusicmaker_three],
            [(173, 4), (175, 4), violamusicmaker_three],
            [(175, 4), (177, 4), violamusicmaker_three],
            [(180, 4), (182, 4), violamusicmaker_three],
            [(186, 4), (190, 4), violamusicmaker_three],
            [(190, 4), (191, 4), silence_maker],
        ]
    ]
)

# ##group three###
voice_12_timespan_list = abjad.TimespanList(
    [
        abjad.AnnotatedTimespan(
            start_offset=start_offset,
            stop_offset=stop_offset,
            annotation=MusicSpecifier(music_maker=music_maker, voice_name="Voice 12"),
        )
        for start_offset, stop_offset, music_maker in [
            [(9, 4), (10, 4), cellomusicmaker_one],
            [(15, 4), (18, 4), cellomusicmaker_one],
            [(22, 4), (25, 4), cellomusicmaker_one],
            [(27, 4), (30, 4), cellomusicmaker_one],
            [(30, 4), (32, 4), cellomusicmaker_one],
            [(35, 4), (39, 4), cellomusicmaker_one],
            [(42, 4), (43, 4), cellomusicmaker_one],
            [(43, 4), (44, 4), cellomusicmaker_one],
            [(45, 4), (46, 4), cellomusicmaker_one],
            [(46, 4), (50, 4), cellomusicmaker_one],
            [(54, 4), (57, 4), cellomusicmaker_one],
            [(59, 4), (60, 4), cellomusicmaker_one],
            [(65, 4), (67, 4), cellomusicmaker_one],
            [(67, 4), (69, 4), cellomusicmaker_one],
            [(70, 4), (72, 4), cellomusicmaker_one],
            [(72, 4), (75, 4), cellomusicmaker_one],
            [(76, 4), (78, 4), cellomusicmaker_one],
            [(81, 4), (82, 4), cellomusicmaker_one],
            [(82, 4), (85, 4), cellomusicmaker_one],
            [(90, 4), (91, 4), cellomusicmaker_one],
            [(93, 4), (94, 4), cellomusicmaker_one],
            [(94, 4), (96, 4), cellomusicmaker_one],
            [(100, 4), (104, 4), cellomusicmaker_one],
            [(104, 4), (105, 4), cellomusicmaker_one],
            [(106, 4), (107, 4), cellomusicmaker_one],
            [(107, 4), (108, 4), cellomusicmaker_one],
            [(111, 4), (114, 4), cellomusicmaker_one],
            [(114, 4), (115, 4), cellomusicmaker_one],
            [(116, 4), (119, 4), cellomusicmaker_one],
            [(119, 4), (120, 4), cellomusicmaker_one],
            [(121, 4), (123, 4), cellomusicmaker_one],
            [(123, 4), (125, 4), cellomusicmaker_one],
            [(126, 4), (131, 4), cellomusicmaker_one],
            [(131, 4), (133, 4), cellomusicmaker_one],
            [(136, 4), (141, 4), cellomusicmaker_one],
            [(148, 4), (150, 4), cellomusicmaker_one],
            [(150, 4), (153, 4), cellomusicmaker_one],
            [(155, 4), (159, 4), cellomusicmaker_one],
            [(162, 4), (164, 4), cellomusicmaker_one],
            [(168, 4), (171, 4), cellomusicmaker_one],
            [(173, 4), (175, 4), cellomusicmaker_one],
            [(175, 4), (177, 4), cellomusicmaker_one],
            [(180, 4), (182, 4), cellomusicmaker_one],
            [(186, 4), (190, 4), cellomusicmaker_one],
            [(190, 4), (191, 4), silence_maker],
        ]
    ]
)

voice_10_timespan_list = abjad.TimespanList(
    [
        abjad.AnnotatedTimespan(
            start_offset=start_offset,
            stop_offset=stop_offset,
            annotation=MusicSpecifier(music_maker=music_maker, voice_name="Voice 10"),
        )
        for start_offset, stop_offset, music_maker in [
            [(9, 4), (10, 4), cellomusicmaker_two],
            [(15, 4), (18, 4), cellomusicmaker_two],
            [(22, 4), (25, 4), cellomusicmaker_two],
            [(27, 4), (30, 4), cellomusicmaker_two],
            [(30, 4), (32, 4), cellomusicmaker_two],
            [(35, 4), (39, 4), cellomusicmaker_two],
            [(42, 4), (43, 4), cellomusicmaker_two],
            [(43, 4), (44, 4), cellomusicmaker_two],
            [(45, 4), (46, 4), cellomusicmaker_two],
            [(46, 4), (50, 4), cellomusicmaker_two],
            [(54, 4), (57, 4), cellomusicmaker_two],
            [(59, 4), (60, 4), cellomusicmaker_two],
            [(65, 4), (67, 4), cellomusicmaker_two],
            [(67, 4), (69, 4), cellomusicmaker_two],
            [(70, 4), (72, 4), cellomusicmaker_two],
            [(72, 4), (75, 4), cellomusicmaker_two],
            [(76, 4), (78, 4), cellomusicmaker_two],
            [(81, 4), (82, 4), cellomusicmaker_two],
            [(82, 4), (85, 4), cellomusicmaker_two],
            [(90, 4), (91, 4), cellomusicmaker_two],
            [(93, 4), (94, 4), cellomusicmaker_two],
            [(94, 4), (96, 4), cellomusicmaker_two],
            [(100, 4), (104, 4), cellomusicmaker_two],
            [(104, 4), (105, 4), cellomusicmaker_two],
            [(106, 4), (107, 4), cellomusicmaker_two],
            [(107, 4), (108, 4), cellomusicmaker_two],
            [(111, 4), (114, 4), cellomusicmaker_two],
            [(114, 4), (115, 4), cellomusicmaker_two],
            [(116, 4), (119, 4), cellomusicmaker_two],
            [(119, 4), (120, 4), cellomusicmaker_two],
            [(121, 4), (123, 4), cellomusicmaker_two],
            [(123, 4), (125, 4), cellomusicmaker_two],
            [(126, 4), (131, 4), cellomusicmaker_two],
            [(131, 4), (133, 4), cellomusicmaker_two],
            [(136, 4), (141, 4), cellomusicmaker_two],
            [(148, 4), (150, 4), cellomusicmaker_two],
            [(150, 4), (153, 4), cellomusicmaker_two],
            [(155, 4), (159, 4), cellomusicmaker_two],
            [(162, 4), (164, 4), cellomusicmaker_two],
            [(168, 4), (171, 4), cellomusicmaker_two],
            [(173, 4), (175, 4), cellomusicmaker_two],
            [(175, 4), (177, 4), cellomusicmaker_two],
            [(180, 4), (182, 4), cellomusicmaker_two],
            [(186, 4), (190, 4), cellomusicmaker_two],
            [(190, 4), (191, 4), silence_maker],
        ]
    ]
)

voice_11_timespan_list = abjad.TimespanList(
    [
        abjad.AnnotatedTimespan(
            start_offset=start_offset,
            stop_offset=stop_offset,
            annotation=MusicSpecifier(music_maker=music_maker, voice_name="Voice 11"),
        )
        for start_offset, stop_offset, music_maker in [
            [(9, 4), (10, 4), cellomusicmaker_two],
            [(15, 4), (18, 4), cellomusicmaker_two],
            [(22, 4), (25, 4), cellomusicmaker_two],
            [(27, 4), (30, 4), cellomusicmaker_two],
            [(30, 4), (32, 4), cellomusicmaker_two],
            [(35, 4), (39, 4), cellomusicmaker_two],
            [(42, 4), (43, 4), cellomusicmaker_two],
            [(43, 4), (44, 4), cellomusicmaker_two],
            [(45, 4), (46, 4), cellomusicmaker_two],
            [(46, 4), (50, 4), cellomusicmaker_two],
            [(54, 4), (57, 4), cellomusicmaker_two],
            [(59, 4), (60, 4), cellomusicmaker_two],
            [(65, 4), (67, 4), cellomusicmaker_two],
            [(67, 4), (69, 4), cellomusicmaker_two],
            [(70, 4), (72, 4), cellomusicmaker_two],
            [(72, 4), (75, 4), cellomusicmaker_two],
            [(76, 4), (78, 4), cellomusicmaker_two],
            [(81, 4), (82, 4), cellomusicmaker_two],
            [(82, 4), (85, 4), cellomusicmaker_two],
            [(90, 4), (91, 4), cellomusicmaker_two],
            [(93, 4), (94, 4), cellomusicmaker_two],
            [(94, 4), (96, 4), cellomusicmaker_two],
            [(100, 4), (104, 4), cellomusicmaker_two],
            [(104, 4), (105, 4), cellomusicmaker_two],
            [(106, 4), (107, 4), cellomusicmaker_two],
            [(107, 4), (108, 4), cellomusicmaker_two],
            [(111, 4), (114, 4), cellomusicmaker_two],
            [(114, 4), (115, 4), cellomusicmaker_two],
            [(116, 4), (119, 4), cellomusicmaker_two],
            [(119, 4), (120, 4), cellomusicmaker_two],
            [(121, 4), (123, 4), cellomusicmaker_two],
            [(123, 4), (125, 4), cellomusicmaker_two],
            [(126, 4), (131, 4), cellomusicmaker_two],
            [(131, 4), (133, 4), cellomusicmaker_two],
            [(136, 4), (141, 4), cellomusicmaker_two],
            [(148, 4), (150, 4), cellomusicmaker_two],
            [(150, 4), (153, 4), cellomusicmaker_two],
            [(155, 4), (159, 4), cellomusicmaker_two],
            [(162, 4), (164, 4), cellomusicmaker_two],
            [(168, 4), (171, 4), cellomusicmaker_two],
            [(173, 4), (175, 4), cellomusicmaker_two],
            [(175, 4), (177, 4), cellomusicmaker_two],
            [(180, 4), (182, 4), cellomusicmaker_two],
            [(186, 4), (190, 4), cellomusicmaker_two],
            [(190, 4), (191, 4), silence_maker],
        ]
    ]
)

voice_9_timespan_list = abjad.TimespanList(
    [
        abjad.AnnotatedTimespan(
            start_offset=start_offset,
            stop_offset=stop_offset,
            annotation=MusicSpecifier(music_maker=music_maker, voice_name="Voice 9"),
        )
        for start_offset, stop_offset, music_maker in [
            [(9, 4), (10, 4), cellomusicmaker_three],
            [(15, 4), (18, 4), cellomusicmaker_three],
            [(22, 4), (25, 4), cellomusicmaker_three],
            [(27, 4), (30, 4), cellomusicmaker_three],
            [(30, 4), (32, 4), cellomusicmaker_three],
            [(35, 4), (39, 4), cellomusicmaker_three],
            [(42, 4), (43, 4), cellomusicmaker_three],
            [(43, 4), (44, 4), cellomusicmaker_three],
            [(45, 4), (46, 4), cellomusicmaker_three],
            [(46, 4), (50, 4), cellomusicmaker_three],
            [(54, 4), (57, 4), cellomusicmaker_three],
            [(59, 4), (60, 4), cellomusicmaker_three],
            [(65, 4), (67, 4), cellomusicmaker_three],
            [(67, 4), (69, 4), cellomusicmaker_three],
            [(70, 4), (72, 4), cellomusicmaker_three],
            [(72, 4), (75, 4), cellomusicmaker_three],
            [(76, 4), (78, 4), cellomusicmaker_three],
            [(81, 4), (82, 4), cellomusicmaker_three],
            [(82, 4), (85, 4), cellomusicmaker_three],
            [(90, 4), (91, 4), cellomusicmaker_three],
            [(93, 4), (94, 4), cellomusicmaker_three],
            [(94, 4), (96, 4), cellomusicmaker_three],
            [(100, 4), (104, 4), cellomusicmaker_three],
            [(104, 4), (105, 4), cellomusicmaker_three],
            [(106, 4), (107, 4), cellomusicmaker_three],
            [(107, 4), (108, 4), cellomusicmaker_three],
            [(111, 4), (114, 4), cellomusicmaker_three],
            [(114, 4), (115, 4), cellomusicmaker_three],
            [(116, 4), (119, 4), cellomusicmaker_three],
            [(119, 4), (120, 4), cellomusicmaker_three],
            [(121, 4), (123, 4), cellomusicmaker_three],
            [(123, 4), (125, 4), cellomusicmaker_three],
            [(126, 4), (131, 4), cellomusicmaker_three],
            [(131, 4), (133, 4), cellomusicmaker_three],
            [(136, 4), (141, 4), cellomusicmaker_three],
            [(148, 4), (150, 4), cellomusicmaker_three],
            [(150, 4), (153, 4), cellomusicmaker_three],
            [(155, 4), (159, 4), cellomusicmaker_three],
            [(162, 4), (164, 4), cellomusicmaker_three],
            [(168, 4), (171, 4), cellomusicmaker_three],
            [(173, 4), (175, 4), cellomusicmaker_three],
            [(175, 4), (177, 4), cellomusicmaker_three],
            [(180, 4), (182, 4), cellomusicmaker_three],
            [(186, 4), (190, 4), cellomusicmaker_three],
            [(190, 4), (191, 4), silence_maker],
        ]
    ]
)

all_timespan_lists = {
    "Voice 1": voice_1_timespan_list,
    "Voice 2": voice_2_timespan_list,
    "Voice 3": voice_3_timespan_list,
    "Voice 4": voice_4_timespan_list,
    "Voice 5": voice_5_timespan_list,
    "Voice 6": voice_6_timespan_list,
    "Voice 7": voice_7_timespan_list,
    "Voice 8": voice_8_timespan_list,
    "Voice 9": voice_9_timespan_list,
    "Voice 10": voice_10_timespan_list,
    "Voice 11": voice_11_timespan_list,
    "Voice 12": voice_12_timespan_list,
}

# Determine the "global" timespan of all voices combined:

global_timespan = abjad.Timespan(
    start_offset=0, stop_offset=max(_.stop_offset for _ in all_timespan_lists.values())
)

# Using the global timespan, create silence timespans for each timespan list.
# We don't need to create any silences by-hand if we now the global start and
# stop offsets of all voices combined:

for voice_name, timespan_list in all_timespan_lists.items():
    # Here is another technique for finding where the silence timespans are. We
    # create a new timespan list consisting of the global timespan and all the
    # timespans from our current per-voice timespan list. Then we compute an
    # in-place logical XOR. The XOR will replace the contents of the "silences"
    # timespan list with a set of timespans representing those periods of time
    # where only one timespan from the original was present. This has the
    # effect of cutting out holes from the global timespan wherever a per-voice
    # timespan was found, but also preserves any silence before the first
    # per-voice timespan or after the last per-voice timespan. Then we merge
    # the newly-created silences back into the per-voice timespan list.
    silences = abjad.TimespanList([global_timespan])
    silences.extend(timespan_list)
    silences.sort()
    silences.compute_logical_xor()
    # Add the silences into the voice timespan list. We create new *annotated*
    # timespans so we can maintain the voice name information:
    for silence_timespan in silences:
        timespan_list.append(
            abjad.AnnotatedTimespan(
                start_offset=silence_timespan.start_offset,
                stop_offset=silence_timespan.stop_offset,
                annotation=MusicSpecifier(music_maker=None, voice_name=voice_name),
            )
        )
    timespan_list.sort()

# Split the timespan list via the time signatures and collect the shards into a
# new timespan list

for voice_name, timespan_list in all_timespan_lists.items():
    shards = timespan_list.split_at_offsets(bounds)
    split_timespan_list = abjad.TimespanList()
    for shard in shards:
        split_timespan_list.extend(shard)
    split_timespan_list.sort()
    # We can replace the original timespan list in the dictionary of
    # timespan lists because we know the key it was stored at (its voice
    # name):
    all_timespan_lists[voice_name] = timespan_list

# Create a score structure

score = abjad.Score(
    [
        abjad.Staff(lilypond_type="TimeSignatureContext", name="TimeSignatureContext1"),
        abjad.StaffGroup(
            [
                abjad.Staff(
                    [abjad.Voice(name="Voice 1")],
                    name="violin_string_staff",
                    lilypond_type="StringStaff",
                ),
                abjad.Staff(
                    [abjad.Voice(name="Voice 2")],
                    name="violin_bow_staff",
                    lilypond_type="BowStaff",
                ),
                abjad.Staff(
                    [abjad.Voice(name="Voice 3")],
                    name="violin_beam_staff",
                    lilypond_type="BeamStaff",
                ),
                abjad.Staff(
                    [abjad.Voice(name="Voice 4")],
                    name="violin_lh_staff",
                    lilypond_type="Staff",
                ),
            ],
            name="violin",
        ),
        abjad.Staff(lilypond_type="TimeSignatureContext", name="TimeSignatureContext2"),
        abjad.StaffGroup(
            [
                abjad.Staff(
                    [abjad.Voice(name="Voice 5")],
                    name="viola_string_staff",
                    lilypond_type="StringStaff",
                ),
                abjad.Staff(
                    [abjad.Voice(name="Voice 6")],
                    name="viola_bow_staff",
                    lilypond_type="BowStaff",
                ),
                abjad.Staff(
                    [abjad.Voice(name="Voice 7")],
                    name="viola_beam_staff",
                    lilypond_type="BeamStaff",
                ),
                abjad.Staff(
                    [abjad.Voice(name="Voice 8")],
                    name="viola_lh_staff",
                    lilypond_type="Staff",
                ),
            ],
            name="viola",
        ),
        abjad.Staff(lilypond_type="TimeSignatureContext", name="TimeSignatureContext3"),
        abjad.StaffGroup(
            [
                abjad.Staff(
                    [abjad.Voice(name="Voice 9")],
                    name="cello_string_staff",
                    lilypond_type="StringStaff",
                ),
                abjad.Staff(
                    [abjad.Voice(name="Voice 10")],
                    name="cello_bow_staff",
                    lilypond_type="BowStaff",
                ),
                abjad.Staff(
                    [abjad.Voice(name="Voice 11")],
                    name="cello_beam_staff",
                    lilypond_type="BeamStaff",
                ),
                abjad.Staff(
                    [abjad.Voice(name="Voice 12")],
                    name="cello_lh_staff",
                    lilypond_type="Staff",
                ),
            ],
            name="cello",
        ),
    ],
    name="Adumbration Score",
)

# Teach each of the staves how to draw analysis brackets

# for staff in score['Staff Group']:
#     staff.consists_commands.append('Horizontal_bracket_engraver')

# Add skips and time signatures to the TimeSignature

for time_signature in time_signatures:
    skip = abjad.Skip(1, multiplier=(time_signature))
    abjad.attach(time_signature, skip)
    score["TimeSignatureContext1"].append(skip)

for time_signature in time_signatures:
    skip = abjad.Skip(1, multiplier=(time_signature))
    abjad.attach(time_signature, skip)
    score["TimeSignatureContext2"].append(skip)

for time_signature in time_signatures:
    skip = abjad.Skip(1, multiplier=(time_signature))
    abjad.attach(time_signature, skip)
    score["TimeSignatureContext3"].append(skip)

# Define a helper function that takes a rhythm maker and some durations and
# outputs a container. This helper function also adds LilyPond analysis
# brackets to make it clearer where the phrase and sub-phrase boundaries are.

print("Making containers ...")


def make_container(music_maker, durations):
    selections = music_maker(durations)
    container = abjad.Container([])
    container.extend(selections)
    return container


# Loop over the timespan list dictionaries, spitting out pairs of voice
# names and per-voice timespan lists. Group timespans into phrases, with
# all timespans in each phrase having an identical rhythm maker. Run the
# rhythm maker against the durations of the timespans in the phrase and
# add the output to the voice with the timespan lists's voice name.


def key_function(timespan):
    """
    Get the timespan's annotation's rhythm-maker.
    If the annotation's rhythm-maker is None, return the silence maker.
    """
    return timespan.annotation.music_maker or silence_maker


for voice_name, timespan_list in all_timespan_lists.items():
    for music_maker, grouper in itertools.groupby(timespan_list, key=key_function):
        # We know the voice name of each timespan because a) the timespan
        # list is in a dictionary, associated with that voice name and b)
        # each timespan's annotation is a MusicSpecifier instance which
        # knows the name of the voice the timespan should be used for.
        # This double-reference to the voice is redundant here, but in a
        # different implementation we could put *all* the timespans into
        # one timespan list, split them, whatever, and still know which
        # voice they belong to because their annotation records that
        # information.
        durations = [timespan.duration for timespan in grouper]
        container = make_container(music_maker, durations)
        voice = score[voice_name]
        voice.append(container)

print("Splitting and rewriting ...")

# split and rewite meters
for voice in abjad.iterate(score["Staff Group 1"]).components(abjad.Voice):
    for i, shard in enumerate(abjad.mutate(voice[:]).split(time_signatures)):
        time_signature = time_signatures[i]
        abjad.mutate(shard).rewrite_meter(time_signature)

for voice in abjad.iterate(score["Staff Group 2"]).components(abjad.Voice):
    for i, shard in enumerate(abjad.mutate(voice[:]).split(time_signatures)):
        time_signature = time_signatures[i]
        abjad.mutate(shard).rewrite_meter(time_signature)

for voice in abjad.iterate(score["Staff Group 3"]).components(abjad.Voice):
    for i, shard in enumerate(abjad.mutate(voice[:]).split(time_signatures)):
        time_signature = time_signatures[i]
        abjad.mutate(shard).rewrite_meter(time_signature)

print("Beaming runs ...")

for voice in abjad.select(score).components(abjad.Voice):
    for run in abjad.select(voice).runs():
        if 1 < len(run):
            # use a beam_specifier to remove beam indicators from run
            specifier = abjadext.rmakers.BeamSpecifier(beam_each_division=False)
            specifier(run)
            # then attach new indicators at the 0 and -1 of run
            abjad.attach(abjad.StartBeam(), run[0])
            abjad.attach(abjad.StopBeam(), run[-1])
            for leaf in run:
                # continue if leaf can't be beamed
                if abjad.Duration(1, 4) <= leaf.written_duration:
                    continue
                previous_leaf = abjad.inspect(leaf).leaf(-1)
                next_leaf = abjad.inspect(leaf).leaf(1)
                # if next leaf is quarter note (or greater) ...
                if (
                    isinstance(next_leaf, (abjad.Chord, abjad.Note))
                    and abjad.Duration(1, 4) <= next_leaf.written_duration
                ):
                    left = previous_leaf.written_duration.flag_count
                    right = leaf.written_duration.flag_count  # right-pointing nib
                    beam_count = abjad.BeamCount(left=left, right=right)
                    abjad.attach(beam_count, leaf)
                    continue
                # if previous leaf is quarter note (or greater) ...
                if (
                    isinstance(previous_leaf, (abjad.Chord, abjad.Note))
                    and abjad.Duration(1, 4) <= previous_leaf.written_duration
                ):
                    left = leaf.written_duration.flag_count  # left-pointing nib
                    right = next_leaf.written_duration.flag_count
                    beam_count = abjad.BeamCount(left=left, right=right)
                    abjad.attach(beam_count, leaf)

print("Stopping Hairpins ...")
for staff in abjad.iterate(score["Staff Group 1"]).components(abjad.Staff):
    for rest in abjad.iterate(staff).components(abjad.Rest):
        previous_leaf = abjad.inspect(rest).leaf(-1)
        if isinstance(previous_leaf, abjad.Note):
            abjad.attach(abjad.StopHairpin(), rest)
        elif isinstance(previous_leaf, abjad.Chord):
            abjad.attach(abjad.StopHairpin(), rest)
        elif isinstance(previous_leaf, abjad.Rest):
            pass

for staff in abjad.iterate(score["Staff Group 2"]).components(abjad.Staff):
    for rest in abjad.iterate(staff).components(abjad.Rest):
        previous_leaf = abjad.inspect(rest).leaf(-1)
        if isinstance(previous_leaf, abjad.Note):
            abjad.attach(abjad.StopHairpin(), rest)
        elif isinstance(previous_leaf, abjad.Chord):
            abjad.attach(abjad.StopHairpin(), rest)
        elif isinstance(previous_leaf, abjad.Rest):
            pass

for staff in abjad.iterate(score["Staff Group 3"]).components(abjad.Staff):
    for rest in abjad.iterate(staff).components(abjad.Rest):
        previous_leaf = abjad.inspect(rest).leaf(-1)
        if isinstance(previous_leaf, abjad.Note):
            abjad.attach(abjad.StopHairpin(), rest)
        elif isinstance(previous_leaf, abjad.Chord):
            abjad.attach(abjad.StopHairpin(), rest)
        elif isinstance(previous_leaf, abjad.Rest):
            pass

# Make pitches
print("Adding pitch material ...")


def cyc(lst):
    count = 0
    while True:
        yield lst[count % len(lst)]
        count += 1


# attach instruments and clefs

print("Adding attachments ...")
bar_line = abjad.BarLine("||")
metro = abjad.MetronomeMark((1, 4), 80)
markup1 = abjad.Markup(r"\bold { C }")
mark1 = abjad.RehearsalMark(markup=markup1)

instruments1 = cyc([abjad.Violin(), abjad.Violin(), abjad.Violin(), abjad.Violin()])

instruments2 = cyc([abjad.Viola(), abjad.Viola(), abjad.Viola(), abjad.Viola()])

instruments3 = cyc([abjad.Cello(), abjad.Cello(), abjad.Cello(), abjad.Cello()])

clefs1 = cyc(
    [
        abjad.Clef("treble"),
        abjad.Clef("treble"),
        abjad.Clef("treble"),
        abjad.Clef("treble"),
    ]
)

clefs2 = cyc(
    [
        abjad.Clef("treble"),
        abjad.Clef("treble"),
        abjad.Clef("treble"),
        abjad.Clef("alto"),
    ]
)

clefs3 = cyc(
    [
        abjad.Clef("treble"),
        abjad.Clef("treble"),
        abjad.Clef("treble"),
        abjad.Clef("bass"),
    ]
)

abbreviations1 = cyc(
    [
        abjad.MarginMarkup(markup=abjad.Markup("")),
        abjad.MarginMarkup(markup=abjad.Markup("")),
        abjad.MarginMarkup(markup=abjad.Markup("vln.")),
        abjad.MarginMarkup(markup=abjad.Markup("")),
    ]
)

abbreviations2 = cyc(
    [
        abjad.MarginMarkup(markup=abjad.Markup("")),
        abjad.MarginMarkup(markup=abjad.Markup("")),
        abjad.MarginMarkup(markup=abjad.Markup("vla.")),
        abjad.MarginMarkup(markup=abjad.Markup("")),
    ]
)

abbreviations3 = cyc(
    [
        abjad.MarginMarkup(markup=abjad.Markup("")),
        abjad.MarginMarkup(markup=abjad.Markup("")),
        abjad.MarginMarkup(markup=abjad.Markup("vc.")),
        abjad.MarginMarkup(markup=abjad.Markup("")),
    ]
)

names1 = cyc(
    [
        abjad.StartMarkup(markup=abjad.Markup("")),
        abjad.StartMarkup(markup=abjad.Markup("")),
        abjad.StartMarkup(markup=abjad.Markup("Violin")),
        abjad.StartMarkup(markup=abjad.Markup("")),
    ]
)

names2 = cyc(
    [
        abjad.StartMarkup(markup=abjad.Markup("")),
        abjad.StartMarkup(markup=abjad.Markup("")),
        abjad.StartMarkup(markup=abjad.Markup("Viola")),
        abjad.StartMarkup(markup=abjad.Markup("")),
    ]
)

names3 = cyc(
    [
        abjad.StartMarkup(markup=abjad.Markup("")),
        abjad.StartMarkup(markup=abjad.Markup("")),
        abjad.StartMarkup(markup=abjad.Markup("Violoncello")),
        abjad.StartMarkup(markup=abjad.Markup("")),
    ]
)

for staff in abjad.iterate(score["Staff Group 1"]).components(abjad.Staff):
    leaf1 = abjad.select(staff).leaves()[0]
    abjad.attach(next(instruments1), leaf1)
    abjad.attach(next(abbreviations1), leaf1)
    abjad.attach(next(names1), leaf1)
    abjad.attach(next(clefs1), leaf1)

for staff in abjad.iterate(score["Staff Group 2"]).components(abjad.Staff):
    leaf1 = abjad.select(staff).leaves()[0]
    abjad.attach(next(instruments2), leaf1)
    abjad.attach(next(abbreviations2), leaf1)
    abjad.attach(next(names2), leaf1)
    abjad.attach(next(clefs2), leaf1)

for staff in abjad.iterate(score["Staff Group 3"]).components(abjad.Staff):
    leaf1 = abjad.select(staff).leaves()[0]
    abjad.attach(next(instruments3), leaf1)
    abjad.attach(next(abbreviations3), leaf1)
    abjad.attach(next(names3), leaf1)
    abjad.attach(next(clefs3), leaf1)

for staff in abjad.select(score["Staff Group 1"]).components(abjad.Staff)[0]:
    leaf1 = abjad.select(staff).leaves()[0]
    last_leaf = abjad.select(staff).leaves()[-1]
    abjad.attach(metro, leaf1)
    abjad.attach(bar_line, last_leaf)

for staff in abjad.select(score["Staff Group 2"]).components(abjad.Staff)[0]:
    leaf1 = abjad.select(staff).leaves()[0]
    last_leaf = abjad.select(staff).leaves()[-1]
    abjad.attach(metro, leaf1)
    abjad.attach(bar_line, last_leaf)

for staff in abjad.select(score["Staff Group 3"]).components(abjad.Staff)[0]:
    leaf1 = abjad.select(staff).leaves()[0]
    last_leaf = abjad.select(staff).leaves()[-1]
    abjad.attach(metro, leaf1)
    abjad.attach(bar_line, last_leaf)

for staff in abjad.iterate(score["TimeSignatureContext1"]).components(abjad.Staff):
    leaf1 = abjad.select(staff).leaves()[7]
    abjad.attach(mark1, leaf1)

for staff in abjad.iterate(score["TimeSignatureContext2"]).components(abjad.Staff):
    leaf1 = abjad.select(staff).leaves()[7]
    abjad.attach(mark1, leaf1)

for staff in abjad.iterate(score["TimeSignatureContext3"]).components(abjad.Staff):
    leaf1 = abjad.select(staff).leaves()[7]
    abjad.attach(mark1, leaf1)

# Make a lilypond file and show it:

score_file = abjad.LilyPondFile.new(
    score,
    includes=[
        "internal_stylesheet.ily",
        "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily",
    ],
)

abjad.SegmentMaker.comment_measure_numbers(score)
# ##################

directory = "/Users/evansdsg2/Scores/trio/Segments/Segment_A"
pdf_path = f"{directory}/Segment_A.pdf"
path = pathlib.Path("Segment_A.pdf")
if path.exists():
    print(f"Removing {pdf_path} ...")
    path.unlink()
time_1 = time.time()
print(f"Persisting {pdf_path} ...")
result = abjad.persist(score_file).as_pdf(pdf_path)
print(result[0])
print(result[1])
print(result[2])
success = result[3]
if success is False:
    print("LilyPond failed!")
time_2 = time.time()
total_time = time_2 - time_1
print(f"Total time: {total_time} seconds")
if path.exists():
    print(f"Opening {pdf_path} ...")
    os.system(f"open {pdf_path}")

# for staff in abjad.iterate(score['Staff Group']).components(abjad.Staff):
#     abjad.show(staff)
# abjad.show(score)
# abjad.play(score)
