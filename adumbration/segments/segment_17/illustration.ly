\version "2.19.84"                                                             %! abjad.LilyPondFile._get_format_pieces()
\language "english"                                                            %! abjad.LilyPondFile._get_format_pieces()

\include "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily"           %! abjad.LilyPondFile._get_formatted_includes()
\include "/Users/evansdsg2/Scores/adumbration/adumbration/build/first_stylesheet.ily" %! abjad.LilyPondFile._get_formatted_includes()

\score {                                                                       %! abjad.LilyPondFile._get_formatted_blocks()

    \context Score = "adumbration Score"
    <<

        \context TimeSignatureContext = "Global Context"
        {
            % [Global Context measure 1]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=153
            \time 7/8                                                          %! scaling time signatures
            \mark \markup \bold {  }
            s1 * 7/8
            ^ \markup \override #'(font-name . "STIXGeneral Bold") \box \caps Samudra
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
            \bacaStopTextSpanMM
            % [Global Context measure 2]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/8                                                          %! scaling time signatures
            s1 * 5/8
            % [Global Context measure 3]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/8                                                          %! scaling time signatures
            s1 * 3/8
            - \abjad-dashed-line-with-arrow
            - \baca-metronome-mark-spanner-left-text 2 0 1 "153.3"
            - \tweak padding #0.2
            - \tweak staff-padding #0.2
            - \tweak font-size #2
            \bacaStartTextSpanMM
            % [Global Context measure 4]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/8                                                          %! scaling time signatures
            s1 * 5/8
            \bacaStopTextSpanMM
            - \abjad-invisible-line
            - \baca-metronome-mark-spanner-left-text 2 0 1 "108"
            - \tweak padding #0.2
            - \tweak staff-padding #0.2
            - \tweak font-size #2
            \bacaStartTextSpanMM
            % [Global Context measure 5]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/8                                                          %! scaling time signatures
            s1 * 5/8
            \bacaStopTextSpanMM
            % [Global Context measure 6]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            - \abjad-dashed-line-with-arrow
            - \baca-metronome-mark-spanner-left-text 2 0 1 "108"
            - \tweak padding #0.2
            - \tweak staff-padding #0.2
            - \tweak font-size #2
            \bacaStartTextSpanMM
            % [Global Context measure 7]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/8                                                          %! scaling time signatures
            s1 * 3/8
            \bacaStopTextSpanMM
            - \abjad-invisible-line
            - \baca-metronome-mark-spanner-left-text 2 0 1 "90"
            - \tweak padding #0.2
            - \tweak staff-padding #0.2
            - \tweak font-size #2
            \bacaStartTextSpanMM
            % [Global Context measure 8]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/8                                                          %! scaling time signatures
            s1 * 3/8
            \bacaStopTextSpanMM
            % [Global Context measure 9]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 7/8                                                          %! scaling time signatures
            s1 * 7/8

        }

        \context StaffGroup = "Staff Group"
        <<

            \tag #'voice1
            {

                \context Staff = "Staff 1"
                {

                    \context Voice = "Voice 1"
                    {
                        % [Voice 1 measure 1]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \set Staff.shortInstrumentName =                       %! applying staff names and clefs
                        \markup { \hcenter-in #12 "vn. I" }                    %! applying staff names and clefs
                        \set Staff.instrumentName =                            %! applying staff names and clefs
                        \markup { \hcenter-in #14 "Violin I" }                 %! applying staff names and clefs
                        \clef "treble"
                        r4.

                        r4

                        \override Staff.Stem.stemlet-length = 0.75
                        r8
                        [

                        cs''16
                        \f
                        \<

                        \revert Staff.Stem.stemlet-length
                        d''16
                        ~
                        ]

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 10) "16")
                        \times 10/11 {
                            % [Voice 1 measure 2]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            d''16
                            [

                            bf'16

                            b'16
                            \ff

                            r16

                            bqs'8
                            \mf
                            ]

                            r4

                            \revert Staff.Stem.stemlet-length
                            c''16
                            \f
                            ]

                        }
                        % [Voice 1 measure 3]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r4.
                        % [Voice 1 measure 4]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r8

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) "16")
                        \times 8/9 {

                            \override Staff.Stem.stemlet-length = 0.75
                            r4

                            cqs''16
                            \mf
                            \<
                            [

                            cs''16

                            b'16

                            cs''16
                            \f

                            \revert Staff.Stem.stemlet-length
                            r16
                            ]

                        }
                        % [Voice 1 measure 5]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        dqf''16
                        \ff
                        [

                        r16

                        r8.

                        \revert Staff.Stem.stemlet-length
                        d''16
                        \mf
                        \<
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        dqs''8
                        [

                        e''16

                        \revert Staff.Stem.stemlet-length
                        f''16
                        \f
                        ]

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 12) "16")
                        \times 12/13 {
                            % [Voice 1 measure 6]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            r8
                            [

                            cs''8.
                            \mf
                            ]

                            r4

                            d''16
                            \f
                            \<
                            [

                            dqs''16

                            ef''16

                            \revert Staff.Stem.stemlet-length
                            eqf''16
                            \ff
                            ]

                        }

                        \override Staff.Stem.stemlet-length = 0.75
                        r8
                        [

                        e''16
                        \mf

                        \revert Staff.Stem.stemlet-length
                        r16
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        r8.
                        [

                        \revert Staff.Stem.stemlet-length
                        d''16
                        \f
                        \>
                        ]
                        % [Voice 1 measure 7]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        e''16
                        [

                        eqs''16
                        ~

                        eqs''16

                        f''16
                        \mf

                        \revert Staff.Stem.stemlet-length
                        r8
                        ]
                        % [Voice 1 measure 8]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r8

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "16")
                        \times 4/5 {

                            \override Staff.Stem.stemlet-length = 0.75
                            r4

                            \revert Staff.Stem.stemlet-length
                            fqs''16
                            \f
                            \<
                            ]

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) "16")
                        \times 6/5 {
                            % [Voice 1 measure 9]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            e''16
                            [

                            ef''16

                            g''16
                            \ff

                            r16

                            \revert Staff.Stem.stemlet-length
                            fs''16
                            \mf
                            ]

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) "16")
                        \times 8/7 {

                            \override Staff.Stem.stemlet-length = 0.75
                            r4

                            fqs''16
                            \f
                            \>
                            [

                            \revert Staff.Stem.stemlet-length
                            f''8
                            \mf
                            ]
                            \bar "||"

                        }

                    }

                }

            }

            \tag #'voice2
            {

                \context Staff = "Staff 2"
                {

                    \context Voice = "Voice 2"
                    {
                        % [Voice 2 measure 1]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \set Staff.shortInstrumentName =                       %! applying staff names and clefs
                        \markup { \hcenter-in #12 "vn. II" }                   %! applying staff names and clefs
                        \set Staff.instrumentName =                            %! applying staff names and clefs
                        \markup { \hcenter-in #14 "Violin II" }                %! applying staff names and clefs
                        \clef "treble"
                        r8

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 12) "16")
                        \times 12/11 {

                            \override Staff.Stem.stemlet-length = 0.75
                            r8
                            [

                            eqs''8
                            \f
                            \<

                            e''8.

                            fs''8

                            e''16
                            \ff

                            \revert Staff.Stem.stemlet-length
                            r16
                            ]

                        }
                        % [Voice 2 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        eqf''16
                        \mf
                        [

                        r8.

                        \revert Staff.Stem.stemlet-length
                        ef''8
                        \f
                        \>
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        dqs''16
                        [

                        cs''16

                        c''16
                        \mf

                        \revert Staff.Stem.stemlet-length
                        r16
                        ]
                        % [Voice 2 measure 3]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        r16
                        [

                        e''16
                        \f
                        ]

                        \revert Staff.Stem.stemlet-length
                        r4
                        ]
                        % [Voice 2 measure 4]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r4.

                        \override Staff.Stem.stemlet-length = 0.75
                        r8.
                        [

                        \revert Staff.Stem.stemlet-length
                        ef''16
                        \ff
                        \>
                        ]

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) "16")
                        \times 8/9 {
                            % [Voice 2 measure 5]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            dqs''16
                            [

                            d''16

                            dqf''16
                            \mf

                            r16

                            cs''8
                            \f

                            \revert Staff.Stem.stemlet-length
                            r8.
                            ]

                        }

                        ef''8
                        \mf
                        \<
                        % [Voice 2 measure 6]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        cs''16
                        [

                        cqs''16

                        \revert Staff.Stem.stemlet-length
                        c''8
                        \f
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        r8.
                        [

                        \revert Staff.Stem.stemlet-length
                        bqs'16
                        \ff
                        ]

                        r4

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) "16")
                        \times 8/9 {

                            \override Staff.Stem.stemlet-length = 0.75
                            r8
                            [

                            eqf''16
                            \mf
                            \<

                            e''16

                            eqs''16

                            f''16
                            \f

                            r16

                            \revert Staff.Stem.stemlet-length
                            g''8
                            \mf
                            ]

                        }
                        % [Voice 2 measure 7]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r4.
                        % [Voice 2 measure 8]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        f''16
                        \f
                        \<
                        [

                        fqs''16
                        ~

                        fqs''16

                        fs''16

                        gqf''16
                        \ff

                        \revert Staff.Stem.stemlet-length
                        r16
                        ]
                        % [Voice 2 measure 9]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        r16
                        [

                        \revert Staff.Stem.stemlet-length
                        g''16
                        \mf
                        \<
                        ~
                        ]

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 12) "16")
                        \times 12/13 {

                            \override Staff.Stem.stemlet-length = 0.75
                            g''8
                            \f

                            r4

                            af''16
                            \mf
                            \<
                            [

                            e''16

                            f''16

                            gqf''16
                            \f

                            r8

                            \revert Staff.Stem.stemlet-length
                            g''16
                            \ff
                            ]
                            \bar "||"

                        }

                    }

                }

            }

            \tag #'voice3
            {

                \context Staff = "Staff 3"
                {

                    \context Voice = "Voice 3"
                    {
                        % [Voice 3 measure 1]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \set Staff.shortInstrumentName =                       %! applying staff names and clefs
                        \markup { \hcenter-in #12 "va." }                      %! applying staff names and clefs
                        \set Staff.instrumentName =                            %! applying staff names and clefs
                        \markup { \hcenter-in #14 "Viola" }                    %! applying staff names and clefs
                        \clef "varC"
                        \override Staff.Stem.stemlet-length = 0.75
                        r8
                        [

                        \clef "treble"
                        gqs''8
                        \mf
                        \<

                        af''16

                        \revert Staff.Stem.stemlet-length
                        bf''16
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        af''8
                        \f
                        [

                        \revert Staff.Stem.stemlet-length
                        r8
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        r16
                        [

                        aqf''16
                        \mf
                        ~

                        aqf''16

                        \revert Staff.Stem.stemlet-length
                        r16
                        ]

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 10) "16")
                        \times 10/11 {
                            % [Voice 3 measure 2]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            r8
                            [

                            a''16
                            \f
                            \<

                            aqs''16

                            bf''16

                            b''8
                            \ff

                            r16

                            g''16
                            \mf

                            \revert Staff.Stem.stemlet-length
                            r8
                            ]

                        }
                        % [Voice 3 measure 3]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r4.

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 10) "16")
                        \times 10/9 {
                            % [Voice 3 measure 4]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            r8.
                            [

                            af''8.
                            \f
                            \>

                            aqs''8

                            \revert Staff.Stem.stemlet-length
                            a''16
                            \mf
                            ]

                        }
                        % [Voice 3 measure 5]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r4.

                        \override Staff.Stem.stemlet-length = 0.75
                        aqf''16
                        \f
                        \<
                        [

                        af''16

                        fs''16

                        \revert Staff.Stem.stemlet-length
                        af''16
                        ~
                        ]
                        % [Voice 3 measure 6]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        af''16
                        \ff
                        [

                        \revert Staff.Stem.stemlet-length
                        r16
                        ]

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 10) "16")
                        \times 10/9 {

                            \override Staff.Stem.stemlet-length = 0.75
                            gqs''16
                            \mf

                            r4

                            g''16
                            \f
                            \>
                            [

                            gqf''8

                            \revert Staff.Stem.stemlet-length
                            fs''16
                            \mf
                            ]

                        }

                        r2
                        % [Voice 3 measure 7]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        r4

                        f''16
                        \f
                        \<
                        [

                        \revert Staff.Stem.stemlet-length
                        a''16
                        ]
                        % [Voice 3 measure 8]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        af''16
                        [

                        gqf''16
                        \ff

                        r16

                        fs''16
                        \mf

                        \revert Staff.Stem.stemlet-length
                        r8
                        ]
                        % [Voice 3 measure 9]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        r8
                        [

                        fqs''16
                        \f
                        \>

                        f''16
                        ~

                        f''16

                        \revert Staff.Stem.stemlet-length
                        ef''16
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        f''16
                        \mf
                        [

                        r16

                        r16

                        \revert Staff.Stem.stemlet-length
                        eqs''16
                        \f
                        ~
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        eqs''8
                        [

                        \revert Staff.Stem.stemlet-length
                        r8
                        ]
                        \bar "||"

                    }

                }

            }

            \tag #'voice4
            {

                \context Staff = "Staff 4"
                {

                    \context Voice = "Voice 4"
                    {
                        % [Voice 4 measure 1]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \set Staff.shortInstrumentName =                       %! applying staff names and clefs
                        \markup { \hcenter-in #12 "vc." }                      %! applying staff names and clefs
                        \set Staff.instrumentName =                            %! applying staff names and clefs
                        \markup { \hcenter-in #14 "Violoncello" }              %! applying staff names and clefs
                        \clef "treble"
                        r2..
                        % [Voice 4 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        r8
                        [

                        e''16
                        \ff
                        \>

                        eqf''16

                        ef''16

                        \revert Staff.Stem.stemlet-length
                        d''16
                        \mf
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        r8
                        [

                        fs''16
                        \f

                        \revert Staff.Stem.stemlet-length
                        r16
                        ]
                        % [Voice 4 measure 3]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        r8.
                        [

                        f''16
                        \mf
                        \<

                        g''16

                        \revert Staff.Stem.stemlet-length
                        af''16
                        ~
                        ]
                        % [Voice 4 measure 4]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        af''16
                        [

                        e''16
                        \f
                        ]

                        \revert Staff.Stem.stemlet-length
                        r4
                        ]

                        r4

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 10) "16")
                        \times 10/11 {
                            % [Voice 4 measure 5]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            r4

                            f''16
                            \ff
                            \>
                            [

                            fqs''16

                            fs''16

                            gqf''16
                            \mf

                            r16

                            g''16
                            \f

                            \revert Staff.Stem.stemlet-length
                            r16
                            ]

                        }
                        % [Voice 4 measure 6]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        r8.
                        [

                        \revert Staff.Stem.stemlet-length
                        f''16
                        \mf
                        \<
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        g''8
                        [

                        gqs''16

                        \revert Staff.Stem.stemlet-length
                        af''16
                        \f
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        r8
                        [

                        \revert Staff.Stem.stemlet-length
                        aqf''8
                        \ff
                        \>
                        ~
                        ]

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) "16")
                        \times 8/7 {

                            \override Staff.Stem.stemlet-length = 0.75
                            aqf''16
                            \mf

                            r4

                            bf''16
                            \f
                            \>
                            [

                            \revert Staff.Stem.stemlet-length
                            b''16
                            ]

                        }
                        % [Voice 4 measure 7]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        g''16
                        [

                        af''16
                        \mf

                        r8

                        aqf''16
                        \f

                        \revert Staff.Stem.stemlet-length
                        r16
                        ]
                        % [Voice 4 measure 8]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r4.

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 15 14) "16")
                        \times 14/15 {
                            % [Voice 4 measure 9]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            r16
                            [

                            a''16
                            \ff
                            \>

                            aqs''16

                            bf''8

                            af''8.
                            \mf

                            r8

                            bf''16
                            \f

                            r8.

                            \revert Staff.Stem.stemlet-length
                            bqf''16
                            \mf
                            ]
                            \bar "||"

                        }

                    }

                }

            }

        >>

    >>
}                                                                              %! abjad.LilyPondFile._get_formatted_blocks()