import abjad
handler_to_value = abjad.OrderedDict(
    [
        (
            'silence_maker',
            abjad.OrderedDict(
                [
                    (
                        'state',
                        abjad.OrderedDict(
                            [
                                ('divisions_consumed', 1),
                                ('logical_ties_produced', 1),
                                ]
                            ),
                        ),
                    ]
                ),
            ),
        (
            'long_rhythm_handler',
            abjad.OrderedDict(
                [
                    (
                        'state',
                        abjad.OrderedDict(
                            [
                                ('divisions_consumed', 25),
                                ('incomplete_last_note', True),
                                ('logical_ties_produced', 2),
                                ('talea_weight_consumed', 75),
                                ]
                            ),
                        ),
                    ]
                ),
            ),
        (
            'tap_rhythm_handler',
            abjad.OrderedDict(
                [
                    ('state', 2),
                    ]
                ),
            ),
        (
            'noise_rhythm_handler',
            abjad.OrderedDict(
                [
                    ('state', 3),
                    ]
                ),
            ),
        (
            'silence_handler',
            abjad.OrderedDict(
                [
                    (
                        'state',
                        abjad.OrderedDict(
                            [
                                ('divisions_consumed', 2),
                                ('logical_ties_produced', 2),
                                ]
                            ),
                        ),
                    ]
                ),
            ),
        ]
    )