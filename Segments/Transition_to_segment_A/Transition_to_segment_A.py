
################################################################################
################################## IMPORTS #####################################
################################################################################

import abjad
import os
import pathlib
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
################################## STAVES ######################################
################################################################################

###################
# time signatures #
###################

time_signature_staff_1 = abjad.Staff(
    lilypond_type='TimeSignatureContext',
    name='TimeSignatureContext1',
    )
time_signature_staff_2 = abjad.Staff(
    lilypond_type='TimeSignatureContext',
    name='TimeSignatureContext2',
    )
time_signature_staff_3 = abjad.Staff(
    lilypond_type='TimeSignatureContext',
    name='TimeSignatureContext3',
    )

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

###################
# time signatures #
###################

time_signature_pairs_for_context = [(6, 8),] # 1 MEASURE

###################
##### violin ######
###################

violin_time_signature_pairs_1 = [(6, 8),] # 1 MEASURE

###################
###### viola ######
###################

viola_time_signature_pairs_1 = [(6, 8),] # 1 MEASURE

###################
###### cello ######
###################

cello_time_signature_pairs_1 = [(6, 8),] # 1 MEASURE

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

violin_string_staff.extend(r" r8 \times 2/3 {c'4 c'4 c'4} r8")
violin_bow_staff.extend(r" r8 c'4 -> c'4 r8")
violin_bow_beam_staff.extend(r" r8 c'4 \mp \> c'4 \! \pp r8")
violin_lh_staff.extend(r" r8 c'2 r8")
#axs
viola_string_staff.extend(r" r8 \times 2/3 {c'4 c'4 c'4} r8")
viola_bow_staff.extend(r" r8 c'4 -> c'4 r8")
viola_bow_beam_staff.extend(r" r8 c'4 \mp \> c'4 \! \pp r8")
viola_lh_staff.extend(r" r8 c'4. \glissando eqf8 r8")

cello_string_staff.extend(r" r8 \times 2/3 {c'4 c'4 c'4} r8")
cello_bow_staff.extend(r" r8 c'4 -> c'4 r8")
cello_bow_beam_staff.extend(r" r8 c'4 \mp \> c'4 \! \pp r8")
cello_lh_staff.extend(r" r8 c2 r8")
#gef
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
#
# for music_maker in [
#     violin_string_maker_1,
#     ]:
#     music = music_maker.make_music(violin_time_signature_pairs_1)
#     violin_string_staff.append(music[:])
#
# ###################
# ####### bow #######
# ###################
#
# for music_maker in [
#     violin_bow_maker_1,
#     ]:
#     music = music_maker.make_music(violin_time_signature_pairs_1)
#     violin_bow_staff.append(music[:])
#
# ###beams###
# for music_maker in [
#     violin_bow_beam_maker_1,
#     ]:
#     music = music_maker.make_music(violin_time_signature_pairs_1)
#     violin_bow_beam_staff.append(music[:])
#
# ###################
# #### left hand ####
# ###################
#
# for music_maker in [
#     violin_lh_maker_1,
#     ]:
#     music = music_maker.make_music(violin_time_signature_pairs_1)
#     violin_lh_staff.append(music[:])
#
#                             ###################
#                             ###### viola ######
#                             ###################
#
# ###################
# ##### string ######
# ###################
#
# for music_maker in [
#     viola_string_maker_1,
#     ]:
#     music = music_maker.make_music(viola_time_signature_pairs_1)
#     viola_string_staff.append(music[:])
#
# ###################
# ####### bow #######
# ###################
#
# for music_maker in [
#     viola_bow_maker_1,
#     ]:
#     music = music_maker.make_music(viola_time_signature_pairs_1)
#     viola_bow_staff.append(music[:])
#
# ###beams###
# for music_maker in [
#     viola_bow_beam_maker_1,
#     ]:
#     music = music_maker.make_music(viola_time_signature_pairs_1)
#     viola_bow_beam_staff.append(music[:])
#
# ###################
# #### left hand ####
# ###################
#
# for music_maker in [
#     viola_lh_maker_1,
#     ]:
#     music = music_maker.make_music(viola_time_signature_pairs_1)
#     viola_lh_staff.append(music[:])
#
#                             ###################
#                             ###### cello ######
#                             ###################
#
# ###################
# ##### string ######
# ###################
#
# for music_maker in [
#     cello_string_maker_1,
#     ]:
#     music = music_maker.make_music(cello_time_signature_pairs_1)
#     cello_string_staff.append(music[:])
#
# ###################
# ####### bow #######
# ###################
#
# for music_maker in [
#     cello_bow_maker_1,
#     ]:
#     music = music_maker.make_music(cello_time_signature_pairs_1)
#     cello_bow_staff.append(music[:])
#
# ###beams###
# for music_maker in [
#     cello_bow_beam_maker_1,
#     ]:
#     music = music_maker.make_music(cello_time_signature_pairs_1)
#     cello_bow_beam_staff.append(music[:])
#
# ###################
# #### left hand ####
# ###################
#
# for music_maker in [
#     cello_lh_maker_1,
#     ]:
#     music = music_maker.make_music(cello_time_signature_pairs_1)
#     cello_lh_staff.append(music[:])

################################################################################
################################ ATTACHMENTS ###################################
################################################################################

violin_bow_tech = ['jete', ]
viola_bow_tech = ['jete', ]
cello_bow_tech = ['jete', ]
string_tech = ['ordinario', ]

violin_bow_nums = [0, 0, 4, 0,]
viola_bow_nums = [0, 0, 4, 0,]
cello_bow_nums = [0, 0, 4, 0,]

violin_string_nums = [0, 0, 5, 2, 0,]
viola_string_nums = [0, 0, 4, 3, 0,]
cello_string_nums = [0, 0, 4, 3, 0,]

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

violin_staff = abjad.StaffGroup(lilypond_type='StaffGroup', name='violin',)
violin_staff.extend([violin_string_staff, violin_bow_staff, violin_bow_beam_staff, violin_lh_staff])

viola_staff = abjad.StaffGroup(lilypond_type='StaffGroup', name='viola',)
viola_staff.extend([viola_string_staff, viola_bow_staff, viola_bow_beam_staff, viola_lh_staff])

cello_staff = abjad.StaffGroup(lilypond_type='StaffGroup', name='cello',)
cello_staff.extend([cello_string_staff, cello_bow_staff, cello_bow_beam_staff, cello_lh_staff])

################################################################################
############################### FILE CLEANUP ###################################
################################################################################

score = abjad.Score(name="Adumbration Score")
score.extend([time_signature_staff_1, violin_staff, time_signature_staff_2, viola_staff, time_signature_staff_3, cello_staff, ])

#metro = abjad.MetronomeMark((1, 2), 60)
#abjad.attach(metro, violin_lh_staff[0][0])
violin = abjad.Violin()
abjad.attach(violin, violin_lh_staff[0])
first_violin_leaf = abjad.select(violin_bow_staff).leaves()[0]
violin_name2 = abjad.MarginMarkup(markup=abjad.Markup('Vln.'), context='BowStaff')
abjad.attach(violin_name2, first_violin_leaf)
for rest in abjad.select(violin_string_staff).components(abjad.Rest):
    abjad.override(rest).dots.transparent = True
for rest in abjad.select(violin_bow_beam_staff).components(abjad.Rest):
    abjad.override(rest).dots.transparent = True
bar_line = abjad.BarLine('||')
abjad.attach(bar_line, violin_string_staff[-1])

viola = abjad.Viola()
abjad.attach(viola, viola_lh_staff[0])
alto_clef = abjad.Clef('varC')
abjad.attach(alto_clef, viola_lh_staff[0])
first_viola_leaf = abjad.select(viola_bow_staff).leaves()[0]
viola_name2 = abjad.MarginMarkup(markup=abjad.Markup('Vla.'), context='BowStaff')
abjad.attach(viola_name2, first_viola_leaf)
for rest in abjad.select(viola_string_staff).components(abjad.Rest):
    abjad.override(rest).dots.transparent = True
for rest in abjad.select(viola_bow_beam_staff).components(abjad.Rest):
    abjad.override(rest).dots.transparent = True

bass_clef = abjad.Clef('bass')
abjad.attach(bass_clef, cello_lh_staff[0])
cello = abjad.Cello()
abjad.attach(cello, cello_lh_staff[0])
first_cello_leaf = abjad.select(cello_bow_staff).leaves()[0]
cello_name2 = abjad.MarginMarkup(markup=abjad.Markup('Vc.'), context='BowStaff')
abjad.attach(cello_name2, first_cello_leaf)
for rest in abjad.select(cello_string_staff).components(abjad.Rest):
    abjad.override(rest).dots.transparent = True
for rest in abjad.select(cello_bow_beam_staff).components(abjad.Rest):
    abjad.override(rest).dots.transparent = True

###################

abjad.SegmentMaker.comment_measure_numbers(score)

###################

score_file = abjad.LilyPondFile.new(
    score,
    includes=['transition_to_segment_a_stylesheet.ily'],
    )
# score_file.paper_block.top_margin = 20
# score_file.paper_block.bottom_margin = 20

###################

#print(format(score_file))
directory = '/Users/evansdsg2/Scores/trio/Segments/Transition_to_segment_A'
pdf_path = f'{directory}/Transition_to_segment_A.pdf'
path = pathlib.Path('Transition_to_segment_A.pdf')
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
