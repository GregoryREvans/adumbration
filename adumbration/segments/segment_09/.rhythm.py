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
                                ('divisions_consumed', 7),
                                ('incomplete_last_note', True),
                                ('logical_ties_produced', 1),
                                ('talea_weight_consumed', 18),
                                ]
                            ),
                        ),
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
                                ('divisions_consumed', 6),
                                ('logical_ties_produced', 6),
                                ]
                            ),
                        ),
                    ]
                ),
            ),
        ]
    )