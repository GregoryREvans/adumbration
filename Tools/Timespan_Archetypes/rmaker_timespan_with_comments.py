import itertools
import abjad
import abjadext.rmakers


# Define the time signatures we would like to apply against the timespan structure.


time_signatures = [
    abjad.TimeSignature(pair) for pair in [(4, 4), (3, 4), (4, 4), (3, 4)]
]


# Define rhythm-makers: two for actual music, one for silence.


rmaker_one = abjadext.rmakers.TaleaRhythmMaker(
    talea=abjadext.rmakers.Talea(
        counts=[1, 2, 3, 4],
        denominator=16,
        ),
    )

rmaker_two = abjadext.rmakers.TaleaRhythmMaker(
    talea=abjadext.rmakers.Talea(
        counts=[4, 3, 2, -1],
        denominator=8,
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


timespan_list = abjad.TimespanList([
    abjad.AnnotatedTimespan(
        start_offset=0,
        stop_offset=(1, 4),
        annotation=rmaker_one,
        ),
    abjad.AnnotatedTimespan(
        start_offset=(1, 4),
        stop_offset=(3, 4),
        annotation=rmaker_one,
        ),
    abjad.AnnotatedTimespan(
        start_offset=(3, 4),
        stop_offset=(8, 4),
        annotation=rmaker_two,
        ),
    abjad.AnnotatedTimespan(
        start_offset=(11, 4),
        stop_offset=(14, 4),
        annotation=rmaker_one,
        ),
    ])


# Guarantee that gaps in the timespan list are explicitly represented by
# vanilla timespan objects. Negative the timespan list to generate a new list
# containing timespans where there were previously gaps. Add that list into the
# original list and sort it.


negative_timespan_list = ~timespan_list
timespan_list.extend(negative_timespan_list)
timespan_list.sort()


# Split the timespan list via the time signatures and collect the shards into a
# new timespan list


offsets = abjad.mathtools.cumulative_sums([_.duration for _ in time_signatures])
shards = timespan_list.split_at_offsets(time_signatures)
timespan_list[:] = []  # empty the timespan list so we can rebuild it
for shard in shards:
    timespan_list.extend(shard)
timespan_list.sort()


# Define a helper function that takes a rhythm maker and some durations and
# outputs a container. This helper function also adds LilyPond analysis
# brackets to make it clearer where the phrase and sub-phrase boundaries are.


def make_container(rhythm_maker, durations):
    selections = rhythm_maker(durations)
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


staff = abjad.Staff()
for rhythm_maker, grouper in itertools.groupby(
    timespan_list,
    key=lambda timespan: getattr(timespan, 'annotation', silence_maker),
    # The key function attempts to get the "annotation" property of each
    # timespan in the timespan list. If a timespan has no "annotation", because
    # it is a normal un-annotated timespan, we return the silence rhythm-maker
    # as a fallback.
):
    durations = [timespan.duration for timespan in grouper]
    container = make_container(rhythm_maker, durations)
    staff.append(container)


# Teach the staff that it can draw the analysis brackets


staff.consists_commands.append('Horizontal_bracket_engraver')


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


# Collect the "global" context and the musical content into a score.


score = abjad.Score([global_context, staff])
abjad.show(score)
