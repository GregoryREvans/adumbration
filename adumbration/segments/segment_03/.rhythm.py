import abjad
handler_to_value = abjad.OrderedDict(
    [
        (
            'rhythm_handler_three',
            abjad.OrderedDict(
                [
                    (
                        'state',
                        abjad.OrderedDict(
                            [
                                ('divisions_consumed', 20),
                                ('incomplete_last_note', True),
                                ('logical_ties_produced', 1),
                                ('talea_weight_consumed', 28),
                                ]
                            ),
                        ),
                    ]
                ),
            ),
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
        ]
    )