import abjad
handler_to_value = abjad.OrderedDict(
    [
        (
            'Pitch Handler',
            abjad.OrderedDict(
                [
                    ('pitch_count', 10),
                    ('chord_boolean_count', -1),
                    ('chord_groups_count', -1),
                    ]
                ),
            ),
        (
            'Notehead Handler',
            abjad.OrderedDict(
                [
                    ('count', 10),
                    ('head_vector_count', 10),
                    ('transition_vector_count', 10),
                    ]
                ),
            ),
        (
            'dynamic_handler_1',
            abjad.OrderedDict(
                [
                    ('count_1', 18),
                    ('count_2', 8),
                    ('count_3', 9),
                    ('count_4', 9),
                    ('count_5', 18),
                    ]
                ),
            ),
        (
            'dynamic_handler_2',
            abjad.OrderedDict(
                [
                    ('count_1', 4),
                    ('count_2', 0),
                    ('count_3', 3),
                    ('count_4', 3),
                    ('count_5', 4),
                    ]
                ),
            ),
        (
            'dynamic_handler_3',
            abjad.OrderedDict(
                [
                    ('count_1', 12),
                    ('count_2', -1),
                    ('count_3', 12),
                    ('count_4', -1),
                    ('count_5', 12),
                    ]
                ),
            ),
        ]
    )