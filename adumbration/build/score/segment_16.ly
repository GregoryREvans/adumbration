
    \context Score = "adumbration Score"
    <<

        \context TimeSignatureContext = "Global Context"
        {
            % [Global Context measure 1]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=38
            \time 4/4                                                          %! scaling time signatures
            \mark \markup {
                \bold
                    {
                    }
                }
            s1 * 1
            ^ \markup {
                \box
                    \override
                        #'(font-name . "STIXGeneral Bold")
                        \caps
                            Anomaly
                }
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-mixed-number-markup #2 #0 #1 #"38" #"1" #"3"
                  \hspace #1
                  \upright [
                  \abjad-metric-modulation #1 #0 #2 #0 #'(0.6 . 0.6)
                  \hspace #0.5
                  \upright ]
              }
            }
            % [Global Context measure 2]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 3]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 4]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 5]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 6]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 7]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 8]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 9]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            - \abjad-dashed-line-with-arrow
            - \baca-metronome-mark-spanner-left-text 2 0 1 "38.3"
            - \tweak padding #0.2
            - \tweak staff-padding #0.2
            - \tweak font-size #2
            \bacaStartTextSpanMM
            % [Global Context measure 10]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            \bacaStopTextSpanMM
            - \abjad-invisible-line
            - \baca-metronome-mark-spanner-left-text 2 0 1 "60"
            - \tweak padding #0.2
            - \tweak staff-padding #0.2
            - \tweak font-size #2
            \bacaStartTextSpanMM
            % [Global Context measure 11]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            \bacaStopTextSpanMM
            % [Global Context measure 12]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            - \abjad-dashed-line-with-arrow
            - \baca-metronome-mark-spanner-left-text 2 0 1 "60"
            - \tweak padding #0.2
            - \tweak staff-padding #0.2
            - \tweak font-size #2
            \bacaStartTextSpanMM
            % [Global Context measure 13]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            \bacaStopTextSpanMM
            - \abjad-invisible-line
            - \baca-metronome-mark-spanner-left-text 2 0 1 "90"
            - \tweak padding #0.2
            - \tweak staff-padding #0.2
            - \tweak font-size #2
            \bacaStartTextSpanMM
            % [Global Context measure 14]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            \bacaStopTextSpanMM
            % [Global Context measure 15]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            - \abjad-dashed-line-with-arrow
            - \baca-metronome-mark-spanner-left-text 2 0 1 "90"
            - \tweak padding #0.2
            - \tweak staff-padding #0.2
            - \tweak font-size #2
            \bacaStartTextSpanMM
            % [Global Context measure 16]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            \bacaStopTextSpanMM
            - \abjad-invisible-line
            - \baca-metronome-mark-spanner-left-text 2 0 1 "115"
            - \tweak padding #0.2
            - \tweak staff-padding #0.2
            - \tweak font-size #2
            \bacaStartTextSpanMM

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
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    d''2
                    \f
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +2
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    d''2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +2
                        }
                    % [Voice 1 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-two-syntonic-comma-up 
                    gf''2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +29
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-two-syntonic-comma-up 
                    gf''2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +29
                        }
                    % [Voice 1 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-two-syntonic-comma-up 
                    gf''2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +29
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-two-syntonic-comma-up 
                    gf''2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +29
                        }
                    % [Voice 1 measure 4]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    c''2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            -2
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    c''2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            -2
                        }
                    % [Voice 1 measure 5]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    d''2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +2
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    d''2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +2
                        }
                    % [Voice 1 measure 6]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    d''2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +2
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    d''2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +2
                        }
                    % [Voice 1 measure 7]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    c''2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            -2
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    c''2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            -2
                        }
                    % [Voice 1 measure 8]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    d''2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +2
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    d''2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +2
                        }
                    % [Voice 1 measure 9]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    d''2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +2
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    d''2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +2
                        }
                    % [Voice 1 measure 10]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-two-syntonic-comma-up 
                    gf''2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +29
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-two-syntonic-comma-up 
                    gf''2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +29
                        }
                    % [Voice 1 measure 11]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-two-syntonic-comma-up 
                    gf''2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +29
                        }

                    r2
                    % [Voice 1 measure 12]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    c''2
                    \f
                    - \tenuto
                    ^ \markup {
                        \center-align
                            -2
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    c''2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            -2
                        }
                    % [Voice 1 measure 13]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    r8
                    [

                    cs''16
                    \mp
                    - \staccato

                    \revert Staff.Stem.stemlet-length
                    d''16
                    - \staccato
                    ~
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    d''16
                    [

                    bf'16
                    - \staccato

                    b'16
                    - \staccato

                    \revert Staff.Stem.stemlet-length
                    r16
                    ]

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    d''2
                    \f
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +2
                        }
                    % [Voice 1 measure 14]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    d''2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +2
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    d''2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +2
                        }

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) "16")
                    \times 8/9 {
                        % [Voice 1 measure 15]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        r8.
                        [

                        bqs'16
                        \mf
                        - \staccato

                        c''8
                        - \staccato

                        \revert Staff.Stem.stemlet-length
                        cqs''8.
                        - \staccato
                        ]

                    }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    d''2
                    \f
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +2
                        }
                    % [Voice 1 measure 16]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-two-syntonic-comma-up 
                    gf''2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +29
                        }

                    \override Staff.Stem.stemlet-length = 0.75
                    r8.
                    [

                    \revert Staff.Stem.stemlet-length
                    cs''16
                    \f
                    - \staccato
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    b'16
                    - \staccato
                    [

                    cs''16
                    - \staccato

                    dqf''16
                    - \staccato

                    \revert Staff.Stem.stemlet-length
                    r16
                    ]
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
                    \clef "treble"
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    bf'2
                    \f
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +16
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    bf'2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +16
                        }
                    % [Voice 2 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    bf'2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +16
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    bf'2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +16
                        }
                    % [Voice 2 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    bf'2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +16
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    bf'2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +16
                        }
                    % [Voice 2 measure 4]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    bf'2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +16
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    bf'2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +16
                        }
                    % [Voice 2 measure 5]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    bf'2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +16
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    bf'2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +16
                        }
                    % [Voice 2 measure 6]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    bf'2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +16
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    bf'2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +16
                        }
                    % [Voice 2 measure 7]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    bf'2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +16
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    bf'2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +16
                        }
                    % [Voice 2 measure 8]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    bf'2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +16
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    bf'2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +16
                        }
                    % [Voice 2 measure 9]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    bf'2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +16
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    bf'2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +16
                        }
                    % [Voice 2 measure 10]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    bf'2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +16
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    bf'2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +16
                        }
                    % [Voice 2 measure 11]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    bf'2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +16
                        }

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) "16")
                    \times 8/9 {

                        \override Staff.Stem.stemlet-length = 0.75
                        r8.
                        [

                        cs''16
                        \mp
                        - \staccato

                        d''16
                        - \staccato

                        bf'8
                        - \staccato

                        b'16
                        - \staccato

                        \revert Staff.Stem.stemlet-length
                        r16
                        ]

                    }
                    % [Voice 2 measure 12]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    bf'2
                    \f
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +16
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    bf'2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +16
                        }
                    % [Voice 2 measure 13]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2.

                    \override Staff.Stem.stemlet-length = 0.75
                    r16
                    [

                    bqs'16
                    \p
                    - \staccato
                    ~

                    bqs'16

                    \revert Staff.Stem.stemlet-length
                    c''16
                    - \staccato
                    ]
                    % [Voice 2 measure 14]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    cqs''2
                    \f
                    - \tenuto

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    bf'2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +16
                        }

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) "16")
                    \times 8/9 {
                        % [Voice 2 measure 15]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        r8
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \flat-one-syntonic-comma-up 
                        ef'16
                        \mf
                        - \staccato
                        ^ \markup {
                            \center-align
                                +16
                            }

                        cs''16
                        - \staccato

                        b'16
                        - \staccato

                        cs''8
                        - \staccato

                        r16

                        \revert Staff.Stem.stemlet-length
                        dqf''16
                        \mp
                        - \staccato
                        ]

                    }

                    r4

                    \override Staff.Stem.stemlet-length = 0.75
                    d''16
                    \mf
                    - \staccato
                    [

                    dqs''16
                    - \staccato
                    ~

                    dqs''16

                    \revert Staff.Stem.stemlet-length
                    e''16
                    - \staccato
                    ~
                    ]

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) "16")
                    \times 8/9 {
                        % [Voice 2 measure 16]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        e''8
                        [

                        f''8
                        - \staccato

                        r16

                        cs''16
                        \f
                        - \staccato

                        \revert Staff.Stem.stemlet-length
                        r8.
                        ]

                    }

                    \override Staff.Stem.stemlet-length = 0.75
                    d''16
                    \mp
                    - \staccato
                    [

                    dqs''16
                    - \staccato
                    ~

                    dqs''16

                    \revert Staff.Stem.stemlet-length
                    ef''16
                    - \staccato
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    eqf''16
                    - \staccato
                    [

                    r16

                    \revert Staff.Stem.stemlet-length
                    e''8
                    \p
                    - \staccato
                    ]
                    \bar "||"

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
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \natural-one-syntonic-comma-down 
                    b2
                    \f
                    - \tenuto
                    ^ \markup {
                        \center-align
                            -14
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    ef'2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +14
                        }
                    % [Voice 3 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    ef'2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +14
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    ef'2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +14
                        }
                    % [Voice 3 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    ef'2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +14
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    ef'2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +14
                        }
                    % [Voice 3 measure 4]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    ef'2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +14
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    ef'2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +14
                        }
                    % [Voice 3 measure 5]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    ef'2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +14
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \natural-one-syntonic-comma-down 
                    b2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            -14
                        }
                    % [Voice 3 measure 6]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \natural-one-syntonic-comma-down 
                    b2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            -14
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    ef'2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +14
                        }
                    % [Voice 3 measure 7]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    ef'2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +14
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    ef'2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +14
                        }
                    % [Voice 3 measure 8]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    ef'2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +14
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    ef'2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +14
                        }
                    % [Voice 3 measure 9]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \natural-one-syntonic-comma-down 
                    b2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            -14
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    ef'2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +14
                        }
                    % [Voice 3 measure 10]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    ef'2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +14
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    ef'2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +14
                        }
                    % [Voice 3 measure 11]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    ef'2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +14
                        }

                    r2
                    % [Voice 3 measure 12]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    ef'2
                    \f
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +14
                        }

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) "16")
                    \times 8/9 {

                        \override Staff.Stem.stemlet-length = 0.75
                        r8
                        [

                        cs''8
                        \mf
                        - \staccato

                        d''8.
                        - \staccato

                        \revert Staff.Stem.stemlet-length
                        bf'8
                        - \staccato
                        ]

                    }
                    % [Voice 3 measure 13]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    b'16
                    - \staccato
                    [

                    r16

                    bqs'16
                    \mp
                    - \staccato

                    \revert Staff.Stem.stemlet-length
                    r16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    r8
                    [

                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \natural-one-syntonic-comma-down 
                    e8
                    \mf
                    - \staccato
                    ^ \markup {
                        \center-align
                            -14
                        }
                    ]

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \natural-one-syntonic-comma-down 
                    b2
                    \f
                    - \tenuto
                    ^ \markup {
                        \center-align
                            -14
                        }
                    % [Voice 3 measure 14]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    c''2
                    - \tenuto

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) "16")
                    \times 8/9 {

                        \override Staff.Stem.stemlet-length = 0.75
                        r8
                        [

                        cqs''16
                        \f
                        - \staccato

                        cs''8
                        - \staccato

                        b'16
                        - \staccato

                        cs''16
                        - \staccato

                        \revert Staff.Stem.stemlet-length
                        r8
                        ]

                    }
                    % [Voice 3 measure 15]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    dqf''8.
                    \mp
                    - \staccato
                    [

                    \revert Staff.Stem.stemlet-length
                    r16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    r8.
                    [

                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    af16
                    \p
                    - \staccato
                    ^ \markup {
                        \center-align
                            +14
                        }
                    ]

                    d''2
                    \f
                    - \tenuto

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) "16")
                    \times 8/9 {
                        % [Voice 3 measure 16]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        r8
                        [

                        dqs''16
                        \mf
                        - \staccato

                        e''8
                        - \staccato

                        f''16
                        - \staccato

                        cs''16
                        - \staccato

                        r16

                        \revert Staff.Stem.stemlet-length
                        d''16
                        \mp
                        - \staccato
                        ~
                        ]

                    }

                    \override Staff.Stem.stemlet-length = 0.75
                    d''16
                    [

                    \revert Staff.Stem.stemlet-length
                    r8.
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    r16
                    [

                    \revert Staff.Stem.stemlet-length
                    dqs''8.
                    \mf
                    - \staccato
                    ]
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
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    g,2
                    \f
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +0
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    g,2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +0
                        }
                    % [Voice 4 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    g,2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +0
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-two-syntonic-comma-up 
                    cf2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +27
                        }
                    % [Voice 4 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-two-syntonic-comma-up 
                    cf2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +27
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    g,2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +0
                        }
                    % [Voice 4 measure 4]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    g,2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +0
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    g,2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +0
                        }
                    % [Voice 4 measure 5]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    g,2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +0
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    g,2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +0
                        }
                    % [Voice 4 measure 6]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    g,2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +0
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    g,2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +0
                        }
                    % [Voice 4 measure 7]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    g,2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +0
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    g,2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +0
                        }
                    % [Voice 4 measure 8]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    g,2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +0
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    g,2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +0
                        }
                    % [Voice 4 measure 9]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    g,2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +0
                        }

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) "16")
                    \times 8/9 {

                        \override Staff.Stem.stemlet-length = 0.75
                        r8.
                        [

                        \clef "treble"
                        cs''16
                        \f
                        - \staccato

                        d''16
                        - \staccato

                        bf'16
                        - \staccato

                        \clef "bass"
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural 
                        c,16
                        - \staccato
                        ^ \markup {
                            \center-align
                                +0
                            }

                        r16

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \flat-two-syntonic-comma-up 
                        ff,16
                        \mp
                        - \staccato
                        ^ \markup {
                            \center-align
                                +27
                            }
                        ]

                    }
                    % [Voice 4 measure 10]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-two-syntonic-comma-up 
                    cf2
                    \f
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +27
                        }

                    \clef "treble"
                    b'2
                    - \tenuto
                    % [Voice 4 measure 11]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    bqs'2
                    - \tenuto

                    \override Staff.Stem.stemlet-length = 0.75
                    r8
                    [

                    c''16
                    \p
                    - \staccato

                    \revert Staff.Stem.stemlet-length
                    cqs''16
                    - \staccato
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    cs''8
                    - \staccato
                    [

                    \clef "bass"
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    c,16
                    - \staccato
                    ^ \markup {
                        \center-align
                            +0
                        }

                    \revert Staff.Stem.stemlet-length
                    r16
                    ]
                    % [Voice 4 measure 12]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    g,2
                    \f
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +0
                        }

                    \clef "treble"
                    b'2
                    - \tenuto

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) "16")
                    \times 8/9 {
                        % [Voice 4 measure 13]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        r4
                        [

                        r16

                        cs''8
                        \mf
                        - \staccato

                        dqf''16
                        - \staccato

                        \revert Staff.Stem.stemlet-length
                        d''16
                        - \staccato
                        ]

                    }

                    \clef "bass"
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    g,2
                    \f
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +0
                        }
                    % [Voice 4 measure 14]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    g,2
                    - \tenuto
                    ^ \markup {
                        \center-align
                            +0
                        }

                    \override Staff.Stem.stemlet-length = 0.75
                    r8
                    [

                    \clef "treble"
                    dqs''16
                    \mp
                    - \staccato

                    \revert Staff.Stem.stemlet-length
                    e''16
                    - \staccato
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    f''8
                    - \staccato
                    [

                    cs''16
                    - \staccato

                    \revert Staff.Stem.stemlet-length
                    r16
                    ]

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) "16")
                    \times 8/9 {
                        % [Voice 4 measure 15]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        d''16
                        \mf
                        - \staccato
                        [

                        r4

                        dqs''8
                        \f
                        - \staccato

                        \revert Staff.Stem.stemlet-length
                        ef''8
                        - \staccato
                        ~
                        ]

                    }

                    \override Staff.Stem.stemlet-length = 0.75
                    ef''16
                    [

                    eqf''16
                    - \staccato
                    ~

                    eqf''16

                    \revert Staff.Stem.stemlet-length
                    e''16
                    - \staccato
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    r16
                    [

                    d''16
                    \mp
                    - \staccato

                    \revert Staff.Stem.stemlet-length
                    r8
                    ]

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) "16")
                    \times 8/9 {
                        % [Voice 4 measure 16]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        r16
                        [

                        e''8
                        \p
                        - \staccato

                        eqs''16
                        - \staccato

                        f''16
                        - \staccato

                        fqs''16
                        - \staccato

                        r8

                        \revert Staff.Stem.stemlet-length
                        e''16
                        \mf
                        - \staccato
                        ]

                    }

                    r4

                    \override Staff.Stem.stemlet-length = 0.75
                    r8
                    [

                    \clef "bass"
                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    c,8
                    \mp
                    - \staccato
                    ]
                    \bar "||"

                }
                }

            }

        >>

    >>
