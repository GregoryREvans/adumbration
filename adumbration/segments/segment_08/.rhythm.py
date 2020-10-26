import abjad
handler_to_value = abjad.OrderedDict(
    [
        (
            'rhythm_handler_eight',
            abjad.OrderedDict(
                [
                    (
                        'state',
                        abjad.OrderedDict(
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