import abjad
handler_to_value = dict(
    [
        (
            'rhythm_handler_eight',
            dict(
                [
                    (
                        'state',
                        dict(
                            [
                                ('divisions_consumed', 8),
                                ('incomplete_last_note', True),
                                ('logical_ties_produced', 5),
                                ('talea_weight_consumed', 19),
                                ]
                            ),
                        ),
                    ]
                ),
            ),
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
        ]
    )