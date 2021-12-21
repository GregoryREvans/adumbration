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
            'tap_rhythm_handler',
            dict(
                [
                    ('state', 0),
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
                                ('divisions_consumed', 5),
                                ('incomplete_last_note', True),
                                ('logical_ties_produced', 1),
                                ('talea_weight_consumed', 26),
                                ]
                            ),
                        ),
                    ]
                ),
            ),
        (
            'noise_rhythm_handler',
            dict(
                [
                    ('state', 1),
                    ]
                ),
            ),
        ]
    )