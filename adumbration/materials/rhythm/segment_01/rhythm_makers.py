import abjad
import abjadext.rmakers
import evans


rmaker_one = abjadext.rmakers.stack(
    abjadext.rmakers.talea(
        [2, 1, 6, 4, 3, 5], 16, extra_counts=[0, -1, 0, 1, -1, 0, 1]
    ),
    abjadext.rmakers.trivialize(abjad.select().tuplets()),
    abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
)


rmaker_two = abjadext.rmakers.stack(
    abjadext.rmakers.talea(
        [2, 1, 5, 4, 1, 2, 3], 2, extra_counts=[0, -1, 2, 0, -3, 0, 0, 4, 3, 0, 2, 1]
    ),
    abjadext.rmakers.trivialize(abjad.select().tuplets()),
    abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
)


rmaker_three = abjadext.rmakers.stack(
    abjadext.rmakers.talea([3, 2, 4, 1, 5], 8, extra_counts=[0, 1, -1, 1, 0, -1]),
    abjadext.rmakers.trivialize(abjad.select().tuplets()),
    abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
)


rmaker_four = abjadext.rmakers.stack(
    abjadext.rmakers.talea(
        [3, 5, 7, 5, 3, 7, 3, 7, 5, 7, 5, 3, 5, 7, 3, 7, 3, 5],
        8,
        extra_counts=[0, 1, 0, -1],
    ),
    abjadext.rmakers.trivialize(abjad.select().tuplets()),
    abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
)


rmaker_five = abjadext.rmakers.stack(
    abjadext.rmakers.talea(
        [2, 1, 1, 3, 2, 4, 2, 1, 4, 12], 8, extra_counts=[1, 0, -1, 1, 0, 1, -1]
    ),
    abjadext.rmakers.trivialize(abjad.select().tuplets()),
    abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
)


rmaker_six = abjadext.rmakers.stack(
    abjadext.rmakers.even_division(
        [16, 16, 8, 16, 16], extra_counts=[0, 1, -1, 0, 1, 0, -1]
    ),
    abjadext.rmakers.trivialize(abjad.select().tuplets()),
    abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
)

rmaker_note = abjadext.rmakers.stack(
    abjadext.rmakers.note(),
    abjadext.rmakers.trivialize(abjad.select().tuplets()),
    abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
)
