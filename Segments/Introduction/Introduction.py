
################################################################################
################################## IMPORTS #####################################
################################################################################

import abjad
import os
import pathlib
import random
import time
from EvenDivisionMusicMaker import EvenDivisionMusicMaker
from NoteMusicMaker import NoteMusicMaker
from TaleaMusicMaker import TaleaMusicMaker
from TupletMusicMaker import TupletMusicMaker

################################################################################
############################## Print  Statemet #################################
################################################################################

print('Interpreting file ...')

################################################################################
############################### MAKE PITCHES ###################################
################################################################################

                            ###################
                            ######## 1 ########
                            ###################

###################
##### violin ######
###################

random.seed(1)
violin_random_walk_1 = list()
violin_random_walk_1.append(-1 if random.random() < 0.5 else 1)
for i in range(1, 6):
    movement = -1 if random.random() < 0.5 else 1
    value = violin_random_walk_1[i-1] + movement
    violin_random_walk_1.append(value)

# violin_notes_1 = [(x / 4.0) for x in violin_random_walk_1]
violin_notes_1 = [(x / 2.0) for x in violin_random_walk_1]

###################
###### viola ######
###################

random.seed(2)
viola_random_walk_1 = list()
viola_random_walk_1.append(-1 if random.random() < 0.5 else 1)
for i in range(1, 6):
    movement = -1 if random.random() < 0.5 else 1
    value = viola_random_walk_1[i-1] + movement
    viola_random_walk_1.append(value)

# viola_notes_1 = [((x / 4.0) - 6) for x in viola_random_walk_1]
viola_notes_1 = [((x / 2.0) - 6) for x in viola_random_walk_1]

###################
###### cello ######
###################

random.seed(3)
cello_random_walk_1 = list()
cello_random_walk_1.append(-1 if random.random() < 0.5 else 1)
for i in range(1, 6):
    movement = -1 if random.random() < 0.5 else 1
    value = cello_random_walk_1[i-1] + movement
    cello_random_walk_1.append(value)

# cello_notes_1 = [((x / 4.0) - 8) for x in cello_random_walk_1]
cello_notes_1 = [((x / 2.0) - 8) for x in cello_random_walk_1]

                            ###################
                            ######## 2 ########
                            ###################

###################
##### violin ######
###################

random.seed(4)
violin_random_walk_2 = list()
violin_random_walk_2.append(-1 if random.random() < 0.5 else 1)
for i in range(1, 6):
    movement = -1 if random.random() < 0.5 else 1
    value = violin_random_walk_2[i-1] + movement
    violin_random_walk_2.append(value)

# violin_notes_2 = [((x / 4.0) + 3) for x in violin_random_walk_2]
violin_notes_2 = [((x / 2.0) + 3) for x in violin_random_walk_2]

###################
###### viola ######
###################

random.seed(5)
viola_random_walk_2 = list()
viola_random_walk_2.append(-1 if random.random() < 0.5 else 1)
for i in range(1, 6):
    movement = -1 if random.random() < 0.5 else 1
    value = viola_random_walk_2[i-1] + movement
    viola_random_walk_2.append(value)

viola_notes_2 = [((x / 2.0) - 5) for x in viola_random_walk_2]

###################
###### cello ######
###################

random.seed(6)
cello_random_walk_2 = list()
cello_random_walk_2.append(-1 if random.random() < 0.5 else 1)
for i in range(1, 6):
    movement = -1 if random.random() < 0.5 else 1
    value = cello_random_walk_2[i-1] + movement
    cello_random_walk_2.append(value)

# cello_notes_2 = [((x / 4.0) - 12) for x in cello_random_walk_2]
cello_notes_2 = [((x / 2.0) - 12) for x in cello_random_walk_2]

                            ###################
                            ######## 3 ########
                            ###################

###################
##### violin ######
###################

random.seed(7)
violin_random_walk_3 = list()
violin_random_walk_3.append(-1 if random.random() < 0.5 else 1)
for i in range(1, 6):
    movement = -1 if random.random() < 0.5 else 1
    value = violin_random_walk_3[i-1] + movement
    violin_random_walk_3.append(value)

violin_notes_3 = [((x / 2.0) + 5) for x in violin_random_walk_3]

###################
###### viola ######
###################

random.seed(8)
viola_random_walk_3 = list()
viola_random_walk_3.append(-1 if random.random() < 0.5 else 1)
for i in range(1, 6):
    movement = -1 if random.random() < 0.5 else 1
    value = viola_random_walk_3[i-1] + movement
    viola_random_walk_3.append(value)

# viola_notes_3 = [((x / 4.0) - 2) for x in viola_random_walk_3]
viola_notes_3 = [((x / 2.0) - 2) for x in viola_random_walk_3]

###################
###### cello ######
###################

random.seed(9)
cello_random_walk_3 = list()
cello_random_walk_3.append(-1 if random.random() < 0.5 else 1)
for i in range(1, 6):
    movement = -1 if random.random() < 0.5 else 1
    value = cello_random_walk_3[i-1] + movement
    cello_random_walk_3.append(value)

# cello_notes_3 = [((x / 4.0) - 15) for x in cello_random_walk_3]
cello_notes_3 = [((x / 2.0) - 15) for x in cello_random_walk_3]

                            ###################
                            ######## 4 ########
                            ###################

###################
##### violin ######
###################

random.seed(10)
violin_random_walk_4 = list()
violin_random_walk_4.append(-1 if random.random() < 0.5 else 1)
for i in range(1, 6):
    movement = -1 if random.random() < 0.5 else 1
    value = violin_random_walk_4[i-1] + movement
    violin_random_walk_4.append(value)

violin_notes_4 = [((x / 2.0) + 7) for x in violin_random_walk_4]

###################
###### viola ######
###################

random.seed(11)
viola_random_walk_4 = list()
viola_random_walk_4.append(-1 if random.random() < 0.5 else 1)
for i in range(1, 6):
    movement = -1 if random.random() < 0.5 else 1
    value = viola_random_walk_4[i-1] + movement
    viola_random_walk_4.append(value)

viola_notes_4 = [((x / 2.0) - 8) for x in viola_random_walk_4]

###################
###### cello ######
###################

random.seed(12)
cello_random_walk_4 = list()
cello_random_walk_4.append(-1 if random.random() < 0.5 else 1)
for i in range(1, 6):
    movement = -1 if random.random() < 0.5 else 1
    value = cello_random_walk_4[i-1] + movement
    cello_random_walk_4.append(value)

# cello_notes_4 = [((x / 4.0) - 12) for x in cello_random_walk_4]
cello_notes_4 = [((x / 2.0) - 12) for x in cello_random_walk_4]

                            ###################
                            ######## 5 ########
                            ###################

###################
##### violin ######
###################

random.seed(13)
violin_random_walk_5 = list()
violin_random_walk_5.append(-1 if random.random() < 0.5 else 1)
for i in range(1, 6):
    movement = -1 if random.random() < 0.5 else 1
    value = violin_random_walk_5[i-1] + movement
    violin_random_walk_5.append(value)

# violin_notes_5 = [((x / 4.0) + 11) for x in violin_random_walk_5]
violin_notes_5 = [((x / 2.0) + 11) for x in violin_random_walk_5]

###################
###### viola ######
###################

random.seed(14)
viola_random_walk_5 = list()
viola_random_walk_5.append(-1 if random.random() < 0.5 else 1)
for i in range(1, 6):
    movement = -1 if random.random() < 0.5 else 1
    value = viola_random_walk_5[i-1] + movement
    viola_random_walk_5.append(value)

# viola_notes_5 = [((x / 4.0) - 6) for x in viola_random_walk_5]
viola_notes_5 = [((x / 2.0) - 6) for x in viola_random_walk_5]

###################
###### cello ######
###################

random.seed(15)
cello_random_walk_5 = list()
cello_random_walk_5.append(-1 if random.random() < 0.5 else 1)
for i in range(1, 6):
    movement = -1 if random.random() < 0.5 else 1
    value = cello_random_walk_5[i-1] + movement
    cello_random_walk_5.append(value)

cello_notes_5 = [((x / 2.0) - 8) for x in cello_random_walk_5]

################################################################################
################################## STAVES ######################################
################################################################################

###################
# time signatures #
###################

time_signature_staff_1 = abjad.Staff(lilypond_type='TimeSignatureContext')
time_signature_staff_2 = abjad.Staff(lilypond_type='TimeSignatureContext')
time_signature_staff_3 = abjad.Staff(lilypond_type='TimeSignatureContext')

###################
##### violin ######
###################

violin_string_staff = abjad.Staff(
    lilypond_type='StringStaff',
    name='violin_string_staff',
    )
violin_bow_staff = abjad.Staff(
    lilypond_type='BowStaff',
    name='violin_bow_staff',
    )
violin_bow_beam_staff = abjad.Staff(
    lilypond_type='BeamStaff',
    name='violin_beam_staff',
    )
violin_lh_staff = abjad.Staff(
    name='violin_lh_staff',
)

###################
###### viola ######
###################

viola_string_staff = abjad.Staff(
    lilypond_type='StringStaff',
    name='viola_string_staff',
    )
viola_bow_staff = abjad.Staff(
    lilypond_type='BowStaff',
    name='viola_bow_staff',
    )
viola_bow_beam_staff = abjad.Staff(
    lilypond_type='BeamStaff',
    name='viola_beam_staff',
    )
viola_lh_staff = abjad.Staff(
    name='viola_lh_staff',
)

###################
###### cello ######
###################

cello_string_staff = abjad.Staff(
    lilypond_type='StringStaff',
    name='cello_string_staff',
    )
cello_bow_staff = abjad.Staff(
    lilypond_type='BowStaff',
    name='cello_bow_staff',
    )
cello_bow_beam_staff = abjad.Staff(
    lilypond_type='BeamStaff',
    name='cello_beam_staff',
    )
cello_lh_staff = abjad.Staff(
    name='cello_lh_staff',
)

################### Time Signature Pairs

###################
# time signatures #
###################

time_signature_pairs_for_context = [(4, 4), (3, 4), (4, 4), (7, 8), (3, 4), (4, 4), (7, 8), (3, 4), (5, 8), (5, 4), (4, 4), (6, 8), (5, 8), (4, 4), (3, 4), (5, 4), (4, 4), (7, 8), (4, 4), (3, 4), (7, 8), (5, 4), (4, 4), ]

###################
##### violin ######
###################

violin_time_signature_pairs_1 = [(4, 4), (3, 4), (4, 4), (7, 8), (3, 4), ] # 5 MEASURES

violin_time_signature_pairs_2 = [(4, 4), (7, 8), (3, 4), (5, 8), ]         # 4 MEASURES

violin_time_signature_pairs_3 = [(5, 4), (4, 4), (6, 8), (5, 8), (4, 4), ] # 5 MEASURES

violin_time_signature_pairs_4 = [(3, 4), (5, 4), (4, 4), (7, 8), ]         # 4 MEASURES

violin_time_signature_pairs_5 = [(4, 4), (3, 4), (7, 8), (5, 4), (4, 4), ] # 5 MEASURES

###################
###### viola ######
###################

viola_time_signature_pairs_1 = [(4, 4), (3, 4), (4, 4), (7, 8), (3, 4), (4, 4),]# 6 MEASURES

viola_time_signature_pairs_2 = [(7, 8), (3, 4), (5, 8), ]                       # 3 MEASURES

viola_time_signature_pairs_3 = [(5, 4), (4, 4), (6, 8), (5, 8), (4, 4), ]       # 5 MEASURES

viola_time_signature_pairs_4 = [(3, 4), (5, 4), (4, 4), (7, 8), (4, 4), ]       # 5 MEASURES

viola_time_signature_pairs_5 = [(3, 4), (7, 8), (5, 4), (4, 4), ]               # 4 MEASURES

###################
###### cello ######
###################

cello_time_signature_pairs_1 = [(4, 4), (3, 4), (4, 4), (7, 8), (3, 4), (4, 4), (7, 8),] # 7 MEASURES

cello_time_signature_pairs_2 = [(3, 4), (5, 8), (5, 4), ]         # 3 MEASURES

cello_time_signature_pairs_3 = [(4, 4), (6, 8), (5, 8), (4, 4), ] # 4 MEASURES

cello_time_signature_pairs_4 = [(3, 4), (5, 4), (4, 4), (7, 8), (4, 4), (3, 4),]         # 6 MEASURES

cello_time_signature_pairs_5 = [(7, 8), (5, 4), (4, 4), ] # 3 MEASURES

################################################################################
############################## MUSIC MAKERS ####################################
############################### IN ACTION ######################################
################################################################################

###################
# time signatures #
###################

time_signature_maker = NoteMusicMaker(
    mask_indices = [0],
    mask_period = 1,
    pitches = [0],
    beams = False,
)

                                #########
                                ### 1 ###
                                #########

###################
##### violin ######
###################

violin_string_maker_1 = TaleaMusicMaker(
    counts=[2, 1, 3, 1, 2, 5, 4, 1, 4, 3, 5, 4, 2, 1, 5, 2, 3, 1, 1, 2],
    denominator=8,
    pitches=[0],
    clef='percussion',
    extra_counts_per_division=[0, 1, 0, 1, 0, 0, 3, 0, 1, 0, 0],
    mask_indices=[4],
    mask_period=5,
    beams=False,
    )
###
violin_bow_maker_1 = EvenDivisionMusicMaker(
    denominators=[16, 16, 8, 16, 8, 16, 4, 8],
    mask_indices=[4],
    mask_period=5,
    pitches=[0],
    clef='percussion',
    extra_counts_per_division=[1, 0, 0, 1, 1, 3, 0, 1, 0],
    beams=True,
    )
###
violin_bow_beam_maker_1 = EvenDivisionMusicMaker(
    denominators=[16, 16, 8, 16, 8, 16, 4, 8],
    mask_indices=[4],
    mask_period=5,
    pitches=[38],
    clef='percussion',
    extra_counts_per_division=[1, 0, 0, 1, 1, 3, 0, 1, 0],
    beams=True,
    )
###
violin_lh_maker_1 = NoteMusicMaker(
    mask_indices=[4],
    mask_period=5,
    pitches=violin_notes_1,
    beams=False,
    )

###################
###### viola ######
###################

viola_string_maker_1 = TupletMusicMaker(
    tuplet_ratio=[(3, 2), (5, 4), (2, 2, 2, 1, 4, 3), (2, 3), (4, 5), (1, 1, 5, 4), (1, 4, 5, 1)],
    mask_indices=[3],
    mask_period=4,
    pitches=[0],
    clef='percussion',
    beams=False,
)
###
viola_bow_maker_1 = EvenDivisionMusicMaker(
    denominators=[8, 16, 16, 16, 8, 16, 8, 4],
    mask_indices=[3],
    mask_period=4,
    pitches=[0],
    extra_counts_per_division=[0, 1, 3, 0, 2, 3, 0, 1, 0],
    clef='percussion',
    beams=True,
)
###
viola_bow_beam_maker_1 = EvenDivisionMusicMaker(
    denominators=[8, 16, 16, 16, 8, 16, 8, 4],
    mask_indices=[3],
    mask_period=4,
    pitches=[38],
    extra_counts_per_division=[0, 1, 3, 0, 2, 3, 0, 1, 0],
    clef='percussion',
    beams=True,
)
###
viola_lh_maker_1 = NoteMusicMaker(
    mask_indices=[3],
    mask_period=4,
    pitches=viola_notes_1,
    beams=False,
)

###################
###### cello ######
###################

cello_string_maker_1 = TaleaMusicMaker(
    counts=[1, 2, 1, 3, 5, 2, 4, 5, 3, 4, 1, 4, 5, 1, 2, 2, 1, 3, 1, 1, 1],
    denominator=8,
    pitches=[0],
    clef='percussion',
    extra_counts_per_division=[0, 1, 0, 1, 0, 0, 3, 0, 1, 0, 0],
    mask_indices=[1],
    mask_period=5,
    beams=False,
)
###
cello_bow_maker_1 = EvenDivisionMusicMaker(
    denominators=[16, 8, 16, 16, 8, 16, 4, 8],
    mask_indices=[1],
    mask_period=5,
    pitches=[0],
    extra_counts_per_division=[0, 1, 1, 0, 2, 3, 0, 1, 0],
    clef='percussion',
    beams=True,
)
###
cello_bow_beam_maker_1 = EvenDivisionMusicMaker(
    denominators=[16, 8, 16, 16, 8, 16, 4, 8],
    mask_indices=[1],
    mask_period=5,
    pitches=[38],
    extra_counts_per_division=[0, 1, 1, 0, 2, 3, 0, 1, 0],
    clef='percussion',
    beams=True,
)
###
cello_lh_maker_1 = NoteMusicMaker(
    mask_indices=[1],
    mask_period=5,
    pitches=cello_notes_1,
    beams=False,
)

                                #########
                                ### 2 ###
                                #########

###################
##### violin ######
###################

violin_string_maker_2 = TaleaMusicMaker(
    counts=[2, 2, 5, 3, 1, 1, 3, 1],
    denominator=8,
    pitches=[0],
    clef='percussion',
    extra_counts_per_division=[1, 0, 0, 1, 0, 3, 0, 0],
    mask_indices=[2],
    mask_period=5,
    beams=False,
)
###
violin_bow_maker_2 = EvenDivisionMusicMaker(
    denominators=[8, 16, 8, 16, 16, 4, 16, 16, 8],
    mask_indices=[2],
    mask_period=5,
    pitches=[0],
    extra_counts_per_division=[1, 1, 0, 1, 0, 3, 0, 1, 0],
    clef='percussion',
    beams=True,
)
###
violin_bow_beam_maker_2 = EvenDivisionMusicMaker(
    denominators=[8, 16, 8, 16, 16, 4, 16, 16, 8],
    mask_indices=[2],
    mask_period=5,
    pitches=[38],
    extra_counts_per_division=[1, 1, 0, 1, 0, 3, 0, 1, 0],
    clef='percussion',
    beams=True,
)
###
violin_lh_maker_2 = TupletMusicMaker(
    tuplet_ratio=[(2, 3), (3, 2, 1, 2, 4, 2), (5, 4), (3, 2), (4, 5), (1, 5, 4, 1), (4, 1, 5, 1), ],
    mask_indices=[2],
    mask_period=5,
    pitches=violin_notes_2,
    clef='treble',
    beams=True,
)

###################
###### viola ######
###################

viola_string_maker_2 = TaleaMusicMaker(
    counts=[1, 1, 2, 4, 6, 1, 1, 1, 2, 1, 6, 2, 3, 1, 1, 2],
    denominator=16,
    pitches=[0],
    clef='percussion',
    extra_counts_per_division=[0, 0, 1, 0, 3, 0, 0, 1, 0, 1, 0],
    mask_indices=[1],
    mask_period=3,
    beams=False,
)
###
viola_bow_maker_2 = EvenDivisionMusicMaker(
    denominators=[16, 16, 32, 16, 8, 16, 4, 8],
    mask_indices=[1],
    mask_period=3,
    pitches=[0],
    extra_counts_per_division=[0, 1, 0, 0, 2, 3, 0, 1, 0],
    clef='percussion',
    beams=True,
)
###
viola_bow_beam_maker_2 = EvenDivisionMusicMaker(
    denominators=[16, 16, 32, 16, 8, 16, 4, 8],
    mask_indices=[1],
    mask_period=3,
    pitches=[38],
    extra_counts_per_division=[0, 1, 0, 0, 2, 3, 0, 1, 0],
    clef='percussion',
    beams=True,
)
###
viola_lh_maker_2 = NoteMusicMaker(
    mask_indices=[1],
    mask_period=3,
    pitches=viola_notes_2,
    beams=False,
)

###################
###### cello ######
###################

cello_string_maker_2 = TaleaMusicMaker(
    counts=[1, 1, 1, 3, 1, 2, 5, 4, 1, 1, 1, 3, 1, 1, 2, 1, 6, 2, 3, 1, 1, 2],
    denominator=16,
    pitches=[0],
    clef='percussion',
    extra_counts_per_division=[0, 1, 0, 1, 0, 0, 3, 0, 1, 0, 0],
    mask_indices=[0],
    mask_period=4,
    beams=False,
)
###
cello_bow_maker_2 = EvenDivisionMusicMaker(
    denominators=[16, 16, 32, 16, 8, 16, 4, 8],
    mask_indices=[0],
    mask_period=4,
    pitches=[0],
    extra_counts_per_division=[0, 1, 0, 0, 2, 3, 0, 1, 0],
    clef='percussion',
    beams=True,
)
###
cello_bow_beam_maker_2 = EvenDivisionMusicMaker(
    denominators=[16, 16, 32, 16, 8, 16, 4, 8],
    mask_indices=[0],
    mask_period=4,
    pitches=[38],
    extra_counts_per_division=[0, 1, 0, 0, 2, 3, 0, 1, 0],
    clef='percussion',
    beams=True,
)
###
cello_lh_maker_2 = TupletMusicMaker(
    tuplet_ratio=[(3, 3, 3, 1), (5, 6), (4, 3, 2, 1), (2, 4, 3), ],
    mask_indices=[0],
    mask_period=4,
    pitches=cello_notes_2,
    clef='bass',
    beams=True,
)

                                #########
                                ### 3 ###
                                #########

###################
##### violin ######
###################

violin_string_maker_3 = TupletMusicMaker(
    tuplet_ratio=[(3, 5), (5, 4), (4, 1), (3, 4, 2), ],
    mask_indices=[2],
    mask_period=6,
    pitches=[0],
    clef='percussion',
    beams=False,
)
###
violin_bow_maker_3 = EvenDivisionMusicMaker(
    denominators=[16, 32, 16, 16, 8, 4, 16, 8],
    mask_indices=[2],
    mask_period=6,
    pitches=[0],
    extra_counts_per_division=[1, 0, 1, 3, 2, 0, 0, 1, 0],
    clef='percussion',
    beams=True,
)
###
violin_bow_beam_maker_3 = EvenDivisionMusicMaker(
    denominators=[16, 32, 16, 16, 8, 4, 16, 8],
    mask_indices=[2],
    mask_period=6,
    pitches=[38],
    extra_counts_per_division=[1, 0, 1, 3, 2, 0, 0, 1, 0],
    clef='percussion',
    beams=True,
)
###
violin_lh_maker_3 = NoteMusicMaker(
    mask_indices=[2],
    mask_period=6,
    pitches=violin_notes_3,
    beams=False,
)

###################
###### viola ######
###################

viola_string_maker_3 = TaleaMusicMaker(
    counts=[1, 1, 1, 3, 1, 2, 5, 4, 1, 1, 1, 3, 1, 1, 2, 1, 6, 2, 3, 1, 1, 2],
    denominator=16,
    pitches=[0],
    clef='percussion',
    extra_counts_per_division=[0, 1, 0, 1, 0, 0, 3, 0, 1, 0, 0],
    mask_indices=[1],
    mask_period=5,
    beams=False,
)
###
viola_bow_maker_3 = EvenDivisionMusicMaker(
    denominators=[8, 16, 16, 4, 8, 16, 4, 8],
    mask_indices=[1],
    mask_period=5,
    pitches=[0],
    extra_counts_per_division=[0, 1, 0, 0, 2, 3, 0, 1, 0],
    clef='percussion',
    beams=True,
)
###
viola_bow_beam_maker_3 = EvenDivisionMusicMaker(
    denominators=[8, 16, 16, 4, 8, 16, 4, 8],
    mask_indices=[1],
    mask_period=5,
    pitches=[38],
    extra_counts_per_division=[0, 1, 0, 0, 2, 3, 0, 1, 0],
    clef='percussion',
    beams=True,
)
###
viola_lh_maker_3 = NoteMusicMaker(
    mask_indices=[1],
    mask_period=5,
    pitches=viola_notes_3,
    beams=False,
)

###################
###### cello ######
###################

cello_string_maker_3 = TaleaMusicMaker(
    counts=[4, 3, 5, 2, 6, 1, 2, 3],
    denominator=16,
    pitches=[0],
    clef='percussion',
    extra_counts_per_division=[1, 0, 1, 0, 0, 1, 0],
    mask_indices=[0],
    mask_period=2,
    beams=False,
)
###
cello_bow_maker_3 = EvenDivisionMusicMaker(
    denominators=[16, 16, 32, 16, 8, 16, 4, 8],
    mask_indices=[0],
    mask_period=2,
    pitches=[0],
    extra_counts_per_division=[0, 1, 0, 0, 2, 3, 0, 1, 0],
    clef='percussion',
    beams=True,
)
###
cello_bow_beam_maker_3 = EvenDivisionMusicMaker(
    denominators=[16, 16, 32, 16, 8, 16, 4, 8],
    mask_indices=[0],
    mask_period=2,
    pitches=[38],
    extra_counts_per_division=[0, 1, 0, 0, 2, 3, 0, 1, 0],
    clef='percussion',
    beams=True,
)
###
cello_lh_maker_3 = NoteMusicMaker(
    mask_indices=[0],
    mask_period=2,
    pitches=cello_notes_3,
    beams=False,
)

                                #########
                                ### 4 ###
                                #########

###################
##### violin ######
###################

violin_string_maker_4 = TaleaMusicMaker(
    counts=[2, 5, 4, 1, 1, 1, 3, 1, ],
    denominator=16,
    pitches=[0],
    clef='percussion',
    extra_counts_per_division=[0, 1, 0, 1, 0, 0, 3, 0, 1, 0, 0],
    mask_indices=[2],
    mask_period=6,
    beams=False,
)
###
violin_bow_maker_4 = TaleaMusicMaker(
    counts=[ 1, 2, 1, 6, 2, 3, 1, 1, 2],
    denominator=16,
    pitches=[0],
    clef='percussion',
    extra_counts_per_division=[0, 1, 0, 0, 1, 1, 0],
    mask_indices=[2],
    mask_period=6,
    beams=False,
)
###
violin_bow_beam_maker_4 = TaleaMusicMaker(
    counts=[ 1, 2, 1, 6, 2, 3, 1, 1, 2],
    denominator=16,
    pitches=[38],
    clef='percussion',
    extra_counts_per_division=[0, 1, 0, 0, 1, 1, 0],
    mask_indices=[2],
    mask_period=6,
    beams=True,
)
###
violin_lh_maker_4 = NoteMusicMaker(
    mask_indices=[2],
    mask_period=6,
    pitches=violin_notes_4,
    beams=False,
)

###################
###### viola ######
###################

viola_string_maker_4 = TaleaMusicMaker(
    counts=[1, 1, 1, 3, 1, 2, 5, 4, 1, 1, 1, 3, 1, 1, 2, 1, 6, 2, 3, 1, 1, 2],
    denominator=16,
    pitches=[0],
    clef='percussion',
    extra_counts_per_division=[0, 1, 0, 1, 0, 0, 3, 0, 1, 0, 0],
    mask_indices=[1],
    mask_period=3,
    beams=False,
)
###
viola_bow_maker_4 = EvenDivisionMusicMaker(
    denominators=[16, 16, 8, 16, 4, 8],
    mask_indices=[1],
    mask_period=3,
    pitches=[0],
    extra_counts_per_division=[0, 1, 0, 0, 2, 3, 0, 1, 0],
    clef='percussion',
    beams=True,
)
###
viola_bow_beam_maker_4 = EvenDivisionMusicMaker(
    denominators=[16, 16, 8, 16, 4, 8],
    mask_indices=[1],
    mask_period=3,
    pitches=[38],
    extra_counts_per_division=[0, 1, 0, 0, 2, 3, 0, 1, 0],
    clef='percussion',
    beams=True,
)
###
viola_lh_maker_4 = NoteMusicMaker(
    mask_indices=[1],
    mask_period=3,
    pitches=viola_notes_4,
    beams=False,
)

###################
###### cello ######
###################

cello_string_maker_4 = TaleaMusicMaker(
    counts=[1, 1, 1, 3, 1, 2, 5, 4, 1, 1, 1, 3, 1, 1, 2, 1, 6, 2, 3, 1, 1, 2],
    denominator=16,
    pitches=[0],
    clef='percussion',
    extra_counts_per_division=[0, 1, 0, 1, 0, 0, 3, 0, 1, 0, 0],
    mask_indices=[-1],
    mask_period=4,
    beams=False,
)
###
cello_bow_maker_4 = EvenDivisionMusicMaker(
    denominators=[16, 16, 32, 16, 8, 16, 4, 8],
    mask_indices=[-1],
    mask_period=4,
    pitches=[0],
    extra_counts_per_division=[0, 1, 0, 0, 2, 3, 0, 1, 0],
    clef='percussion',
    beams=True,
)
###
cello_bow_beam_maker_4 = EvenDivisionMusicMaker(
    denominators=[16, 16, 32, 16, 8, 16, 4, 8],
    mask_indices=[-1],
    mask_period=4,
    pitches=[38],
    extra_counts_per_division=[0, 1, 0, 0, 2, 3, 0, 1, 0],
    clef='percussion',
    beams=True,
)
###
cello_lh_maker_4 = NoteMusicMaker(
    mask_indices=[-1],
    mask_period=4,
    pitches=cello_notes_4,
    beams=False,
)

                                #########
                                ### 5 ###
                                #########

###################
##### violin ######
###################

violin_string_maker_5 = TaleaMusicMaker(
    counts=[1, 1, 1, 3, 1, 2, 5, 4, 1, 1, 1, 3, 1, 1, 2, 1, 6, 2, -3, 1, 1, 2],
    denominator=16,
    pitches=[0],
    clef='percussion',
    extra_counts_per_division=[0, 1, 0, 1, 0, 0, 3, 0, 1, 0, 0],
    mask_indices=[2],
    mask_period=5,
    beams=False,
)
###
violin_bow_maker_5 = EvenDivisionMusicMaker(
    denominators=[16, 16, 32, 16, 8, 16, 4, 8],
    mask_indices=[2],
    mask_period=5,
    pitches=[0],
    extra_counts_per_division=[0, 1, 0, 0, 2, 3, 0, 1, 0],
    clef='percussion',
    beams=True,
)
###
violin_bow_beam_maker_5 = EvenDivisionMusicMaker(
    denominators=[16, 16, 32, 16, 8, 16, 4, 8],
    mask_indices=[2],
    mask_period=5,
    pitches=[38],
    extra_counts_per_division=[0, 1, 0, 0, 2, 3, 0, 1, 0],
    clef='percussion',
    beams=True,
)
###
violin_lh_maker_5 = NoteMusicMaker(
    mask_indices=[2],
    mask_period=5,
    pitches=violin_notes_5,
    beams=False,
)

###################
###### viola ######
###################

viola_string_maker_5 = TaleaMusicMaker(
    counts=[1, 1, 1, 3, 1, 2, 5, 4, 1, 1, 1, 3, 1, 1, 2, 1, 6, 2, 3, 1, 1, 2],
    denominator=16,
    pitches=[0],
    clef='percussion',
    extra_counts_per_division=[0, 1, 0, 1, 0, 0, 3, 0, 1, 0, 0],
    mask_indices=[2],
    mask_period=5,
    beams=False,
)
###
viola_bow_maker_5 = EvenDivisionMusicMaker(
    denominators=[16, 16, 32, 16, 8, 16, 4, 8],
    mask_indices=[2],
    mask_period=5,
    pitches=[0],
    extra_counts_per_division=[0, 1, 0, 0, 2, 3, 0, 1, 0],
    clef='percussion',
    beams=True,
)
###
viola_bow_beam_maker_5 = EvenDivisionMusicMaker(
    denominators=[16, 16, 32, 16, 8, 16, 4, 8],
    mask_indices=[2],
    mask_period=5,
    pitches=[38],
    extra_counts_per_division=[0, 1, 0, 0, 2, 3, 0, 1, 0],
    clef='percussion',
    beams=True,
)
###
viola_lh_maker_5 = NoteMusicMaker(
    mask_indices=[2],
    mask_period=5,
    pitches=viola_notes_5,
    beams=False,
)

###################
###### cello ######
###################

cello_string_maker_5 = TaleaMusicMaker(
    counts=[1, 1, 1, 3, 1, 2, 5, 4, 1, 1, 1, 3, 1, 1, 2, 1, 6, 2, 3, 1, 1, 2],
    denominator=16,
    pitches=[0],
    clef='percussion',
    extra_counts_per_division=[0, 1, 0, 1, 0, 0, 3, 0, 1, 0, 0],
    mask_indices=[2],
    mask_period=5,
    beams=False,
)
###
cello_bow_maker_5 = EvenDivisionMusicMaker(
    denominators=[16, 16, 32, 16, 8, 16, 4, 8],
    mask_indices=[2],
    mask_period=5,
    pitches=[0],
    extra_counts_per_division=[0, 1, 0, 0, 2, 3, 0, 1, 0],
    clef='percussion',
    beams=True,
)
###
cello_bow_beam_maker_5 = EvenDivisionMusicMaker(
    denominators=[16, 16, 32, 16, 8, 16, 4, 8],
    mask_indices=[2],
    mask_period=5,
    pitches=[38],
    extra_counts_per_division=[0, 1, 0, 0, 2, 3, 0, 1, 0],
    clef='percussion',
    beams=True,
)
###
cello_lh_maker_5 = NoteMusicMaker(
    mask_indices=[2],
    mask_period=5,
    pitches=cello_notes_5,
    beams=False,
)

################################################################################
################################## ASSEMBLY ####################################
################################################################################

                            ###################
                            # time signatures #
                            ###################

for music_maker in [
    time_signature_maker,
    ]:
    music = music_maker.make_music(time_signature_pairs_for_context)
    time_signature_staff_1.append(music[:])

for music_maker in [
    time_signature_maker,
    ]:
    music = music_maker.make_music(time_signature_pairs_for_context)
    time_signature_staff_2.append(music[:])

for music_maker in [
    time_signature_maker,
    ]:
    music = music_maker.make_music(time_signature_pairs_for_context)
    time_signature_staff_3.append(music[:])

                            ###################
                            ##### violin ######
                            ###################

###################
##### string ######
###################

for music_maker in [
    violin_string_maker_1,
    ]:
    music = music_maker.make_music(violin_time_signature_pairs_1)
    violin_string_staff.append(music[:])

for music_maker in [
    violin_string_maker_2,
    ]:
    music = music_maker.make_music(violin_time_signature_pairs_2)
    violin_string_staff.append(music[:])

for music_maker in [
    violin_string_maker_3,
    ]:
    music = music_maker.make_music(violin_time_signature_pairs_3)
    violin_string_staff.append(music[:])

for music_maker in [
    violin_string_maker_4,
    ]:
    music = music_maker.make_music(violin_time_signature_pairs_4)
    violin_string_staff.append(music[:])

for music_maker in [
    violin_string_maker_5,
    ]:
    music = music_maker.make_music(violin_time_signature_pairs_5)
    violin_string_staff.append(music[:])

###################
####### bow #######
###################

for music_maker in [
    violin_bow_maker_1,
    ]:
    music = music_maker.make_music(violin_time_signature_pairs_1)
    violin_bow_staff.append(music[:])

for music_maker in [
    violin_bow_maker_2,
    ]:
    music = music_maker.make_music(violin_time_signature_pairs_2)
    violin_bow_staff.append(music[:])

for music_maker in [
    violin_bow_maker_3,
    ]:
    music = music_maker.make_music(violin_time_signature_pairs_3)
    violin_bow_staff.append(music[:])

for music_maker in [
    violin_bow_maker_4,
    ]:
    music = music_maker.make_music(violin_time_signature_pairs_4)
    violin_bow_staff.append(music[:])

for music_maker in [
    violin_bow_maker_5,
    ]:
    music = music_maker.make_music(violin_time_signature_pairs_5)
    violin_bow_staff.append(music[:])
###beams###
for music_maker in [
    violin_bow_beam_maker_1,
    ]:
    music = music_maker.make_music(violin_time_signature_pairs_1)
    violin_bow_beam_staff.append(music[:])

for music_maker in [
    violin_bow_beam_maker_2,
    ]:
    music = music_maker.make_music(violin_time_signature_pairs_2)
    violin_bow_beam_staff.append(music[:])

for music_maker in [
    violin_bow_beam_maker_3,
    ]:
    music = music_maker.make_music(violin_time_signature_pairs_3)
    violin_bow_beam_staff.append(music[:])

for music_maker in [
    violin_bow_beam_maker_4,
    ]:
    music = music_maker.make_music(violin_time_signature_pairs_4)
    violin_bow_beam_staff.append(music[:])

for music_maker in [
    violin_bow_beam_maker_5,
    ]:
    music = music_maker.make_music(violin_time_signature_pairs_5)
    violin_bow_beam_staff.append(music[:])

###################
#### left hand ####
###################

for music_maker in [
    violin_lh_maker_1,
    ]:
    music = music_maker.make_music(violin_time_signature_pairs_1)
    violin_lh_staff.append(music[:])

for music_maker in [
    violin_lh_maker_2,
    ]:
    music = music_maker.make_music(violin_time_signature_pairs_2)
    violin_lh_staff.append(music[:])

for music_maker in [
    violin_lh_maker_3,
    ]:
    music = music_maker.make_music(violin_time_signature_pairs_3)
    violin_lh_staff.append(music[:])

for music_maker in [
    violin_lh_maker_4,
    ]:
    music = music_maker.make_music(violin_time_signature_pairs_4)
    violin_lh_staff.append(music[:])

for music_maker in [
    violin_lh_maker_5,
    ]:
    music = music_maker.make_music(violin_time_signature_pairs_5)
    violin_lh_staff.append(music[:])

                            ###################
                            ###### viola ######
                            ###################

###################
##### string ######
###################

for music_maker in [
    viola_string_maker_1,
    ]:
    music = music_maker.make_music(viola_time_signature_pairs_1)
    viola_string_staff.append(music[:])

for music_maker in [
    viola_string_maker_2,
    ]:
    music = music_maker.make_music(viola_time_signature_pairs_2)
    viola_string_staff.append(music[:])

for music_maker in [
    viola_string_maker_3,
    ]:
    music = music_maker.make_music(viola_time_signature_pairs_3)
    viola_string_staff.append(music[:])

for music_maker in [
    viola_string_maker_4,
    ]:
    music = music_maker.make_music(viola_time_signature_pairs_4)
    viola_string_staff.append(music[:])

for music_maker in [
    viola_string_maker_5,
    ]:
    music = music_maker.make_music(viola_time_signature_pairs_5)
    viola_string_staff.append(music[:])

###################
####### bow #######
###################

for music_maker in [
    viola_bow_maker_1,
    ]:
    music = music_maker.make_music(viola_time_signature_pairs_1)
    viola_bow_staff.append(music[:])

for music_maker in [
    viola_bow_maker_2,
    ]:
    music = music_maker.make_music(viola_time_signature_pairs_2)
    viola_bow_staff.append(music[:])

for music_maker in [
    viola_bow_maker_3,
    ]:
    music = music_maker.make_music(viola_time_signature_pairs_3)
    viola_bow_staff.append(music[:])

for music_maker in [
    viola_bow_maker_4,
    ]:
    music = music_maker.make_music(viola_time_signature_pairs_4)
    viola_bow_staff.append(music[:])

for music_maker in [
    viola_bow_maker_5,
    ]:
    music = music_maker.make_music(viola_time_signature_pairs_5)
    viola_bow_staff.append(music[:])
###beams###
for music_maker in [
    viola_bow_beam_maker_1,
    ]:
    music = music_maker.make_music(viola_time_signature_pairs_1)
    viola_bow_beam_staff.append(music[:])

for music_maker in [
    viola_bow_beam_maker_2,
    ]:
    music = music_maker.make_music(viola_time_signature_pairs_2)
    viola_bow_beam_staff.append(music[:])

for music_maker in [
    viola_bow_beam_maker_3,
    ]:
    music = music_maker.make_music(viola_time_signature_pairs_3)
    viola_bow_beam_staff.append(music[:])

for music_maker in [
    viola_bow_beam_maker_4,
    ]:
    music = music_maker.make_music(viola_time_signature_pairs_4)
    viola_bow_beam_staff.append(music[:])

for music_maker in [
    viola_bow_beam_maker_5,
    ]:
    music = music_maker.make_music(viola_time_signature_pairs_5)
    viola_bow_beam_staff.append(music[:])

###################
#### left hand ####
###################

for music_maker in [
    viola_lh_maker_1,
    ]:
    music = music_maker.make_music(viola_time_signature_pairs_1)
    viola_lh_staff.append(music[:])

for music_maker in [
    viola_lh_maker_2,
    ]:
    music = music_maker.make_music(viola_time_signature_pairs_2)
    viola_lh_staff.append(music[:])

for music_maker in [
    viola_lh_maker_3,
    ]:
    music = music_maker.make_music(viola_time_signature_pairs_3)
    viola_lh_staff.append(music[:])

for music_maker in [
    viola_lh_maker_4,
    ]:
    music = music_maker.make_music(viola_time_signature_pairs_4)
    viola_lh_staff.append(music[:])

for music_maker in [
    viola_lh_maker_5,
    ]:
    music = music_maker.make_music(viola_time_signature_pairs_5)
    viola_lh_staff.append(music[:])

                            ###################
                            ###### cello ######
                            ###################

###################
##### string ######
###################

for music_maker in [
    cello_string_maker_1,
    ]:
    music = music_maker.make_music(cello_time_signature_pairs_1)
    cello_string_staff.append(music[:])

for music_maker in [
    cello_string_maker_2,
    ]:
    music = music_maker.make_music(cello_time_signature_pairs_2)
    cello_string_staff.append(music[:])

for music_maker in [
    cello_string_maker_3,
    ]:
    music = music_maker.make_music(cello_time_signature_pairs_3)
    cello_string_staff.append(music[:])

for music_maker in [
    cello_string_maker_4,
    ]:
    music = music_maker.make_music(cello_time_signature_pairs_4)
    cello_string_staff.append(music[:])

for music_maker in [
    cello_string_maker_5,
    ]:
    music = music_maker.make_music(cello_time_signature_pairs_5)
    cello_string_staff.append(music[:])

###################
####### bow #######
###################

for music_maker in [
    cello_bow_maker_1,
    ]:
    music = music_maker.make_music(cello_time_signature_pairs_1)
    cello_bow_staff.append(music[:])

for music_maker in [
    cello_bow_maker_2,
    ]:
    music = music_maker.make_music(cello_time_signature_pairs_2)
    cello_bow_staff.append(music[:])

for music_maker in [
    cello_bow_maker_3,
    ]:
    music = music_maker.make_music(cello_time_signature_pairs_3)
    cello_bow_staff.append(music[:])

for music_maker in [
    cello_bow_maker_4,
    ]:
    music = music_maker.make_music(cello_time_signature_pairs_4)
    cello_bow_staff.append(music[:])

for music_maker in [
    cello_bow_maker_5,
    ]:
    music = music_maker.make_music(cello_time_signature_pairs_5)
    cello_bow_staff.append(music[:])
###beams###
for music_maker in [
    cello_bow_beam_maker_1,
    ]:
    music = music_maker.make_music(cello_time_signature_pairs_1)
    cello_bow_beam_staff.append(music[:])

for music_maker in [
    cello_bow_beam_maker_2,
    ]:
    music = music_maker.make_music(cello_time_signature_pairs_2)
    cello_bow_beam_staff.append(music[:])

for music_maker in [
    cello_bow_beam_maker_3,
    ]:
    music = music_maker.make_music(cello_time_signature_pairs_3)
    cello_bow_beam_staff.append(music[:])

for music_maker in [
    cello_bow_beam_maker_4,
    ]:
    music = music_maker.make_music(cello_time_signature_pairs_4)
    cello_bow_beam_staff.append(music[:])

for music_maker in [
    cello_bow_beam_maker_5,
    ]:
    music = music_maker.make_music(cello_time_signature_pairs_5)
    cello_bow_beam_staff.append(music[:])

###################
#### left hand ####
###################

for music_maker in [
    cello_lh_maker_1,
    ]:
    music = music_maker.make_music(cello_time_signature_pairs_1)
    cello_lh_staff.append(music[:])

for music_maker in [
    cello_lh_maker_2,
    ]:
    music = music_maker.make_music(cello_time_signature_pairs_2)
    cello_lh_staff.append(music[:])

for music_maker in [
    cello_lh_maker_3,
    ]:
    music = music_maker.make_music(cello_time_signature_pairs_3)
    cello_lh_staff.append(music[:])

for music_maker in [
    cello_lh_maker_4,
    ]:
    music = music_maker.make_music(cello_time_signature_pairs_4)
    cello_lh_staff.append(music[:])

for music_maker in [
    cello_lh_maker_5,
    ]:
    music = music_maker.make_music(cello_time_signature_pairs_5)
    cello_lh_staff.append(music[:])

################################################################################
################################ ATTACHMENTS ###################################
################################################################################

violin_bow_tech = ['ordinario', ]
viola_bow_tech = ['ordinario', ]
cello_bow_tech = ['ordinario', ]
string_tech = ['ordinario', ]

violin_bow_nums = [0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 3, 4, 3, 2, 2, 1, 0, 4, 0, 4, 0, 4, 0, 4, 3, 2, 3, 1, 2, 0, 4, 0, 4, 0, 4, 0, 1, 0, 1, 0,]
viola_bow_nums = [0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 3, 4, 3, 2, 2, 1, 0, 4, 0, 4, 0, 4, 0, 4, 3, 2, 3, 1, 2, 0, 4, 0, 4, 0, 4, 0, 1, 0, 1, 0,]
cello_bow_nums = [0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 3, 4, 3, 2, 2, 1, 0, 4, 0, 4, 0, 4, 0, 4, 3, 2, 3, 1, 2, 0, 4, 0, 4, 0, 4, 0, 1, 0, 1, 0,]

violin_string_nums = [0, 1, 5, 4, 2, 3, 1, 2, 1, 3, 5, 4, 3, 2, 0, 1, 0, 3, 5, 4, 3, 5, 5, 5]
viola_string_nums = [5, 5, 5, 3, 4, 5, 3, 0, 1, 0, 2, 3, 4, 5, 3, 1, 2, 1, 3, 2, 4, 5, 1, 0]
cello_string_nums = [0, 1, 5, 4, 2, 3, 5, 4, 3, 2, 0, 1, 0, 3, 1, 2, 1, 3, 5, 4, 3, 5, 5, 5]

def cyc(lst):
    count = 0
    while True:
        yield lst[count%len(lst)]
        count += 1

def _apply_bow_numerators_and_tech(staff, nums, tech):
    numerators = cyc(nums)
    techs = cyc(tech)
    for run in abjad.select(staff).runs():
        spanner = abjad.BowContactSpanner()
        abjad.attach(spanner, run)

    for logical_tie in abjad.select(staff).logical_ties():
        tech = next(techs)
        numerator = next(numerators)
        bcp = abjad.BowContactPoint((numerator, 4))
        technis = abjad.BowMotionTechnique(tech)
        for note in logical_tie:
            abjad.attach(bcp, note)
            abjad.attach(technis, note)

def _apply_string_numerators_and_tech(staff, nums, tech):
    numerators = cyc(nums)
    techs = cyc(tech)
    for run in abjad.select(staff).runs():
        spanner = abjad.StringContactSpanner()
        abjad.attach(spanner, run)

    for logical_tie in abjad.select(staff).logical_ties():
        tech = next(techs)
        numerator = next(numerators)
        bcp = abjad.BowContactPoint((numerator, 5))
        technis = abjad.BowMotionTechnique(tech)
        for note in logical_tie:
            abjad.attach(bcp, note)
            abjad.attach(technis, note)

###################
##### spanner #####
###################

_apply_string_numerators_and_tech(staff=violin_string_staff, nums=violin_string_nums, tech=string_tech)
_apply_string_numerators_and_tech(staff=viola_string_staff, nums=viola_string_nums, tech=string_tech)
_apply_string_numerators_and_tech(staff=cello_string_staff, nums=cello_string_nums, tech=string_tech)

_apply_bow_numerators_and_tech(staff=violin_bow_staff, nums=violin_bow_nums, tech=violin_bow_tech)
_apply_bow_numerators_and_tech(staff=viola_bow_staff, nums=viola_bow_nums, tech=viola_bow_tech)
_apply_bow_numerators_and_tech(staff=cello_bow_staff, nums=cello_bow_nums, tech=cello_bow_tech)

################################################################################
############################## FINAL ASSEMBLY ##################################
################################################################################

violin_staff = abjad.StaffGroup(lilypond_type='StaffGroup')
violin_staff.extend([violin_string_staff, violin_bow_staff, violin_bow_beam_staff, violin_lh_staff])

viola_staff = abjad.StaffGroup(lilypond_type='StaffGroup')
viola_staff.extend([viola_string_staff, viola_bow_staff, viola_bow_beam_staff, viola_lh_staff])

cello_staff = abjad.StaffGroup(lilypond_type='StaffGroup')
cello_staff.extend([cello_string_staff, cello_bow_staff, cello_bow_beam_staff, cello_lh_staff])

################################################################################
############################### FILE CLEANUP ###################################
################################################################################

score = abjad.Score()
score.extend([time_signature_staff_1, violin_staff, time_signature_staff_2, viola_staff, time_signature_staff_3, cello_staff, ])

metro = abjad.MetronomeMark((1, 2), 60)
abjad.attach(metro, violin_lh_staff[0][0])
violin = abjad.Violin()
abjad.attach(violin, violin_lh_staff[0][0])
first_violin_leaf = abjad.select(violin_bow_staff).leaves()[0]
violin_name2 = abjad.MarginMarkup(markup=abjad.Markup('Vln.'), context='BowStaff')
abjad.attach(violin_name2, first_violin_leaf)
violin_name1 = abjad.StartMarkup(markup=abjad.Markup('Violin'), context='BowStaff')
abjad.attach(violin_name1, first_violin_leaf)
for rest in abjad.select(violin_string_staff).components(abjad.Rest):
    abjad.override(rest).dots.transparent = True
for rest in abjad.select(violin_bow_beam_staff).components(abjad.Rest):
    abjad.override(rest).dots.transparent = True

viola = abjad.Viola()
abjad.attach(viola, viola_lh_staff[0][0])
alto_clef = abjad.Clef('varC')
abjad.attach(alto_clef, viola_lh_staff[0][0])
first_viola_leaf = abjad.select(viola_bow_staff).leaves()[0]
viola_name2 = abjad.MarginMarkup(markup=abjad.Markup('Vla.'), context='BowStaff')
abjad.attach(viola_name2, first_viola_leaf)
viola_name1 = abjad.StartMarkup(markup=abjad.Markup('Viola'), context='BowStaff')
abjad.attach(viola_name1, first_viola_leaf)
for rest in abjad.select(viola_string_staff).components(abjad.Rest):
    abjad.override(rest).dots.transparent = True
for rest in abjad.select(viola_bow_beam_staff).components(abjad.Rest):
    abjad.override(rest).dots.transparent = True

bass_clef = abjad.Clef('bass')
abjad.attach(bass_clef, cello_lh_staff[0][0])
cello = abjad.Cello()
abjad.attach(cello, cello_lh_staff[0][0])
first_cello_leaf = abjad.select(cello_bow_staff).leaves()[0]
cello_name2 = abjad.MarginMarkup(markup=abjad.Markup('Vc.'), context='BowStaff')
abjad.attach(cello_name2, first_cello_leaf)
cello_name1 = abjad.StartMarkup(markup=abjad.Markup('Violoncello'), context='BowStaff')
abjad.attach(cello_name1, first_cello_leaf)
for rest in abjad.select(cello_string_staff).components(abjad.Rest):
    abjad.override(rest).dots.transparent = True
for rest in abjad.select(cello_bow_beam_staff).components(abjad.Rest):
    abjad.override(rest).dots.transparent = True

###################

abjad.SegmentMaker.comment_measure_numbers(score)

###################

score_file = abjad.LilyPondFile.new(
    score,
    includes=['first_stylesheet.ily'],
    )
# score_file.paper_block.top_margin = 20
# score_file.paper_block.bottom_margin = 20

###################

#print(format(score_file))
directory = '/Users/evansdsg2/Scores/trio/Segments/Introduction'
pdf_path = f'{directory}/Introduction.pdf'
path = pathlib.Path('Introduction.pdf')
if path.exists():
    print(f'Removing {pdf_path} ...')
    path.unlink()
time_1 = time.time()
print(f'Persisting {pdf_path} ...')
result = abjad.persist(score_file).as_pdf(pdf_path)
print(result[0])
print(result[1])
print(result[2])
success = result[3]
if success is False:
        print('LilyPond failed!')
time_2 = time.time()
total_time = time_2 - time_1
print(f'Total time: {total_time} seconds')
if path.exists():
    print(f'Opening {pdf_path} ...')
    os.system(f'open {pdf_path}')
