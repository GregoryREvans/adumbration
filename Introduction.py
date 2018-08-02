
################################################################################
################################## IMPORTS #####################################
################################################################################

import abjad
import os
import pathlib
import random
import time
from abjad import rhythmmakertools

################################################################################
############################### MUSIC MAKERS ###################################
################################################################################

print('Intepreting file ...')

class EvenDivisionMusicMaker:

    def __init__(
        self,
        denominators,
        mask_indices,
        mask_period,
        pitches,
        extra_counts_per_division=[0],
        beams=False,
        clef='treble',
        ):
        self.denominators = denominators
        self.extra_counts_per_division = extra_counts_per_division
        self.mask_indices = mask_indices
        self.mask_period = mask_period
        self.pitches = pitches
        self.beams = beams
        self.clef = abjad.Clef(clef)

    def _cyclic_pitches(self, pitches):
        c = 0
        cyclic = abjad.CyclicTuple(pitches)
        while True:
            yield cyclic[c]
            c = c + 1

    def make_basic_rhythm(self, time_signature_pairs):
        beam_specifier = rhythmmakertools.BeamSpecifier(
            beam_divisions_together=self.beams,
            beam_each_division=self.beams,
            beam_rests=self.beams,
            )
        division_masks = rhythmmakertools.SilenceMask(
            pattern=abjad.Pattern(
                indices=self.mask_indices,
                period=self.mask_period,
                ),
            )
        even_division_rhythm_maker = rhythmmakertools.EvenDivisionRhythmMaker(
            denominators=self.denominators,
            beam_specifier=beam_specifier,
            extra_counts_per_division=self.extra_counts_per_division,
            division_masks=division_masks,
            )
        selections = even_division_rhythm_maker(time_signature_pairs)
        music = abjad.Staff(selections)
        music = self._apply_pitches(music)
        return music

    def _apply_pitches(self, selections):
        logical_ties = list(abjad.iterate(selections).by_logical_tie())
        pitches = self._cyclic_pitches(self.pitches)
        for i, logical_tie in enumerate(logical_ties):
            if not logical_tie.is_pitched:
                continue
            pitch = next(pitches)
            for note in logical_tie:
                note.written_pitch = pitch
        return selections

    def add_attachments(self, music):
        runs = abjad.select(music).by_run()
        for run in runs:
            abjad.attach(abjad.Articulation('tenuto'), run[0])
            if 4 < len(run):
                abjad.attach(abjad.Hairpin('mp > niente'), run)
            elif 4 > len(run) and len(run) > 1:
                abjad.attach(abjad.Dynamic('fff'), run[0])
            else:
                abjad.attach(abjad.Dynamic('ppp'), run[0])
        return music

    def make_music(self, time_signature_pairs):
        music = self.make_basic_rhythm(
            time_signature_pairs,
            )

        shards = abjad.mutate(music[:]).split(time_signature_pairs)
        beam_specifier=rhythmmakertools.BeamSpecifier(
            beam_divisions_together=self.beams,
            beam_each_division=self.beams,
            beam_rests=self.beams
            )
        time_signature_pairs = abjad.CyclicTuple(time_signature_pairs)
        for i, shard in enumerate(shards):
            beam_specifier(shards)
            measure = abjad.Measure(time_signature_pairs[i])
            abjad.mutate(shard).wrap(measure)

        music = self.add_attachments(music)
        return music

###################

class NoteMusicMaker:

    def __init__(
        self,
        mask_indices,
        mask_period,
        pitches,
        beams=False,
        clef='treble',
        ):
        self.mask_indices=mask_indices
        self.mask_period=mask_period
        self.pitches = pitches
        self.beams=beams
        self.clef = abjad.Clef(clef)

    def _cyclic_pitches(self, pitches):
        c = 0
        cyclic = abjad.CyclicTuple(pitches)
        while True:
            yield cyclic[c]
            c = c + 1

    def make_basic_rhythm(self, time_signature_pairs):
        beam_specifier = rhythmmakertools.BeamSpecifier(
            beam_divisions_together=self.beams,
            beam_each_division=self.beams,
            beam_rests=self.beams,
            )
        division_masks = rhythmmakertools.SilenceMask(
            pattern = abjad.Pattern(
                indices=self.mask_indices,
                period=self.mask_period)
            )

        note_rhythm_maker = rhythmmakertools.NoteRhythmMaker(
            beam_specifier=beam_specifier,
            division_masks=division_masks,
            )

        selections = note_rhythm_maker(time_signature_pairs)

        music = abjad.Staff(selections)

        music = self._apply_pitches(music)

        return music

    def _apply_pitches(self, selections):
        selections = selections
        leaves = [i for i in abjad.iterate(selections).by_logical_tie()]
        pitches = self._cyclic_pitches(self.pitches)

        for i, leaf in enumerate(leaves):
            if leaf.is_pitched ==True:
                pitch = next(pitches)
                for note in leaf:
                    note.written_pitch = pitch
        return selections

    def add_attachments(self, music):
        runs = abjad.select(music).by_run()
        for run in runs:
            abjad.attach(abjad.Articulation('tenuto'), run[0])
            if 4 < len(run):
                abjad.attach(abjad.Hairpin('mp > niente'), run)
            elif 4 > len(run) and len(run) > 1:
                abjad.attach(abjad.Dynamic('fff'), run[0])
            else:
                abjad.attach(abjad.Dynamic('ppp'), run[0])
        return music

    def make_music(self, time_signature_pairs):
        music = self.make_basic_rhythm(
            time_signature_pairs,
            )

        shards = abjad.mutate(music[:]).split(time_signature_pairs)
        beam_specifier=rhythmmakertools.BeamSpecifier(
            beam_divisions_together=self.beams,
            beam_each_division=self.beams,
            beam_rests=self.beams,
            )
        time_signature_pairs = abjad.CyclicTuple(time_signature_pairs)
        for i, shard in enumerate(shards):
            beam_specifier(shards)
            measure = abjad.Measure(time_signature_pairs[i])
            abjad.mutate(shard).wrap(measure)

        music = self.add_attachments(music)
        return music

###################

class TaleaMusicMaker:

    def __init__(
        self,
        counts,
        denominator,
        mask_indices,
        mask_period,
        pitches,
        extra_counts_per_division=[0],
        beams=False,
        clef='treble',
        ):
        self.counts = counts
        self.denominator = denominator
        self.extra_counts_per_division=extra_counts_per_division
        self.mask_indices=mask_indices
        self.mask_period=mask_period
        self.pitches = pitches
        self.beams = beams
        self.clef = abjad.Clef(clef)

    def _cyclic_pitches(self, pitches):
        c = 0
        cyclic = abjad.CyclicTuple(pitches)
        while True:
            yield cyclic[c]
            c = c + 1

    def make_basic_rhythm(self, time_signature_pairs):

        talea = rhythmmakertools.Talea(
            counts = self.counts,
            denominator=self.denominator,
            )
        beam_specifier = rhythmmakertools.BeamSpecifier(
            beam_divisions_together=self.beams,
            beam_each_division=self.beams,
            beam_rests=self.beams,
            )
        division_masks = rhythmmakertools.SilenceMask(
            pattern = abjad.Pattern(
                indices=self.mask_indices,
                period=self.mask_period)
            )

        talea_rhythm_maker = rhythmmakertools.TaleaRhythmMaker(
            talea=talea,
            beam_specifier=beam_specifier,
            extra_counts_per_division=self.extra_counts_per_division,
            division_masks=division_masks,
            )

        selections = talea_rhythm_maker(time_signature_pairs)

        music = abjad.Staff(selections)

        music = self._apply_pitches(music)

        return music

    def _apply_pitches(self, selections):
        selections = selections
        leaves = [i for i in abjad.iterate(selections).by_logical_tie()]
        pitches = self._cyclic_pitches(self.pitches)

        for i, leaf in enumerate(leaves):
            if leaf.is_pitched ==True:
                pitch = next(pitches)
                for note in leaf:
                    note.written_pitch = pitch
        return selections

    def add_attachments(self, music):
        runs = abjad.select(music).by_run()
        for run in runs:
            abjad.attach(abjad.Articulation('tenuto'), run[0])
            if 4 < len(run):
                abjad.attach(abjad.Hairpin('mp > niente'), run)
            elif 4 > len(run) and len(run) > 1:
                abjad.attach(abjad.Dynamic('fff'), run[0])
            else:
                abjad.attach(abjad.Dynamic('ppp'), run[0])
        return music

    def make_music(self, time_signature_pairs):
        music = self.make_basic_rhythm(
            time_signature_pairs,
            )

        shards = abjad.mutate(music[:]).split(time_signature_pairs)
        beam_specifier=rhythmmakertools.BeamSpecifier(
            beam_divisions_together=self.beams,
            beam_each_division=self.beams,
            beam_rests=self.beams,
            )
        time_signature_pairs = abjad.CyclicTuple(time_signature_pairs)
        for i, shard in enumerate(shards):
            beam_specifier(shards)
            measure = abjad.Measure(time_signature_pairs[i])
            abjad.mutate(shard).wrap(measure)

        music = self.add_attachments(music)
        return music

###################

class TupletMusicMaker:

    def __init__(
        self,
        tuplet_ratio,
        mask_indices,
        mask_period,
        pitches,
        beams=False,
        clef='treble',
        ):
        self.tuplet_ratio = tuplet_ratio
        self.mask_indices=mask_indices
        self.mask_period=mask_period
        self.pitches = pitches
        self.beams = beams
        self.clef = abjad.Clef(clef)

    def _cyclic_pitches(self, pitches):
        c = 0
        cyclic = abjad.CyclicTuple(pitches)
        while True:
            yield cyclic[c]
            c = c + 1

    def make_basic_rhythm(self, time_signature_pairs):

        beam_specifier = rhythmmakertools.BeamSpecifier(
            beam_divisions_together=self.beams,
            beam_each_division=self.beams,
            beam_rests=self.beams,
            )

        division_masks = rhythmmakertools.SilenceMask(
            pattern = abjad.Pattern(
                indices=self.mask_indices,
                period=self.mask_period)
                )
        # division_masks = [silence_every([mask_indicies], period=mask_period),]

        tuplet_rhythm_maker = rhythmmakertools.TupletRhythmMaker(
            tuplet_ratios=self.tuplet_ratio,
            beam_specifier=beam_specifier,
            division_masks=division_masks,
            # preferred_denominator=None
            # ...equiv of this...I think it is duration specifier
            # but since pretty much everything defaults to None...its okay?
            )

        selections = tuplet_rhythm_maker(time_signature_pairs)


        music = abjad.Staff(selections)


        music = self._apply_pitches(music)


        return music


    def _apply_pitches(self, selections):
        selections = selections
        leaves = [i for i in abjad.iterate(selections).by_logical_tie()]
        #leaves = [i for i in abjad.iterate(selections).logical_ties()]
        pitches = self._cyclic_pitches(self.pitches)

        for i, leaf in enumerate(leaves):
            if leaf.is_pitched ==True:
                pitch = next(pitches)
                for note in leaf:
                    note.written_pitch = pitch
        return selections

    def add_attachments(self, music):
        # Ivan 4:
        runs = abjad.select(music).by_run()
        #runs = abjad.select(music).runs()
        for run in runs:
            abjad.attach(abjad.Articulation('tenuto'), run[0])
            if 4 < len(run):
                abjad.attach(abjad.Hairpin('mp > niente'), run)
            elif 4 > len(run) and len(run) > 1:
                abjad.attach(abjad.Dynamic('fff'), run[0])
            else:
                abjad.attach(abjad.Dynamic('ppp'), run[0])
        return music

    def make_music(self, time_signature_pairs):
        music = self.make_basic_rhythm(
            time_signature_pairs,
            )

        shards = abjad.mutate(music[:]).split(time_signature_pairs)
        beam_specifier=rhythmmakertools.BeamSpecifier(
            beam_divisions_together=self.beams,
            beam_each_division=self.beams,
            beam_rests=self.beams,
            )
        time_signature_pairs = abjad.CyclicTuple(time_signature_pairs)
        for i, shard in enumerate(shards):
            beam_specifier(shards)
            measure = abjad.Measure(time_signature_pairs[i])
            abjad.mutate(shard).wrap(measure)

        music = self.add_attachments(music)
        return music

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

violin_notes_1 = [(x / 4.0) for x in violin_random_walk_1]

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

viola_notes_1 = [((x / 4.0) - 6) for x in viola_random_walk_1]

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

cello_notes_1 = [((x / 4.0) - 8) for x in cello_random_walk_1]

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

violin_notes_2 = [((x / 4.0) + 3) for x in violin_random_walk_2]

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

cello_notes_2 = [((x / 4.0) - 12) for x in cello_random_walk_2]

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

viola_notes_3 = [((x / 4.0) - 2) for x in viola_random_walk_3]

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

cello_notes_3 = [((x / 4.0) - 15) for x in cello_random_walk_3]

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

cello_notes_4 = [((x / 4.0) - 12) for x in cello_random_walk_4]

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

violin_notes_5 = [((x / 4.0) + 11) for x in violin_random_walk_5]

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

viola_notes_5 = [((x / 4.0) - 6) for x in viola_random_walk_5]

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

time_signature_staff_1 = abjad.Staff(context_name='TimeSignatureContext')
time_signature_staff_2 = abjad.Staff(context_name='TimeSignatureContext')
time_signature_staff_3 = abjad.Staff(context_name='TimeSignatureContext')

###################
##### violin ######
###################

violin_string_staff = abjad.Staff(
    context_name='StringStaff',
    name='violin_string_staff',
    )
violin_bow_staff = abjad.Staff(
    context_name='BowStaff',
    name='violin_bow_staff',
    )
violin_bow_beam_staff = abjad.Staff(
    context_name='BeamStaff',
    name='violin_beam_staff',
    )
violin_lh_staff = abjad.Staff()

###################
###### viola ######
###################

viola_string_staff = abjad.Staff(
    context_name='StringStaff',
    name='viola_string_staff',
    )
viola_bow_staff = abjad.Staff(
    context_name='BowStaff',
    name='viola_bow_staff',
    )
viola_bow_beam_staff = abjad.Staff(
    context_name='BeamStaff',
    name='viola_beam_staff',
    )
viola_lh_staff = abjad.Staff()

###################
###### cello ######
###################

cello_string_staff = abjad.Staff(
    context_name='StringStaff',
    name='cello_string_staff',
    )
cello_bow_staff = abjad.Staff(
    context_name='BowStaff',
    name='cello_bow_staff',
    )
cello_bow_beam_staff = abjad.Staff(
    context_name='BeamStaff',
    name='cello_beam_staff',
    )
cello_lh_staff = abjad.Staff()

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
beams=True,
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
beams=False,
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
    logical_ties = abjad.select(staff[:]).by_leaf()
    spanner = abjad.BowContactSpanner()
    abjad.attach(spanner, logical_ties)

    for logical_tie in logical_ties:
        tech = next(techs)
        numerator = next(numerators)
        bcp = abjad.BowContactPoint((numerator, 4))
        technis = abjad.BowMotionTechnique(tech)
        spanner.attach(bcp, logical_tie)
        spanner.attach(technis, logical_tie)

def _apply_string_numerators_and_tech(staff, nums, tech):
    numerators = cyc(nums)
    techs = cyc(tech)
    logical_ties = abjad.select(staff[:]).by_leaf()
    spanner = abjad.BowContactSpanner()
    abjad.attach(spanner, logical_ties)

    for logical_tie in logical_ties:
        tech = next(techs)
        numerator = next(numerators)
        bcp = abjad.BowContactPoint((numerator, 5))
        technis = abjad.BowMotionTechnique(tech)
        spanner.attach(bcp, logical_tie)
        spanner.attach(technis, logical_tie)

###################
##### spanner #####
###################

_apply_string_numerators_and_tech(staff=violin_string_staff, nums=violin_string_nums, tech=string_tech)
_apply_string_numerators_and_tech(staff=viola_string_staff, nums=viola_string_nums, tech=string_tech)
_apply_string_numerators_and_tech(staff=cello_string_staff, nums=cello_string_nums, tech=string_tech)

_apply_bow_numerators_and_tech(staff=violin_bow_staff, nums=violin_bow_nums, tech=violin_bow_tech)
_apply_bow_numerators_and_tech(staff=viola_bow_staff, nums=viola_bow_nums, tech=viola_bow_tech)
_apply_bow_numerators_and_tech(staff=cello_bow_staff, nums=cello_bow_nums, tech=cello_bow_tech)

                            ###################
                            ##### cleanup #####
                            ###################
#
# ###################
# ##### violin ######
# ###################
#
# abjad.override(violin_string_staff).dots.staff_position = -8
# abjad.override(violin_string_staff).flag.Y_offset = -8.5
# abjad.override(violin_string_staff).glissando.bound_details__left__padding = 1.5
# abjad.override(violin_string_staff).glissando.bound_details__right__padding = 1.5
# abjad.override(violin_string_staff).glissando.thickness = 2
# abjad.override(violin_string_staff).script.staff_padding = 3
# abjad.override(violin_string_staff).staff_symbol.transparent = True
# abjad.override(violin_string_staff).stem.direction = Down
# abjad.override(violin_string_staff).stem.length = 8
# abjad.override(violin_string_staff).stem.stem_begin_position = -9
# abjad.override(violin_string_staff).time_signature.stencil = False
# abjad.override(violin_string_staff).rest.stencil = False
#
# abjad.override(violin_bow_staff).dots.stencil = False
# abjad.override(violin_bow_staff).flag.stencil = False
# abjad.override(violin_bow_staff).script.staff_padding = 3
# abjad.override(violin_bow_staff).staff_symbol.transparent = True
# abjad.override(violin_bow_staff).stem.stencil = False
# abjad.override(violin_bow_staff).time_signature.stencil = False
# abjad.override(violin_bow_staff).stem.direction = Down
# abjad.override(violin_bow_staff).beam.stencil = False
# abjad.override(violin_bow_staff).note_head.extra_offset = (0.05 , 0)
# abjad.override(violin_bow_staff).rest.stencil = False
# abjad.override(violin_bow_staff).script.staff_padding = 2.5
# abjad.override(violin_bow_staff).tuplet_bracket.stencil = False
# abjad.override(violin_bow_staff).tuplet_number.stencil = False
# abjad.override(violin_bow_staff).note_head.Y_offset = -5
# abjad.override(violin_bow_staff).glissando.bound_details__left__padding = 1.5
# abjad.override(violin_bow_staff).glissando.bound_details__right__padding = 1.5
# abjad.override(violin_bow_staff).glissando.thickness = 2
#
# abjad.override(violin_bow_beam_staff).note_head.no_ledgers = True
# abjad.override(violin_bow_beam_staff).note_head.stencil = False
# abjad.override(violin_bow_beam_staff).dots.staff_position = 8
# abjad.override(violin_bow_beam_staff).flag.Y_offset = 3
# abjad.override(violin_bow_beam_staff).script.staff_padding = 3
# abjad.override(violin_bow_beam_staff).staff_symbol.transparent = True
# abjad.override(violin_bow_beam_staff).stem.direction = Down
# abjad.override(violin_bow_beam_staff).stem.length = 10
# abjad.override(violin_bow_beam_staff).stem.stem_begin_position = 15.75
# abjad.override(violin_bow_beam_staff).time_signature.stencil = False
# abjad.override(violin_bow_beam_staff).beam.direction = Down
# abjad.override(violin_bow_beam_staff).beam.positions = (0 , 0)
# abjad.override(violin_bow_beam_staff).tuplet_bracket.positions = (-2 , -2)
# abjad.override(violin_bow_beam_staff).rest.stencil = False
# abjad.override(violin_bow_beam_staff).clef.stencil = False
#
# ###################
# ###### viola ######
# ###################
#
# abjad.override(viola_string_staff).dots.staff_position = -8
# abjad.override(viola_string_staff).flag.Y_offset = -8.5
# abjad.override(viola_string_staff).glissando.bound_details__left__padding = 1.5
# abjad.override(viola_string_staff).glissando.bound_details__right__padding = 1.5
# abjad.override(viola_string_staff).glissando.thickness = 2
# abjad.override(viola_string_staff).script.staff_padding = 3
# abjad.override(viola_string_staff).staff_symbol.transparent = True
# abjad.override(viola_string_staff).stem.direction = Down
# abjad.override(viola_string_staff).stem.length = 8
# abjad.override(viola_string_staff).stem.stem_begin_position = -9
# abjad.override(viola_string_staff).time_signature.stencil = False
# abjad.override(viola_string_staff).rest.stencil = False
#
# abjad.override(viola_bow_staff).dots.stencil = False
# abjad.override(viola_bow_staff).flag.stencil = False
# abjad.override(viola_bow_staff).script.staff_padding = 3
# abjad.override(viola_bow_staff).staff_symbol.transparent = True
# abjad.override(viola_bow_staff).stem.stencil = False
# abjad.override(viola_bow_staff).time_signature.stencil = False
# abjad.override(viola_bow_staff).stem.direction = Down
# abjad.override(viola_bow_staff).beam.stencil = False
# abjad.override(viola_bow_staff).note_head.extra_offset = (0.05 , 0)
# abjad.override(viola_bow_staff).rest.stencil = False
# abjad.override(viola_bow_staff).script.staff_padding = 2.5
# abjad.override(viola_bow_staff).tuplet_bracket.stencil = False
# abjad.override(viola_bow_staff).tuplet_number.stencil = False
# abjad.override(viola_bow_staff).note_head.Y_offset = -5
# abjad.override(viola_bow_staff).glissando.bound_details__left__padding = 1.5
# abjad.override(viola_bow_staff).glissando.bound_details__right__padding = 1.5
# abjad.override(viola_bow_staff).glissando.thickness = 2
#
# abjad.override(viola_bow_beam_staff).note_head.no_ledgers = True
# abjad.override(viola_bow_beam_staff).note_head.stencil = False
# abjad.override(viola_bow_beam_staff).dots.staff_position = 8
# abjad.override(viola_bow_beam_staff).flag.Y_offset = 3
# abjad.override(viola_bow_beam_staff).script.staff_padding = 3
# abjad.override(viola_bow_beam_staff).staff_symbol.transparent = True
# abjad.override(viola_bow_beam_staff).stem.direction = Down
# abjad.override(viola_bow_beam_staff).stem.length = 10
# abjad.override(viola_bow_beam_staff).stem.stem_begin_position = 15.75
# abjad.override(viola_bow_beam_staff).time_signature.stencil = False
# abjad.override(viola_bow_beam_staff).beam.direction = Down
# abjad.override(viola_bow_beam_staff).beam.positions = (0 , 0)
# abjad.override(viola_bow_beam_staff).tuplet_bracket.positions = (-2 , -2)
# abjad.override(viola_bow_beam_staff).rest.stencil = False
# abjad.override(viola_bow_beam_staff).clef.stencil = False
#
# ###################
# ###### cello ######
# ###################
#
# abjad.override(cello_string_staff).dots.staff_position = -8
# abjad.override(cello_string_staff).flag.Y_offset = -8.5
# abjad.override(cello_string_staff).glissando.bound_details__left__padding = 1.5
# abjad.override(cello_string_staff).glissando.bound_details__right__padding = 1.5
# abjad.override(cello_string_staff).glissando.thickness = 2
# abjad.override(cello_string_staff).script.staff_padding = 3
# abjad.override(cello_string_staff).staff_symbol.transparent = True
# abjad.override(cello_string_staff).stem.direction = Down
# abjad.override(cello_string_staff).stem.length = 8
# abjad.override(cello_string_staff).stem.stem_begin_position = -9
# abjad.override(cello_string_staff).time_signature.stencil = False
# abjad.override(cello_string_staff).rest.stencil = False
#
# abjad.override(cello_bow_staff).dots.stencil = False
# abjad.override(cello_bow_staff).flag.stencil = False
# abjad.override(cello_bow_staff).script.staff_padding = 3
# abjad.override(cello_bow_staff).staff_symbol.transparent = True
# abjad.override(cello_bow_staff).stem.stencil = False
# abjad.override(cello_bow_staff).time_signature.stencil = False
# abjad.override(cello_bow_staff).stem.direction = Down
# abjad.override(cello_bow_staff).beam.stencil = False
# abjad.override(cello_bow_staff).note_head.extra_offset = (0.05 , 0)
# abjad.override(cello_bow_staff).rest.stencil = False
# abjad.override(cello_bow_staff).script.staff_padding = 2.5
# abjad.override(cello_bow_staff).tuplet_bracket.stencil = False
# abjad.override(cello_bow_staff).tuplet_number.stencil = False
# abjad.override(cello_bow_staff).note_head.Y_offset = -5
# abjad.override(cello_bow_staff).glissando.bound_details__left__padding = 1.5
# abjad.override(cello_bow_staff).glissando.bound_details__right__padding = 1.5
# abjad.override(cello_bow_staff).glissando.thickness = 2
#
# abjad.override(cello_bow_beam_staff).note_head.no_ledgers = True
# abjad.override(cello_bow_beam_staff).note_head.stencil = False
# abjad.override(cello_bow_beam_staff).dots.staff_position = 8
# abjad.override(cello_bow_beam_staff).flag.Y_offset = 3
# abjad.override(cello_bow_beam_staff).script.staff_padding = 3
# abjad.override(cello_bow_beam_staff).staff_symbol.transparent = True
# abjad.override(cello_bow_beam_staff).stem.direction = Down
# abjad.override(cello_bow_beam_staff).stem.length = 10
# abjad.override(cello_bow_beam_staff).stem.stem_begin_position = 15.75
# abjad.override(cello_bow_beam_staff).time_signature.stencil = False
# abjad.override(cello_bow_beam_staff).beam.direction = Down
# abjad.override(cello_bow_beam_staff).beam.positions = (0 , 0)
# abjad.override(cello_bow_beam_staff).tuplet_bracket.positions = (-2 , -2)
# abjad.override(cello_bow_beam_staff).rest.stencil = False
# abjad.override(cello_bow_beam_staff).clef.stencil = False

################################################################################
############################## FINAL ASSEMBLY ##################################
################################################################################

violin_staff = abjad.StaffGroup(context_name='StaffGroup')
violin_staff.extend([violin_string_staff, violin_bow_staff, violin_bow_beam_staff, violin_lh_staff])

viola_staff = abjad.StaffGroup(context_name='StaffGroup')
viola_staff.extend([viola_string_staff, viola_bow_staff, viola_bow_beam_staff, viola_lh_staff])

cello_staff = abjad.StaffGroup(context_name='StaffGroup')
cello_staff.extend([cello_string_staff, cello_bow_staff, cello_bow_beam_staff, cello_lh_staff])

################################################################################
############################### FILE CLEANUP ###################################
################################################################################

score = abjad.Score()
score.extend([time_signature_staff_1, violin_staff, time_signature_staff_2, viola_staff, time_signature_staff_3, cello_staff, ])

metro = abjad.MetronomeMark((1, 2), 60)
abjad.attach(metro, violin_lh_staff[0][0])
violin = abjad.instrumenttools.Violin()
abjad.attach(violin, violin_lh_staff[0][0])

viola = abjad.instrumenttools.Viola()
abjad.attach(viola, viola_lh_staff[0][0])
alto_clef = abjad.Clef('alto')
abjad.attach(alto_clef, viola_lh_staff[0][0])

bass_clef = abjad.Clef('bass')
abjad.attach(bass_clef, cello_lh_staff[0][0])
cello = abjad.instrumenttools.Cello()
abjad.attach(cello, cello_lh_staff[0][0])

###################

score_file = abjad.LilyPondFile.new(
    score,
    global_staff_size=15,
    includes=['ekmel.ily', 'stylesheet.ily'],
    )
score_file.header_block.composer = 'Gregory Rowland Evans'
score_file.header_block.title = abjad.Markup("String Trio no.2").bold().fontsize(5)
score_file.header_block.subtitle = 'for violin, viola, and violoncello'
score_file.paper_block.top_margin = 20
score_file.paper_block.bottom_margin = 20
score_file.paper_block.system_count = 5

###################

#print(format(score_file))
directory = '/Users/evansdsg2/Scores/trio'
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
