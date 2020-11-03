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
            'tap_rhythm_handler',
            abjad.OrderedDict(
                [
                    ('state', 0),
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
            abjad.OrderedDict(
                [
                    ('state', 1),
                    ]
                ),
            ),
        ]
    )