import abjad
import abjadext.rmakers
import evans

silence_maker = abjadext.rmakers.stack(
    abjadext.rmakers.NoteRhythmMaker(),
    abjadext.rmakers.force_rest(abjad.select().leaves(pitched=True)),
)

rmaker_one = abjadext.rmakers.stack(
    abjadext.rmakers.talea(
        [2, 1, 5, 4, 1, 2, 3], 2, extra_counts=[0, -1, 2, 0, -3, 0, 0, 4, 3, 0, 2, 1]
    ),
    abjadext.rmakers.trivialize(abjad.select().tuplets()),
    abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
)

rhythm_handler_one = evans.RhythmHandler(
    rmaker=rmaker_one,
    forget=False,
    name="rhythm_handler_one",
)

#### SEGMENT 02

rmaker_two = abjadext.rmakers.stack(
    abjadext.rmakers.even_division(
        [
            16,
        ],
        extra_counts=[0, 1, -1, 0, 3],
    ),
    abjadext.rmakers.trivialize(abjad.select().tuplets()),
    abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
)

rhythm_handler_two = evans.RhythmHandler(
    rmaker=rmaker_two,
    forget=False,
    name="rhythm_handler_two",
)

#### SEGMENT 03

rmaker_three = abjadext.rmakers.stack(
    abjadext.rmakers.talea([40], 1, extra_counts=[0]),
    abjadext.rmakers.trivialize(abjad.select().tuplets()),
    abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
)

rhythm_handler_three = evans.RhythmHandler(
    rmaker=rmaker_three,
    forget=False,
    name="rhythm_handler_three",
)

#### SEGMENT 04

rmaker_four = abjadext.rmakers.stack(
    abjadext.rmakers.even_division(
        [
            16,
        ],
        extra_counts=[0],
    ),
    abjadext.rmakers.trivialize(abjad.select().tuplets()),
    abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
)

rhythm_handler_four = evans.RhythmHandler(
    rmaker=rmaker_four,
    forget=False,
    name="rhythm_handler_four",
)

#### SEGMENT 05

rmaker_five = abjadext.rmakers.stack(
    abjadext.rmakers.note(),
    abjadext.rmakers.trivialize(abjad.select().tuplets()),
    abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
)

rhythm_handler_five = evans.RhythmHandler(
    rmaker=rmaker_five,
    forget=False,
    name="rhythm_handler_five",
)
