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
            'Rhythm Handler',
            dict(
                [
                    (
                        'state',
                        dict(
                            [
                                ('divisions_consumed', 1),
                                ('logical_ties_produced', 2),
                                ]
                            ),
                        ),
                    ]
                ),
            ),
        ]
    )