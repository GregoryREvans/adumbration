
    \context Score = "adumbration Score"
    <<

        \context TimeSignatureContext = "Global Context"
        {
            % [Global Context measure 1]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=153
            \time 3/4                                                          %! scaling time signatures
            \mark \markup {
                \bold
                    {
                    }
                }
            s1 * 3/4
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-mixed-number-markup #2 #0 #1 #"153" #"1" #"3"
                  \hspace #1
                  \upright [
                  \abjad-metric-modulation #3 #1 #2 #0 #'(0.6 . 0.6)
                  \hspace #0.5
                  \upright ]
              }
            }
            % [Global Context measure 2]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 2/4                                                          %! scaling time signatures
            s1 * 1/2
            % [Global Context measure 3]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4

        }

        \context StaffGroup = "Staff Group"
        <<

            \context Staff = "Staff 1"
            {
                \tag #'voice1 {

                \context Voice = "Voice 1"
                {
                    % [Voice 1 measure 1]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \set Staff.shortInstrumentName =                           %! applying staff names and clefs
                    \markup { "vn. I" }                                        %! applying staff names and clefs
                    \set Staff.instrumentName =                                %! applying staff names and clefs
                    "Violin I"                                                 %! applying staff names and clefs
                    \clef "treble"
                    \override Staff.Stem.stemlet-length = 0.75
                    c'16
                    \pp
                    ^ \markup { sp. }
                    [
                    (

                    cs'16

                    b16

                    \revert Staff.Stem.stemlet-length
                    d'16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    bf16
                    [

                    a16

                    af16

                    \revert Staff.Stem.stemlet-length
                    g16
                    )
                    ]

                    r4
                    % [Voice 1 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "16")
                    \times 4/5 {

                        \override Staff.Stem.stemlet-length = 0.75
                        f'16
                        \mp
                        [

                        f'16
                        (

                        af'16

                        a'16

                        \revert Staff.Stem.stemlet-length
                        bf'16
                        ]

                    }

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 4) "16")
                    \times 4/3 {
                        % [Voice 1 measure 3]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        f'16
                        [

                        c'16

                        \revert Staff.Stem.stemlet-length
                        af'16
                        )
                        ]

                    }

                    r2

                    \override Staff.Stem.stemlet-length = 0.75
                    b16
                    \f
                    [
                    (

                    a'16

                    g'16

                    \revert Staff.Stem.stemlet-length
                    fs'16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    f'16
                    [

                    \revert Staff.Stem.stemlet-length
                    c''16
                    )
                    ]

                    r8
                    \bar "||"

                }
                }

            }

            \context Staff = "Staff 2"
            {
                \tag #'voice2 {

                \context Voice = "Voice 2"
                {
                    % [Voice 2 measure 1]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \set Staff.shortInstrumentName =                           %! applying staff names and clefs
                    \markup { "vn. II" }                                       %! applying staff names and clefs
                    \set Staff.instrumentName =                                %! applying staff names and clefs
                    "Violin II"                                                %! applying staff names and clefs
                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    \clef "treble"
                    r1 * 3/8
                    \stopTextSpanOne                                           %! applying indicators

                    R1 * 3/8

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 8) "16")
                    \times 8/11 {
                        % [Voice 2 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        bf'16
                        \p
                        ^ \markup { sp. }
                        [

                        c'16

                        c'16
                        (

                        d'16

                        ef'16

                        af16

                        fs'16

                        g'16

                        ef'16

                        d'16

                        \revert Staff.Stem.stemlet-length
                        ef'16
                        ]

                    }
                    % [Voice 2 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    e'16
                    [

                    cs'16

                    g'16

                    \revert Staff.Stem.stemlet-length
                    bf16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    bf'16
                    [

                    \revert Staff.Stem.stemlet-length
                    fs'16
                    )
                    ]

                    r8

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 12) "16")
                    \times 12/13 {

                        \override Staff.Stem.stemlet-length = 0.75
                        e'16
                        \f
                        [
                        (

                        ef'16

                        d'16

                        cs'16

                        g'16

                        bf16

                        bf'16

                        b'16

                        c''16

                        f'16

                        b'16

                        bf'16

                        \revert Staff.Stem.stemlet-length
                        a'16
                        )
                        ]
                        \bar "||"

                    }

                }
                }

            }

            \context Staff = "Staff 3"
            {
                \tag #'voice3 {

                \context Voice = "Voice 3"
                {
                    % [Voice 3 measure 1]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \set Staff.shortInstrumentName =                           %! applying staff names and clefs
                    \markup { va. }                                            %! applying staff names and clefs
                    \set Staff.instrumentName =                                %! applying staff names and clefs
                    "Viola"                                                    %! applying staff names and clefs
                    \clef "varC"
                    r2

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 4) "16")
                    \times 4/3 {

                        \override Staff.Stem.stemlet-length = 0.75
                        g'16
                        \pp
                        ^ \markup { sp. }
                        [
                        (

                        af'16

                        \revert Staff.Stem.stemlet-length
                        a'16
                        ]

                    }
                    % [Voice 3 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    b'16
                    )
                    [

                    b'16
                    (

                    b16

                    \revert Staff.Stem.stemlet-length
                    a16
                    )
                    ]

                    r4
                    % [Voice 3 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 10) "16")
                    \times 10/13 {

                        \override Staff.Stem.stemlet-length = 0.75
                        af'16
                        \mf
                        [
                        (

                        b'16

                        c''16

                        cs''16

                        d''16

                        ef'16

                        d''16

                        e'16

                        f'16

                        fs'16

                        c'16

                        af'16
                        )

                        \revert Staff.Stem.stemlet-length
                        af'16
                        )
                        ]

                    }

                    r8

                    r4
                    \bar "||"

                }
                }

            }

            \context Staff = "Staff 4"
            {
                \tag #'voice4 {

                \context Voice = "Voice 4"
                {
                    % [Voice 4 measure 1]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \set Staff.shortInstrumentName =                           %! applying staff names and clefs
                    \markup { vc. }                                            %! applying staff names and clefs
                    \set Staff.instrumentName =                                %! applying staff names and clefs
                    "Violoncello"                                              %! applying staff names and clefs
                    \clef "bass"
                    r4

                    \override Staff.Stem.stemlet-length = 0.75
                    ef'16
                    \pp
                    ^ \markup { sp. }
                    [
                    (

                    e'16

                    f'16

                    \revert Staff.Stem.stemlet-length
                    fs'16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    f'16
                    [

                    e'16

                    ef'16

                    \revert Staff.Stem.stemlet-length
                    d'16
                    )
                    ]

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) "16")
                    \times 6/7 {
                        % [Voice 4 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        cs'16
                        [

                        cs'16

                        cs'16

                        bf16
                        (

                        e'16

                        g16

                        \revert Staff.Stem.stemlet-length
                        e'16
                        )
                        ]

                    }

                    r8

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) "16")
                    \times 8/7 {
                        % [Voice 4 measure 3]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        d'16
                        \mf
                        [
                        (

                        fs'16

                        b16

                        \clef "tenorvarC"
                        a'16

                        g'16

                        f'16

                        \revert Staff.Stem.stemlet-length
                        e'16
                        )
                        ]

                    }

                    r4

                    r4

                    \clef "treble"
                    \override Staff.Stem.stemlet-length = 0.75
                    cs''16
                    \f
                    [
                    (

                    fs'16

                    g'16

                    \revert Staff.Stem.stemlet-length
                    af'16
                    )
                    ]
                    \bar "||"

                }
                }

            }

        >>

    >>
