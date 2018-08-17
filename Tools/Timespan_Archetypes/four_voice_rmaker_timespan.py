import itertools
import abjad
import abjadext.rmakers

# Define the time signatures we would like to apply against the timespan structure.

time_signatures = [
    abjad.TimeSignature(pair) for pair in [(5, 4), (4, 4), (3, 4), (5, 4), (4, 4), (3, 4), (3, 4), (4, 4), (5, 4), (3, 4), (4, 4), (5, 4), ]
]

# Define rhythm-makers: two for actual music, one for silence.

rmaker_one = abjadext.rmakers.TaleaRhythmMaker(
    talea=abjadext.rmakers.Talea(
        counts=[1, 2, 3, 4],
        denominator=16,
        ),
    beam_specifier=abjadext.rmakers.BeamSpecifier(
        beam_divisions_together=True,
        beam_rests=False,
        ),
    )

rmaker_two = abjadext.rmakers.TaleaRhythmMaker(
    talea=abjadext.rmakers.Talea(
        counts=[4, 3, -1, 2,],
        denominator=8,
        ),
    beam_specifier=abjadext.rmakers.BeamSpecifier(
        beam_divisions_together=True,
        beam_rests=False,
        ),
    )

silence_maker = abjadext.rmakers.NoteRhythmMaker(
    division_masks=[
        abjadext.rmakers.SilenceMask(
            pattern=abjad.index([0], 1),
            ),
        ],
    )


# Define an initial timespan structure, annotated with rhythm-makers. This
# structure has not been split along meter boundaries. This structure does not
# contain timespans explicitly representing silence.


voice_1_timespan_list = abjad.TimespanList([
abjad.AnnotatedTimespan(start_offset=0, stop_offset=(3, 4), annotation=rmaker_one),
#abjad.AnnotatedTimespan(start_offset=(3, 4), stop_offset=(5, 4), annotation=None),
abjad.AnnotatedTimespan(start_offset=(5, 4), stop_offset=(8, 4), annotation=rmaker_one),
#abjad.AnnotatedTimespan(start_offset=(8, 4), stop_offset=(12, 4), annotation=None),
abjad.AnnotatedTimespan(start_offset=(12, 4), stop_offset=(15, 4), annotation=rmaker_two),
#abjad.AnnotatedTimespan(start_offset=(15, 4), stop_offset=(17, 4), annotation=None),
abjad.AnnotatedTimespan(start_offset=(17, 4), stop_offset=(20, 4), annotation=rmaker_one),
#abjad.AnnotatedTimespan(start_offset=(20, 4), stop_offset=(24, 4), annotation=None),
#abjad.AnnotatedTimespan(start_offset=(24, 4), stop_offset=(28, 4), annotation=None),
abjad.AnnotatedTimespan(start_offset=(28, 4), stop_offset=(31, 4), annotation=rmaker_two),
#abjad.AnnotatedTimespan(start_offset=(31, 4), stop_offset=(33, 4), annotation=None),
abjad.AnnotatedTimespan(start_offset=(33, 4), stop_offset=(36, 4), annotation=rmaker_two),
#abjad.AnnotatedTimespan(start_offset=(36, 4), stop_offset=(40, 4), annotation=None),
abjad.AnnotatedTimespan(start_offset=(40, 4), stop_offset=(43, 4), annotation=rmaker_one),
#abjad.AnnotatedTimespan(start_offset=(43, 4), stop_offset=(45, 4), annotation=None),
abjad.AnnotatedTimespan(start_offset=(45, 4), stop_offset=(48, 4), annotation=rmaker_two),
])


# Guarantee that gaps in the timespan list are explicitly represented by
# vanilla timespan objects. Negative the timespan list to generate a new list
# containing timespans where there were previously gaps. Add that list into the
# original list and sort it.


negative_timespan_list1 = ~voice_1_timespan_list
voice_1_timespan_list.extend(negative_timespan_list1)
voice_1_timespan_list.sort()


# Split the timespan list via the time signatures and collect the shards into a
# new timespan list


offsets = abjad.mathtools.cumulative_sums([_.duration for _ in time_signatures])
shards = voice_1_timespan_list.split_at_offsets(time_signatures)
voice_1_timespan_list[:] = []  # empty the timespan list so we can rebuild it
for shard in shards:
    voice_1_timespan_list.extend(shard)
voice_1_timespan_list.sort()


# Define a helper function that takes a rhythm maker and some durations and
# outputs a container. This helper function also adds LilyPond analysis
# brackets to make it clearer where the phrase and sub-phrase boundaries are.


def make_container(rhythm_maker, durations):
    state=rhythm_maker.state
    selections = rhythm_maker(durations, previous_state=state)
    container = abjad.Container(selections)
    # Add analysis brackets so we can see the phrasing graphically
    start_indicator = abjad.LilyPondLiteral('\startGroup', format_slot='after')
    stop_indicator = abjad.LilyPondLiteral('\stopGroup', format_slot='after')
    for cell in selections:
        cell_first_leaf = abjad.select(cell).leaves()[0]
        cell_last_leaf = abjad.select(cell).leaves()[-1]
        abjad.attach(start_indicator, cell_first_leaf)
        abjad.attach(stop_indicator, cell_last_leaf)
    # The extra space in the literals is a hack around a check for whether an
    # identical object has already been attached
    start_indicator = abjad.LilyPondLiteral('\startGroup ', format_slot='after')
    stop_indicator = abjad.LilyPondLiteral('\stopGroup ', format_slot='after')
    phrase_first_leaf = abjad.select(container).leaves()[0]
    phrase_last_leaf = abjad.select(container).leaves()[-1]
    abjad.attach(start_indicator, phrase_first_leaf)
    abjad.attach(stop_indicator, phrase_last_leaf)
    return container

# Loop over the timespan list, grouping timespans into phrases, with all
# timespans in each phrase having an identical rhythm maker.
# Run the rhythm maker against the durations of the timespans in the phrase and
# add the output to a staff.


staff1 = abjad.Staff()
for rhythm_maker, grouper in itertools.groupby(
    voice_1_timespan_list,
    key=lambda timespan: getattr(timespan, 'annotation', silence_maker),
    # The key function attempts to get the "annotation" property of each
    # timespan in the timespan list. If a timespan has no "annotation", because
    # it is a normal un-annotated timespan, we return the silence rhythm-maker
    # as a fallback.
):
    durations = [timespan.duration for timespan in grouper]
    container = make_container(rhythm_maker, durations)
    staff1.append(container)


# Teach the staff that it can draw the analysis brackets


staff1.consists_commands.append('Horizontal_bracket_engraver')

############
voice_2_timespan_list = abjad.TimespanList([
abjad.AnnotatedTimespan(start_offset=0, stop_offset=(4, 4), annotation=silence_maker),
abjad.AnnotatedTimespan(start_offset=(4, 4), stop_offset=(7, 4), annotation=rmaker_two),
#abjad.AnnotatedTimespan(start_offset=(7, 4), stop_offset=(9, 4), annotation='None'),
abjad.AnnotatedTimespan(start_offset=(9, 4), stop_offset=(12, 4), annotation=rmaker_one),
#abjad.AnnotatedTimespan(start_offset=(12, 4), stop_offset=(16, 4), annotation='None'),
abjad.AnnotatedTimespan(start_offset=(16, 4), stop_offset=(19, 4), annotation=rmaker_two),
#abjad.AnnotatedTimespan(start_offset=(19, 4), stop_offset=(21, 4), annotation='None'),
abjad.AnnotatedTimespan(start_offset=(21, 4), stop_offset=(24, 4), annotation=rmaker_one),
abjad.AnnotatedTimespan(start_offset=(24, 4), stop_offset=(27, 4), annotation=rmaker_one),
#abjad.AnnotatedTimespan(start_offset=(27, 4), stop_offset=(29, 4), annotation='None'),
abjad.AnnotatedTimespan(start_offset=(29, 4), stop_offset=(32, 4), annotation=rmaker_two),
#abjad.AnnotatedTimespan(start_offset=(32, 4), stop_offset=(36, 4), annotation='None'),
abjad.AnnotatedTimespan(start_offset=(36, 4), stop_offset=(39, 4), annotation=rmaker_one),
#abjad.AnnotatedTimespan(start_offset=(39, 4), stop_offset=(41, 4), annotation='None'),
abjad.AnnotatedTimespan(start_offset=(41, 4), stop_offset=(44, 4), annotation=rmaker_two),
abjad.AnnotatedTimespan(start_offset=(44, 4), stop_offset=(48, 4), annotation=silence_maker),
])

negative_timespan_list2 = ~voice_2_timespan_list
voice_2_timespan_list.extend(negative_timespan_list2)
voice_2_timespan_list.sort()


offsets = abjad.mathtools.cumulative_sums([_.duration for _ in time_signatures])
shards = voice_2_timespan_list.split_at_offsets(time_signatures)
voice_2_timespan_list[:] = []  # empty the timespan list so we can rebuild it
for shard in shards:
    voice_2_timespan_list.extend(shard)
voice_2_timespan_list.sort()



def make_container(rhythm_maker, durations):
    state=rhythm_maker.state
    selections = rhythm_maker(durations, previous_state=state)
    container = abjad.Container(selections)

    start_indicator = abjad.LilyPondLiteral('\startGroup', format_slot='after')
    stop_indicator = abjad.LilyPondLiteral('\stopGroup', format_slot='after')
    for cell in selections:
        cell_first_leaf = abjad.select(cell).leaves()[0]
        cell_last_leaf = abjad.select(cell).leaves()[-1]
        abjad.attach(start_indicator, cell_first_leaf)
        abjad.attach(stop_indicator, cell_last_leaf)

    start_indicator = abjad.LilyPondLiteral('\startGroup ', format_slot='after')
    stop_indicator = abjad.LilyPondLiteral('\stopGroup ', format_slot='after')
    phrase_first_leaf = abjad.select(container).leaves()[0]
    phrase_last_leaf = abjad.select(container).leaves()[-1]
    abjad.attach(start_indicator, phrase_first_leaf)
    abjad.attach(stop_indicator, phrase_last_leaf)
    return container


staff2 = abjad.Staff()
for rhythm_maker, grouper in itertools.groupby(
    voice_2_timespan_list,
    key=lambda timespan: getattr(timespan, 'annotation', silence_maker),

):
    durations = [timespan.duration for timespan in grouper]
    container = make_container(rhythm_maker, durations)
    staff2.append(container)


staff2.consists_commands.append('Horizontal_bracket_engraver')
############

############
voice_3_timespan_list = abjad.TimespanList([
abjad.AnnotatedTimespan(start_offset=0, stop_offset=(2, 4), annotation=silence_maker),
abjad.AnnotatedTimespan(start_offset=(2, 4), stop_offset=(5, 4), annotation=rmaker_one),
#abjad.AnnotatedTimespan(start_offset=(5, 4), stop_offset=(9, 4), annotation='None'),
abjad.AnnotatedTimespan(start_offset=(9, 4), stop_offset=(12, 4), annotation=rmaker_two),
#abjad.AnnotatedTimespan(start_offset=(12, 4), stop_offset=(14, 4), annotation='None'),
abjad.AnnotatedTimespan(start_offset=(14, 4), stop_offset=(17, 4), annotation=rmaker_two),
#abjad.AnnotatedTimespan(start_offset=(17, 4), stop_offset=(21, 4), annotation='None'),
abjad.AnnotatedTimespan(start_offset=(21, 4), stop_offset=(24, 4), annotation=rmaker_one),
abjad.AnnotatedTimespan(start_offset=(24, 4), stop_offset=(27, 4), annotation=rmaker_two),
#abjad.AnnotatedTimespan(start_offset=(27, 4), stop_offset=(31, 4), annotation='None'),
abjad.AnnotatedTimespan(start_offset=(31, 4), stop_offset=(34, 4), annotation=rmaker_one),
#abjad.AnnotatedTimespan(start_offset=(34, 4), stop_offset=(36, 4), annotation='None'),
abjad.AnnotatedTimespan(start_offset=(36, 4), stop_offset=(39, 4), annotation=rmaker_one),
#abjad.AnnotatedTimespan(start_offset=(39, 4), stop_offset=(43, 4), annotation='None'),
abjad.AnnotatedTimespan(start_offset=(43, 4), stop_offset=(46, 4), annotation=rmaker_two),
abjad.AnnotatedTimespan(start_offset=(46, 4), stop_offset=(48, 4), annotation=silence_maker),
])

negative_timespan_list3 = ~voice_3_timespan_list
voice_3_timespan_list.extend(negative_timespan_list3)
voice_3_timespan_list.sort()


offsets = abjad.mathtools.cumulative_sums([_.duration for _ in time_signatures])
shards = voice_3_timespan_list.split_at_offsets(time_signatures)
voice_3_timespan_list[:] = []  # empty the timespan list so we can rebuild it
for shard in shards:
    voice_3_timespan_list.extend(shard)
voice_3_timespan_list.sort()



def make_container(rhythm_maker, durations):
    state=rhythm_maker.state
    selections = rhythm_maker(durations, previous_state=state)
    container = abjad.Container(selections)

    start_indicator = abjad.LilyPondLiteral('\startGroup', format_slot='after')
    stop_indicator = abjad.LilyPondLiteral('\stopGroup', format_slot='after')
    for cell in selections:
        cell_first_leaf = abjad.select(cell).leaves()[0]
        cell_last_leaf = abjad.select(cell).leaves()[-1]
        abjad.attach(start_indicator, cell_first_leaf)
        abjad.attach(stop_indicator, cell_last_leaf)

    start_indicator = abjad.LilyPondLiteral('\startGroup ', format_slot='after')
    stop_indicator = abjad.LilyPondLiteral('\stopGroup ', format_slot='after')
    phrase_first_leaf = abjad.select(container).leaves()[0]
    phrase_last_leaf = abjad.select(container).leaves()[-1]
    abjad.attach(start_indicator, phrase_first_leaf)
    abjad.attach(stop_indicator, phrase_last_leaf)
    return container


staff3 = abjad.Staff()
for rhythm_maker, grouper in itertools.groupby(
    voice_3_timespan_list,
    key=lambda timespan: getattr(timespan, 'annotation', silence_maker),

):
    durations = [timespan.duration for timespan in grouper]
    container = make_container(rhythm_maker, durations)
    staff3.append(container)


staff3.consists_commands.append('Horizontal_bracket_engraver')
############

############
voice_4_timespan_list = abjad.TimespanList([
abjad.AnnotatedTimespan(start_offset=0, stop_offset=(3, 4), annotation=rmaker_two),
#abjad.AnnotatedTimespan(start_offset=(3, 4), stop_offset=(6, 4), annotation=None),
abjad.AnnotatedTimespan(start_offset=(6, 4), stop_offset=(9, 4), annotation=rmaker_two),
#abjad.AnnotatedTimespan(start_offset=(9, 4), stop_offset=(10, 4), annotation=None),
abjad.AnnotatedTimespan(start_offset=(10, 4), stop_offset=(13, 4), annotation=rmaker_one),
#abjad.AnnotatedTimespan(start_offset=(13, 4), stop_offset=(17, 4), annotation=None),
abjad.AnnotatedTimespan(start_offset=(17, 4), stop_offset=(21, 4), annotation=rmaker_two),
#abjad.AnnotatedTimespan(start_offset=(21, 4), stop_offset=(23, 4), annotation=None),
#abjad.AnnotatedTimespan(start_offset=(23, 4), stop_offset=(25, 4), annotation=None),
abjad.AnnotatedTimespan(start_offset=(25, 4), stop_offset=(29, 4), annotation=rmaker_one),
#abjad.AnnotatedTimespan(start_offset=(29, 4), stop_offset=(33, 4), annotation=None),
abjad.AnnotatedTimespan(start_offset=(33, 4), stop_offset=(36, 4), annotation=rmaker_one),
#abjad.AnnotatedTimespan(start_offset=(36, 4), stop_offset=(38, 4), annotation=None),
abjad.AnnotatedTimespan(start_offset=(38, 4), stop_offset=(41, 4), annotation=rmaker_two),
#abjad.AnnotatedTimespan(start_offset=(41, 4), stop_offset=(45, 4), annotation=None),
abjad.AnnotatedTimespan(start_offset=(45, 4), stop_offset=(48, 4), annotation=rmaker_one),
])

negative_timespan_list4 = ~voice_4_timespan_list
voice_4_timespan_list.extend(negative_timespan_list4)
voice_4_timespan_list.sort()


offsets = abjad.mathtools.cumulative_sums([_.duration for _ in time_signatures])
shards = voice_4_timespan_list.split_at_offsets(time_signatures)
voice_4_timespan_list[:] = []  # empty the timespan list so we can rebuild it
for shard in shards:
    voice_4_timespan_list.extend(shard)
voice_4_timespan_list.sort()



def make_container(rhythm_maker, durations):
    state=rhythm_maker.state
    selections = rhythm_maker(durations, previous_state=state)
    container = abjad.Container(selections)

    start_indicator = abjad.LilyPondLiteral('\startGroup', format_slot='after')
    stop_indicator = abjad.LilyPondLiteral('\stopGroup', format_slot='after')
    for cell in selections:
        cell_first_leaf = abjad.select(cell).leaves()[0]
        cell_last_leaf = abjad.select(cell).leaves()[-1]
        abjad.attach(start_indicator, cell_first_leaf)
        abjad.attach(stop_indicator, cell_last_leaf)

    start_indicator = abjad.LilyPondLiteral('\startGroup ', format_slot='after')
    stop_indicator = abjad.LilyPondLiteral('\stopGroup ', format_slot='after')
    phrase_first_leaf = abjad.select(container).leaves()[0]
    phrase_last_leaf = abjad.select(container).leaves()[-1]
    abjad.attach(start_indicator, phrase_first_leaf)
    abjad.attach(stop_indicator, phrase_last_leaf)
    return container


staff4 = abjad.Staff()
for rhythm_maker, grouper in itertools.groupby(
    voice_4_timespan_list,
    key=lambda timespan: getattr(timespan, 'annotation', silence_maker),

):
    durations = [timespan.duration for timespan in grouper]
    container = make_container(rhythm_maker, durations)
    staff4.append(container)


staff4.consists_commands.append('Horizontal_bracket_engraver')
############

# Create a "global" context. I'm just going to use a normal staff here.
# Normally this is a full-blown context definition with many overrides.
# We fill this context with whole note skips, with multipliers and time
# signatures attached.
# See: https://github.com/Abjad/abjad/blob/master/docs/source/_stylesheets/rhythm-maker-docs.ily


global_context = abjad.Staff()
for time_signature in time_signatures:
    skip = abjad.Skip(1)
    abjad.attach(abjad.Multiplier(time_signature), skip)
    abjad.attach(time_signature, skip)
    global_context.append(skip)

# split and rewite meters
abjad.mutate(staff1[:]).split(time_signatures)
abjad.mutate(staff2[:]).split(time_signatures)
abjad.mutate(staff3[:]).split(time_signatures)
abjad.mutate(staff4[:]).split(time_signatures)

for measure in abjad.iterate(staff1).components(abjad.Measure):
    abjad.mutate(measure[:]).rewrite_meter(measure)

for measure in abjad.iterate(staff2).components(abjad.Measure):
    abjad.mutate(measure[:]).rewrite_meter(measure)

for measure in abjad.iterate(staff3).components(abjad.Measure):
    abjad.mutate(measure[:]).rewrite_meter(measure)

for measure in abjad.iterate(staff4).components(abjad.Measure):
    abjad.mutate(measure[:]).rewrite_meter(measure)

# Collect the "global" context and the musical content into a score.

voices = abjad.StaffGroup([staff1, staff2, staff3, staff4])
score = abjad.Score([global_context, voices])
abjad.show(score)
