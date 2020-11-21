\version "2.19.84"                                                             %! abjad.LilyPondFile._get_format_pieces()
\language "english"                                                            %! abjad.LilyPondFile._get_format_pieces()

\include "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily"           %! abjad.LilyPondFile._get_formatted_includes()
\include "/Users/evansdsg2/Scores/adumbration/adumbration/build/first_stylesheet.ily" %! abjad.LilyPondFile._get_formatted_includes()

\header {                                                                      %! abjad.LilyPondFile._get_formatted_blocks()
    tagline = ##f
}                                                                              %! abjad.LilyPondFile._get_formatted_blocks()

\layout {}

\paper {}

\score {                                                                       %! abjad.LilyPondFile._get_formatted_blocks()

    \context Score = "adumbration Score"
    <<

        \context TimeSignatureContext = "Global Context"
        {
            % [Global Context measure 1]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=115
            \time 5/4                                                          %! scaling time signatures
            \mark \markup {
                \bold
                    {
                    }
                }
            s1 * 5/4
            ^ \markup {
                \box
                    \override
                        #'(font-name . "STIXGeneral Bold")
                        \caps
                            Nacht/Maska
                }
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-mixed-number-markup #2 #0 #1 #"57" #"1" #"2"
                  \hspace #1
                  \upright [
                  \abjad-metric-modulation #1 #0 #2 #0 #'(0.6 . 0.6)
                  \hspace #0.5
                  \upright ]
              }
            }
            % [Global Context measure 2]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/8                                                          %! scaling time signatures
            s1 * 5/8
            % [Global Context measure 3]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 4]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 5]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 6]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/8                                                          %! scaling time signatures
            s1 * 5/8
            % [Global Context measure 7]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 8]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \once \override TimeSignature.color = #white                       %! applying ending skips
            \time 3/16                                                         %! scaling time signatures
            s1 * 3/16

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
                        \markup { "vn. I" }                                    %! applying staff names and clefs
                        \set Staff.instrumentName =                            %! applying staff names and clefs
                        "Violin I"                                             %! applying staff names and clefs
                        \clef "treble"
                        r2.

                        r2
                        % [Voice 1 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        gtqs4.
                        \mp
                        ~
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \upright
                            noise \hspace #0.5 }
                        - \tweak bound-details.right.text \markup {
                            \upright
                                XSB
                            }
                        - \tweak staff-padding #2
                        \startTextSpan

                        gtqs4
                        % [Voice 1 measure 3]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2
                        \stopTextSpan

                        gtqs2
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \upright
                            noise \hspace #0.5 }
                        - \tweak bound-details.right.text \markup {
                            \upright
                                XSB
                            }
                        - \tweak staff-padding #2
                        \startTextSpan
                        % [Voice 1 measure 4]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r1
                        \stopTextSpan
                        % [Voice 1 measure 5]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        gtqs4
                        ~
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \upright
                            noise \hspace #0.5 }
                        - \tweak bound-details.right.text \markup {
                            \upright
                                XSB
                            }
                        - \tweak staff-padding #2
                        \startTextSpan

                        \override Staff.Stem.stemlet-length = 0.75
                        gtqs8
                        [

                        \revert Staff.Stem.stemlet-length
                        r8
                        \stopTextSpan
                        ]

                        r2.
                        % [Voice 1 measure 6]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r4.

                        gtqs4
                        ~
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \upright
                            noise \hspace #0.5 }
                        - \tweak bound-details.right.text \markup {
                            \upright
                                XSB
                            }
                        - \tweak staff-padding #2
                        \startTextSpan
                        % [Voice 1 measure 7]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        gtqs4

                        r4
                        \stopTextSpan

                        gtqs4
                        ~
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \upright
                            noise \hspace #0.5 }
                        - \tweak bound-details.right.text \markup {
                            \upright
                                XSB
                            }
                        - \tweak staff-padding #2
                        \startTextSpan

                        gtqs4
                        ~

                        \override Staff.Stem.stemlet-length = 0.75
                        gtqs8
                        [

                        \revert Staff.Stem.stemlet-length
                        r8
                        \stopTextSpan
                        ]
                        % [Voice 1 measure 8]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                        \once \override Rest.color = #white                    %! applying ending skips
                        r1 * 3/32

                        \once \override MultiMeasureRest.color = #white        %! applying ending skips
                        R1 * 3/32
                        ^ \markup {                                            %! applying ending skips
                            \musicglyph                                        %! applying ending skips
                                #"scripts.uverylongfermata"                    %! applying ending skips
                            }                                                  %! applying ending skips
                        \bar "|."
                        \stopStaff                                             %! applying ending skips

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
                        \markup { "vn. II" }                                   %! applying staff names and clefs
                        \set Staff.instrumentName =                            %! applying staff names and clefs
                        "Violin II"                                            %! applying staff names and clefs
                        \clef "treble"
                        r2

                        g2.
                        \mp
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \upright
                            noise \hspace #0.5 }
                        - \tweak bound-details.right.text \markup {
                            \upright
                                XSB
                            }
                        - \tweak staff-padding #2
                        \startTextSpan
                        % [Voice 2 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r4.
                        \stopTextSpan

                        \override Staff.Stem.stemlet-length = 0.75
                        r8
                        [

                        \revert Staff.Stem.stemlet-length
                        g8
                        ~
                        ]
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \upright
                            noise \hspace #0.5 }
                        - \tweak bound-details.right.text \markup {
                            \upright
                                XSB
                            }
                        - \tweak staff-padding #2
                        \startTextSpan
                        % [Voice 2 measure 3]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        g2

                        r2
                        \stopTextSpan
                        % [Voice 2 measure 4]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2

                        g2
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \upright
                            noise \hspace #0.5 }
                        - \tweak bound-details.right.text \markup {
                            \upright
                                XSB
                            }
                        - \tweak staff-padding #2
                        \startTextSpan
                        % [Voice 2 measure 5]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2.
                        \stopTextSpan

                        r2
                        % [Voice 2 measure 6]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        <g d'>4.
                        - \abjad-solid-line-with-arrow
                        - \evans-clockwise-BAD-spanner-left-text #-45
                        - \tweak bound-details.right.padding 1.4
                        - \tweak staff-padding #2
                        \evansStartTextSpanBAD
                        \evansStopTextSpanBAD
                        - \abjad-solid-line-with-arrow
                        - \evans-clockwise-BAD-spanner-left-text #-45
                        - \evans-BAD-spanner-right-text #45
                        - \tweak bound-details.right.padding 1.4
                        - \tweak staff-padding #2
                        \evansStartTextSpanBAD

                        r4
                        \evansStopTextSpanBAD
                        % [Voice 2 measure 7]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        g2
                        ~
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \upright
                            noise \hspace #0.5 }
                        - \tweak bound-details.right.text \markup {
                            \upright
                                XSB
                            }
                        - \tweak staff-padding #2
                        \startTextSpan

                        \override Staff.Stem.stemlet-length = 0.75
                        g8
                        [

                        \revert Staff.Stem.stemlet-length
                        r8
                        \stopTextSpan
                        ]

                        r2
                        % [Voice 2 measure 8]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                        \once \override Rest.color = #white                    %! applying ending skips
                        r1 * 3/32

                        \once \override MultiMeasureRest.color = #white        %! applying ending skips
                        R1 * 3/32
                        ^ \markup {                                            %! applying ending skips
                            \musicglyph                                        %! applying ending skips
                                #"scripts.uverylongfermata"                    %! applying ending skips
                            }                                                  %! applying ending skips
                        \bar "|."
                        \stopStaff                                             %! applying ending skips

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
                        \markup { va. }                                        %! applying staff names and clefs
                        \set Staff.instrumentName =                            %! applying staff names and clefs
                        "Viola"                                                %! applying staff names and clefs
                        \clef "varC"
                        r1

                        gqs4
                        \mp
                        ~
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \upright
                            noise \hspace #0.5 }
                        - \tweak bound-details.right.text \markup {
                            \upright
                                XSB
                            }
                        - \tweak staff-padding #2
                        \startTextSpan
                        % [Voice 3 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        gqs4

                        r8
                        \stopTextSpan

                        r4
                        % [Voice 3 measure 3]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        r8
                        [

                        \revert Staff.Stem.stemlet-length
                        gqs8
                        ~
                        ]
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \upright
                            noise \hspace #0.5 }
                        - \tweak bound-details.right.text \markup {
                            \upright
                                XSB
                            }
                        - \tweak staff-padding #2
                        \startTextSpan

                        gqs4

                        r2
                        \stopTextSpan
                        % [Voice 3 measure 4]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2

                        gqs2
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \upright
                            noise \hspace #0.5 }
                        - \tweak bound-details.right.text \markup {
                            \upright
                                XSB
                            }
                        - \tweak staff-padding #2
                        \startTextSpan
                        % [Voice 3 measure 5]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2.
                        \stopTextSpan

                        r2
                        % [Voice 3 measure 6]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        gqs4.
                        ~
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \upright
                            noise \hspace #0.5 }
                        - \tweak bound-details.right.text \markup {
                            \upright
                                XSB
                            }
                        - \tweak staff-padding #2
                        \startTextSpan

                        gqs4
                        % [Voice 3 measure 7]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r4
                        \stopTextSpan

                        gqs2
                        ~
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \upright
                            noise \hspace #0.5 }
                        - \tweak bound-details.right.text \markup {
                            \upright
                                XSB
                            }
                        - \tweak staff-padding #2
                        \startTextSpan

                        gqs4

                        r4
                        \stopTextSpan
                        % [Voice 3 measure 8]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                        \once \override Rest.color = #white                    %! applying ending skips
                        r1 * 3/32

                        \once \override MultiMeasureRest.color = #white        %! applying ending skips
                        R1 * 3/32
                        ^ \markup {                                            %! applying ending skips
                            \musicglyph                                        %! applying ending skips
                                #"scripts.uverylongfermata"                    %! applying ending skips
                            }                                                  %! applying ending skips
                        \bar "|."
                        \stopStaff                                             %! applying ending skips

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
                        \markup { vc. }                                        %! applying staff names and clefs
                        \set Staff.instrumentName =                            %! applying staff names and clefs
                        "Violoncello"                                          %! applying staff names and clefs
                        \clef "bass"
                        gs,2.
                        \f
                        ~

                        gs,2
                        ~
                        % [Voice 4 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        gs,4.
                        ~

                        gs,4
                        ~
                        % [Voice 4 measure 3]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        gs,1
                        ~
                        % [Voice 4 measure 4]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        gs,1
                        ~
                        % [Voice 4 measure 5]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        gs,2.
                        ~

                        gs,2
                        ~
                        % [Voice 4 measure 6]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        gs,4.
                        ~

                        gs,4
                        ~
                        % [Voice 4 measure 7]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        gs,1
                        ^ \markup { "molto vibrato" }
                        - \tweak style #'zigzag                                %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "16")
                        \times 4/5 {

                            gtqs,4
                            - \tweak circled-tip ##t
                            \>
                            - \tweak style #'zigzag                            %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                            etqf,16

                        }
                        % [Voice 4 measure 8]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                        \once \override Rest.color = #white                    %! applying ending skips
                        r1 * 3/32
                        \!
                        _ \markup {
                            \override #'(font-name . "STIXGeneral")
                            \with-color #white
                            \right-column {
                                \line { "\hspace #0.75 ............" }
                                \with-color #black
                                \line { \hspace #0.75 Iowa City, Ia. }
                                \with-color #black
                                \line { \hspace #0.75 September - November 2020 }
                            }
                        }

                        \once \override MultiMeasureRest.color = #white        %! applying ending skips
                        R1 * 3/32
                        ^ \markup {                                            %! applying ending skips
                            \musicglyph                                        %! applying ending skips
                                #"scripts.uverylongfermata"                    %! applying ending skips
                            }                                                  %! applying ending skips
                        \bar "|."
                        \stopStaff                                             %! applying ending skips

                    }

                }

            }

        >>

    >>
}                                                                              %! abjad.LilyPondFile._get_formatted_blocks()