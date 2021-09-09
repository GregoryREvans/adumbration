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
            \time 3/4                                                          %! scaling time signatures
            \mark \markup \bold {  }
            s1 * 3/4
            ^ \markup \override #'(font-name . "STIXGeneral Bold") \box \caps Fluxes/Phylums
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

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 3]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 4]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 5]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 6]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 7]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 8]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 9]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 10]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 11]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 12]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 13]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 14]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 15]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 16]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 17]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 18]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 19]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 20]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 21]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 22]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1

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
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        e'4
                        \p
                        - \downbow
                        ^ \markup { ½clt. }
                        ^ \markup { full bows as possible }
                        - \tweak style solid-line                              %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'4
                        - \upbow
                        - \tweak style solid-line                              %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d''4
                        - \downbow
                        % [Voice 1 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r1

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) "4")
                        \times 5/6 {
                            % [Voice 1 measure 3]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            g''4
                            \mp
                            - \downbow
                            ^ \markup { clt. }
                            \>
                            - \tweak style solid-line                          %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            c'''4
                            - \upbow
                            - \tweak style solid-line                          %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            g''4
                            - \downbow
                            - \tweak style solid-line                          %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            d''4
                            - \upbow
                            - \tweak style solid-line                          %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            a'4
                            - \downbow
                            - \tweak style solid-line                          %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            e'4
                            - \upbow
                            - \tweak style solid-line                          %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                        }

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "4")
                        \times 2/3 {
                            % [Voice 1 measure 4]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            a'4
                            - \downbow
                            - \tweak style solid-line                          %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            d''4
                            - \upbow
                            - \tweak style solid-line                          %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            g''4
                            \p
                            - \downbow

                        }

                        r2.
                        % [Voice 1 measure 5]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2.
                        % [Voice 1 measure 6]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2.

                        r16

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        e'16
                        :32
                        \f
                        - \accent
                        ^ \markup ord.
                        ~
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        e'16
                        :32

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-sharp-markup
                        eqs'16
                        :32
                        - \accent
                        ~
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-sharp-markup
                        eqs'16
                        :32
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        e'16
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        e'16
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-sharp-markup
                        eqs'16
                        :32
                        - \accent
                        ~
                        ]

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) "16")
                        \times 8/9 {
                            % [Voice 1 measure 7]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-sharp-markup
                            eqs'16
                            :32
                            [

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            f'8
                            :32
                            - \accent

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-sharp-markup
                            fqs'8
                            :32
                            - \accent
                            ]

                            r4

                        }

                        r4
                        % [Voice 1 measure 8]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2.
                        % [Voice 1 measure 9]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        c'''4
                        \mp
                        - \downbow
                        ^ \markup { ½clt. }
                        ^ \markup { full bows as possible }
                        - \tweak style solid-line                              %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        g''4
                        - \upbow
                        - \tweak style solid-line                              %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d''4
                        - \downbow
                        - \tweak style solid-line                              %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'4
                        - \upbow
                        - \tweak style solid-line                              %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        e'4
                        - \downbow
                        % [Voice 1 measure 10]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r1
                        % [Voice 1 measure 11]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2.
                        % [Voice 1 measure 12]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r1
                        % [Voice 1 measure 13]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r4

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "8")
                        \times 4/5 {

                            r4

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            e'16
                            :32
                            \ff
                            - \accent
                            ^ \markup ord.
                            \>
                            [

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            f'16
                            :32
                            - \accent

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-sharp-markup
                            eqs'8
                            :32
                            - \accent

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            e'8
                            :32
                            - \accent
                            ]

                        }

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 8) "16")
                        \times 8/11 {
                            % [Voice 1 measure 14]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            e'8
                            :32
                            - \accent
                            [

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-sharp-markup
                            eqs'16
                            :32
                            - \accent

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            f'16
                            :32
                            - \accent
                            ]
                            <>
                            \f

                            r8.

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            e'4
                            :32
                            \ff
                            - \accent

                        }

                        r2
                        % [Voice 1 measure 15]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2.
                        % [Voice 1 measure 16]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2.

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) "4")
                        \times 5/6 {
                            % [Voice 1 measure 17]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            a'4
                            \p
                            - \downbow
                            ^ \markup { norm. }
                            ^ \markup { full bows as possible }
                            \<
                            - \tweak style solid-line                          %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            d''4
                            - \upbow
                            - \tweak style solid-line                          %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            g''4
                            - \downbow
                            - \tweak style solid-line                          %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            c'''4
                            - \upbow
                            - \tweak style solid-line                          %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            g''4
                            - \downbow
                            - \tweak style solid-line                          %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            d''4
                            - \upbow
                            - \tweak style solid-line                          %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                        }
                        % [Voice 1 measure 18]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'4
                        \mp
                        - \downbow

                        r2.
                        % [Voice 1 measure 19]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r4

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "8")
                        \times 4/5 {

                            r8.

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            e'8
                            :32
                            \f
                            - \accent
                            ^ \markup ord.
                            \<
                            [

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-sharp-markup
                            eqs'8
                            :32
                            - \accent

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            f'16
                            :32
                            - \accent

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-sharp-markup
                            fqs'16
                            :32
                            - \accent

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-sharp-markup
                            fs'16
                            :32
                            - \accent
                            ~
                            ]

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 21 20) "16")
                        \times 20/21 {
                            % [Voice 1 measure 20]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-sharp-markup
                            fs'16
                            :32
                            [

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-sharp-markup
                            fs'8
                            :32
                            - \accent

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            f'8
                            :32
                            \ff
                            - \accent
                            ]

                            r8

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            e'8
                            :32
                            \f
                            - \accent
                            [

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            e'8
                            :32
                            - \accent

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-sharp-markup
                            eqs'8
                            :32
                            - \accent

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            f'16
                            :32
                            - \accent

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            e'16
                            :32
                            - \accent

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-sharp-markup
                            fqs'8
                            :32
                            - \accent

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            f'8
                            :32
                            - \accent
                            ]

                            r8

                        }
                        % [Voice 1 measure 21]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r16

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-sharp-markup
                        eqs'16
                        :32
                        \ff
                        - \accent
                        \>
                        [

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        e'8
                        :32
                        - \accent
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        e'8
                        :32
                        - \accent
                        [

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f'8
                        :32
                        - \accent
                        ]

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-sharp-markup
                        eqs'4
                        :32
                        \f
                        - \accent
                        % [Voice 1 measure 22]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r1
                        \bar ".|:"

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
                        c'4
                        \p
                        - \downbow
                        ^ \markup { ½clt. }
                        ^ \markup { full bows as possible }
                        - \tweak style solid-line                              %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        f'4
                        - \upbow
                        - \tweak style solid-line                              %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        bf'4
                        - \downbow
                        - \tweak style solid-line                              %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)
                        % [Voice 2 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        ef''4
                        - \upbow

                        r2.
                        % [Voice 2 measure 3]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2.

                        r2
                        % [Voice 2 measure 4]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2.

                        r2
                        % [Voice 2 measure 5]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2.

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 21 20) "16")
                        \times 20/21 {
                            % [Voice 2 measure 6]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r4

                            \override Staff.Stem.stemlet-length = 0.75
                            c'16
                            :32
                            \ff
                            - \accent
                            ^ \markup ord.
                            [

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-third-sharp-markup
                            c'16
                            :32
                            - \accent

                            cqs'8
                            :32
                            - \accent

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-third-flat-markup
                            df'8
                            :32
                            - \accent

                            dqf'8
                            :32
                            - \accent

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-third-sharp-markup
                            c'16
                            :32
                            - \accent

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-third-flat-markup
                            df'16
                            :32
                            - \accent
                            ]

                            r4

                            \override Staff.Stem.stemlet-length = 0.75
                            d'8
                            :32
                            \f
                            - \accent
                            \<
                            [

                            \revert Staff.Stem.stemlet-length
                            dqf'16
                            :32
                            - \accent
                            ]

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) "8")
                        \times 6/7 {
                            % [Voice 2 measure 7]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-third-sharp-markup
                            d'16
                            :32
                            - \accent
                            [

                            d'8
                            :32
                            - \accent

                            d'8
                            :32
                            - \accent

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-third-sharp-markup
                            d'8
                            :32
                            - \accent

                            \revert Staff.Stem.stemlet-length
                            dqf'16
                            :32
                            \ff
                            - \accent
                            ]

                            r8

                            d'4
                            :32
                            \f
                            - \accent

                        }
                        % [Voice 2 measure 8]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2.
                        % [Voice 2 measure 9]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2.

                        r2
                        % [Voice 2 measure 10]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r1
                        % [Voice 2 measure 11]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        af''4
                        \mp
                        - \downbow
                        ^ \markup { clt. }
                        ^ \markup { full bows as possible }
                        \>
                        - \tweak style solid-line                              %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        ef''4
                        - \upbow
                        - \tweak style solid-line                              %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        bf'4
                        - \downbow
                        - \tweak style solid-line                              %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)
                        % [Voice 2 measure 12]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        f'4
                        \p
                        - \upbow

                        r2.
                        % [Voice 2 measure 13]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2.
                        % [Voice 2 measure 14]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 8) "16")
                        \times 8/11 {

                            r8

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-third-flat-markup
                            df'16
                            :32
                            \ff
                            - \accent
                            ^ \markup ord.
                            \>
                            [

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-third-sharp-markup
                            c'8
                            :32
                            - \accent

                            c'8
                            :32
                            - \accent

                            cqs'8
                            :32
                            - \accent

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-third-flat-markup
                            df'16
                            :32
                            - \accent

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-third-sharp-markup
                            c'16
                            :32
                            - \accent
                            ]

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) "8")
                        \times 6/7 {
                            % [Voice 2 measure 15]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            c'8
                            :32
                            - \accent
                            <>
                            \f

                            r4

                            \override Staff.Stem.stemlet-length = 0.75
                            cqs'16
                            :32
                            \ff
                            - \accent
                            [

                            cqs'16
                            :32
                            - \accent

                            c'8
                            :32
                            - \accent

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-third-sharp-markup
                            c'8
                            :32
                            - \accent

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-third-flat-markup
                            df'8
                            :32
                            - \accent
                            ]

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 12) "16")
                        \times 12/13 {
                            % [Voice 2 measure 16]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            d'16
                            :32
                            - \accent
                            [

                            \revert Staff.Stem.stemlet-length
                            dqf'16
                            :32
                            - \accent
                            ]

                            r4

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-third-sharp-markup
                            c'8
                            :32
                            \f
                            - \accent
                            \<
                            [

                            cqs'16
                            :32
                            - \accent

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-third-flat-markup
                            df'16
                            :32
                            - \accent

                            dqf'8
                            :32
                            - \accent

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-third-sharp-markup
                            c'16
                            :32
                            - \accent
                            ~
                            ]

                        }
                        % [Voice 2 measure 17]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-third-sharp-markup
                        c'16
                        :32
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-third-flat-markup
                        df'16
                        :32
                        - \accent
                        ~

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-third-flat-markup
                        df'16
                        :32

                        \revert Staff.Stem.stemlet-length
                        d'16
                        :32
                        \ff
                        - \accent
                        ]

                        r1
                        % [Voice 2 measure 18]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r4

                        c'4
                        \mp
                        - \downbow
                        ^ \markup { ½clt. }
                        ^ \markup { full bows as possible }
                        - \tweak style solid-line                              %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        f'4
                        - \upbow
                        - \tweak style solid-line                              %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        bf'4
                        - \downbow
                        - \tweak style solid-line                              %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)
                        % [Voice 2 measure 19]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        ef''8.
                        - \upbow
                        - \tweak style solid-line                              %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)
                        [

                        \revert Staff.Stem.stemlet-length
                        af''16
                        - \downbow
                        - \tweak style solid-line
                        \glissando
                        ~
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        af''8
                        [

                        \revert Staff.Stem.stemlet-length
                        ef''8
                        - \upbow
                        - \tweak style solid-line
                        \glissando
                        ~
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        ef''16
                        [

                        \revert Staff.Stem.stemlet-length
                        bf'8.
                        - \downbow
                        ]

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 21 20) "16")
                        \times 20/21 {
                            % [Voice 2 measure 20]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r8.

                            \override Staff.Stem.stemlet-length = 0.75
                            dqf'16
                            :32
                            \f
                            - \accent
                            ^ \markup ord.
                            [

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-third-sharp-markup
                            c'16
                            :32
                            - \accent

                            cqs'8
                            :32
                            - \accent

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-third-flat-markup
                            df'8
                            :32
                            - \accent

                            dqf'8
                            :32
                            - \accent

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-third-sharp-markup
                            d'16
                            :32
                            - \accent

                            \revert Staff.Stem.stemlet-length
                            d'16
                            :32
                            - \accent
                            ]

                            r4

                            d'4
                            :32
                            \ff
                            - \accent
                            \>
                            <>
                            \f

                        }
                        % [Voice 2 measure 21]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2.
                        % [Voice 2 measure 22]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r1
                        \bar ".|:"

                    }

                }

            }

            \tag #'voice3
            {

                \context Staff = "Staff 3"
                {

                    \context Voice = "Voice 3"
                    {
                        \once \override Staff.Clef.X-extent = ##f \once \override Staff.Clef.extra-offset = #'(-2.25 . 0)
                        % [Voice 3 measure 1]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \set Staff.shortInstrumentName =                       %! applying staff names and clefs
                        \markup { \hcenter-in #12 "va." }                      %! applying staff names and clefs
                        \set Staff.instrumentName =                            %! applying staff names and clefs
                        \markup { \hcenter-in #14 "Viola" }                    %! applying staff names and clefs
                        \clef "varC"
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d'4
                        \p
                        - \downbow
                        ^ \markup { norm. }
                        ^ \markup { full bows as possible }
                        \<
                        - \tweak style solid-line                              %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a4
                        - \upbow
                        - \tweak style solid-line                              %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d'4
                        - \downbow
                        - \tweak style solid-line                              %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)
                        % [Voice 3 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        g'4
                        - \upbow
                        - \tweak style solid-line                              %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        c''4
                        - \downbow
                        - \tweak style solid-line                              %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f''4
                        - \upbow
                        - \tweak style solid-line                              %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        c''4
                        - \downbow
                        - \tweak style solid-line                              %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "4")
                        \times 2/3 {
                            % [Voice 3 measure 3]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            g'4
                            - \upbow
                            - \tweak style solid-line                          %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            d'4
                            - \downbow
                            - \tweak style solid-line                          %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            a4
                            \mp
                            - \upbow

                        }

                        r2.
                        % [Voice 3 measure 4]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2.

                        r2
                        % [Voice 3 measure 5]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2.
                        % [Voice 3 measure 6]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2.

                        r2
                        % [Voice 3 measure 7]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2.
                        % [Voice 3 measure 8]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r4

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "8")
                        \times 4/5 {

                            r4

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            b8
                            :32
                            \ff
                            - \accent
                            ^ \markup ord.
                            [

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-flat-markup
                            bqf16
                            :32
                            - \accent

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            b16
                            :32
                            - \accent

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            bf8
                            :32
                            - \accent
                            ]

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 23 20) "16")
                        \times 20/23 {
                            % [Voice 3 measure 9]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-flat-markup
                            bqf8
                            :32
                            - \accent
                            [

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            a8
                            :32
                            - \accent

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            bf16
                            :32
                            - \accent
                            ]

                            r8.

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            b8
                            :32
                            \f
                            - \accent
                            \<
                            [

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            b8
                            :32
                            - \accent

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-flat-markup
                            bqf16
                            :32
                            - \accent

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            b16
                            :32
                            - \accent

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            b8
                            :32
                            - \accent

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            b8
                            :32
                            - \accent

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-flat-markup
                            bqf8
                            :32
                            \ff
                            - \accent
                            ]

                            r8

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            bf16
                            :32
                            \f
                            - \accent
                            ~

                        }

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "8")
                        \times 4/5 {
                            % [Voice 3 measure 10]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            bf16
                            :32
                            [

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            b8
                            :32
                            - \accent

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            b8
                            :32
                            - \accent

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-flat-markup
                            bqf16
                            :32
                            - \accent
                            ]

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            b4
                            :32
                            - \accent

                        }

                        r2
                        % [Voice 3 measure 11]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2.
                        % [Voice 3 measure 12]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r1
                        % [Voice 3 measure 13]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2.
                        % [Voice 3 measure 14]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r1
                        % [Voice 3 measure 15]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d'4
                        \p
                        - \downbow
                        ^ \markup { ½clt. }
                        ^ \markup { full bows as possible }
                        - \tweak style solid-line                              %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        g'4
                        - \upbow
                        - \tweak style solid-line                              %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        c''4
                        - \downbow
                        % [Voice 3 measure 16]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2.
                        % [Voice 3 measure 17]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2.

                        r2
                        % [Voice 3 measure 18]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r1

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 12) "16")
                        \times 12/13 {
                            % [Voice 3 measure 19]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r8.

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            bf16
                            :32
                            \ff
                            - \accent
                            ^ \markup ord.
                            \>
                            [

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-flat-markup
                            bqf16
                            :32
                            - \accent

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            a8
                            :32
                            - \accent

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            bf8
                            :32
                            - \accent

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            b8
                            :32
                            - \accent

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-flat-markup
                            bqf16
                            :32
                            - \accent

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            a16
                            :32
                            - \accent
                            ]
                            <>
                            \f

                        }
                        % [Voice 3 measure 20]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r4

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        bf4
                        :32
                        \ff
                        - \accent

                        r2.
                        % [Voice 3 measure 21]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2.
                        % [Voice 3 measure 22]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) "16")
                        \times 8/9 {

                            r4

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            b16
                            :32
                            \f
                            - \accent
                            \<

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-flat-markup
                            bqf4
                            :32
                            \ff
                            - \accent
                            \bar ".|:"

                        }

                    }

                }

            }

            \tag #'voice4
            {

                \context Staff = "Staff 4"
                {

                    \context Voice = "Voice 4"
                    {
                        \once \override Staff.Clef.X-extent = ##f \once \override Staff.Clef.extra-offset = #'(-2.25 . 0)
                        % [Voice 4 measure 1]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \set Staff.shortInstrumentName =                       %! applying staff names and clefs
                        \markup { \hcenter-in #12 "vc." }                      %! applying staff names and clefs
                        \set Staff.instrumentName =                            %! applying staff names and clefs
                        \markup { \hcenter-in #14 "Violoncello" }              %! applying staff names and clefs
                        \clef "bass"
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        af4
                        \mp
                        - \downbow
                        ^ \markup { clt. }
                        ^ \markup { full bows as possible }
                        \>
                        - \tweak style solid-line                              %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        ef4
                        - \upbow
                        - \tweak style solid-line                              %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        bf,4
                        - \downbow
                        - \tweak style solid-line                              %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)
                        % [Voice 4 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f,4
                        - \upbow
                        - \tweak style solid-line                              %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        c,4
                        \p
                        - \downbow

                        r2
                        % [Voice 4 measure 3]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) "8")
                        \times 6/5 {

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            f,8
                            \mp
                            - \downbow
                            ^ \markup { ½clt. }
                            - \tweak style solid-line                          %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)
                            [

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            bf,8
                            - \upbow
                            - \tweak style solid-line                          %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            ef8
                            - \downbow
                            - \tweak style solid-line                          %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            af8
                            - \upbow
                            - \tweak style solid-line                          %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            ef8
                            - \downbow
                            - \tweak style solid-line                          %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)
                            ]

                        }

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "4")
                        \times 2/3 {
                            % [Voice 4 measure 4]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            bf,4
                            - \upbow
                            - \tweak style solid-line                          %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            f,4
                            - \downbow
                            - \tweak style solid-line                          %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            c,4
                            - \upbow

                        }

                        r2.
                        % [Voice 4 measure 5]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r4

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "8")
                        \times 4/5 {

                            r8.

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            c,8
                            :32
                            \f
                            - \accent
                            ^ \markup ord.
                            [

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-sharp-markup
                            cqs,16
                            :32
                            - \accent

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-sharp-markup
                            cqs,16
                            :32
                            - \accent

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            c,8
                            :32
                            - \accent

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            c,16
                            :32
                            - \accent
                            ~
                            ]

                        }

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 8) "16")
                        \times 8/11 {
                            % [Voice 4 measure 6]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            c,16
                            :32
                            [

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-sharp-markup
                            cqs,8
                            :32
                            - \accent

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            df,16
                            :32
                            - \accent
                            ]

                            r8.

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-flat-markup
                            dqf,8
                            :32
                            \ff
                            - \accent
                            \>
                            [

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            d,8
                            :32
                            - \accent
                            ]

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) "8")
                        \times 6/7 {

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            d,16
                            :32
                            - \accent
                            [

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            df,16
                            :32
                            - \accent

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-flat-markup
                            dqf,8
                            :32
                            - \accent

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            c,8
                            :32
                            - \accent

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-sharp-markup
                            cqs,8
                            :32
                            - \accent
                            ]
                            <>
                            \f

                            r8

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            df,8
                            :32
                            \ff
                            - \accent
                            [

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            c,8
                            :32
                            - \accent
                            ]

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 12) "16")
                        \times 12/13 {
                            % [Voice 4 measure 7]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-flat-markup
                            dqf,8
                            :32
                            - \accent
                            [

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            d,16
                            :32
                            - \accent

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            df,16
                            :32
                            - \accent

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            c,8
                            :32
                            - \accent

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            c,8
                            :32
                            - \accent
                            ]

                            r4

                            r16

                        }
                        % [Voice 4 measure 8]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2.
                        % [Voice 4 measure 9]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2.

                        r2
                        % [Voice 4 measure 10]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r8.

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-sharp-markup
                        cqs,16
                        :32
                        \f
                        - \accent
                        ~

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-sharp-markup
                        cqs,16
                        :32
                        \<
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-sharp-markup
                        cqs,16
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        c,16
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        c,16
                        :32
                        - \accent
                        ~
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        c,16
                        :32
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-sharp-markup
                        cqs,16
                        :32
                        - \accent
                        ~

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-sharp-markup
                        cqs,16
                        :32

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        df,16
                        :32
                        - \accent
                        ~
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        df,16
                        :32
                        [

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        c,16
                        :32
                        \ff
                        - \accent
                        ]

                        r8

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 12) "16")
                        \times 12/13 {
                            % [Voice 4 measure 11]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r16

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-flat-markup
                            dqf,8
                            :32
                            \f
                            - \accent
                            [

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            d,8
                            :32
                            - \accent

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            df,16
                            :32
                            - \accent

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            c,16
                            :32
                            - \accent

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-flat-markup
                            dqf,8
                            :32
                            - \accent
                            ]

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            d,4
                            :32
                            - \accent

                        }
                        % [Voice 4 measure 12]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r1
                        % [Voice 4 measure 13]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f,4
                        \p
                        - \downbow
                        ^ \markup { norm. }
                        ^ \markup { full bows as possible }
                        \<
                        - \tweak style solid-line                              %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        bf,4
                        - \upbow
                        - \tweak style solid-line                              %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        ef4
                        - \downbow
                        - \tweak style solid-line                              %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)
                        % [Voice 4 measure 14]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        af4
                        - \upbow
                        - \tweak style solid-line                              %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        ef4
                        - \downbow
                        - \tweak style solid-line                              %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        bf,4
                        - \upbow
                        - \tweak style solid-line                              %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f,4
                        \mp
                        - \downbow
                        % [Voice 4 measure 15]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2.
                        % [Voice 4 measure 16]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2.
                        % [Voice 4 measure 17]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2.

                        r2
                        % [Voice 4 measure 18]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r4

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) "8")
                        \times 6/7 {

                            r8

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            d,8
                            :32
                            \ff
                            - \accent
                            ^ \markup ord.
                            \>
                            [

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-flat-markup
                            dqf,8
                            :32
                            - \accent

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            c,8
                            :32
                            - \accent

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            df,16
                            :32
                            - \accent

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-sharp-markup
                            cqs,16
                            :32
                            - \accent

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            c,8
                            :32
                            - \accent

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            c,8
                            :32
                            - \accent
                            ]
                            <>
                            \f

                        }

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "8.")
                        \times 4/5 {
                            % [Voice 4 measure 19]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r8.

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            df,16
                            :32
                            \ff
                            - \accent
                            [

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-sharp-markup
                            cqs,8
                            :32
                            - \accent

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            c,8
                            :32
                            - \accent

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            c,8
                            :32
                            - \accent

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            df,16
                            :32
                            - \accent

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            d,16
                            :32
                            - \accent

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-flat-markup
                            dqf,8
                            :32
                            - \accent
                            ]

                            r16

                        }

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "8")
                        \times 4/5 {
                            % [Voice 4 measure 20]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r8.

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            c,16
                            :32
                            \f
                            - \accent
                            \<
                            [

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-flat-markup
                            df,16
                            :32
                            - \accent

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \one-quarter-sharp-markup
                            cqs,16
                            :32
                            - \accent
                            ]

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            c,4
                            :32
                            \ff
                            - \accent

                        }

                        r2.
                        % [Voice 4 measure 21]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2.
                        % [Voice 4 measure 22]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r1
                        \bar ".|:"

                    }

                }

            }

        >>

    >>
}                                                                              %! abjad.LilyPondFile._get_formatted_blocks()