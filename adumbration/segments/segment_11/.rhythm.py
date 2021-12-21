import abjad
handler_to_value = dict(
    [
        (
            'silence_maker',
            dict(
                [
                    (
                        'state',
                        dict(
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
            dict(
                [
                    (
                        'state',
                        dict(
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
            dict(
                [
                    ('state', 2),
                    ]
                ),
            ),
        (
            'noise_rhythm_handler',
            dict(
                [
                    ('state', 3),
                    ]
                ),
            ),
        (
            'silence_handler',
            dict(
                [
                    (
                        'state',
                        dict(
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