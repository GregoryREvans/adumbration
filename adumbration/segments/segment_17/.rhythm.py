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
            'Composite Handler',
            dict(
                [
                    (
                        'state',
                        dict(
                            [
                                ('divisions_consumed', 44),
                                ('incomplete_last_note', True),
                                ('logical_ties_produced', 218),
                                ('talea_weight_consumed', 310),
                                ]
                            ),
                        ),
                    ]
                ),
            ),
        ]
    )