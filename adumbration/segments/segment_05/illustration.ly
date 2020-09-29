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

            \tempo 4=76
            \time 5/4                                                          %! scaling time signatures
            \mark \markup {
                \bold
                    {
                    }
                }
            s1 * 5/4
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-mixed-number-markup #2 #0 #1 #"76" #"2" #"3"
                  \hspace #1
                  \upright [
                  \abjad-metric-modulation #1 #0 #2 #0 #'(0.6 . 0.6)
                  \hspace #0.5
                  \upright ]
              }
            }
            % [Global Context measure 2]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 1/4                                                          %! scaling time signatures
            s1 * 1/4
            % [Global Context measure 3]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 2/4                                                          %! scaling time signatures
            s1 * 1/2
            % [Global Context measure 4]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 5]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 6]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 7]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 8]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \once \override TimeSignature.color = #white                       %! applying ending skips
            \time 1/4                                                          %! scaling time signatures
            s1 * 1/4

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
                    \tweak Accidental.text \sharp-two-syntonic-comma-down 
                    ds'''2.
                    \mf
                    ^ \markup {
                        \center-align
                            -27
                        }
                    ^ \markup { st. }
                    ~

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \sharp-two-syntonic-comma-down 
                    ds'''2
                    % [Voice 1 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \sharp-two-syntonic-comma-down 
                    ds'''4
                    ^ \markup {
                        \center-align
                            -27
                        }
                    % [Voice 1 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-septimal-comma-down 
                    g''2
                    ^ \markup {
                        \center-align
                            -27
                        }
                    % [Voice 1 measure 4]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-septimal-comma-down 
                    g''2.
                    ^ \markup {
                        \center-align
                            -27
                        }
                    ~

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-septimal-comma-down 
                    g''2
                    % [Voice 1 measure 5]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-septimal-comma-down 
                    g''2.
                    ^ \markup {
                        \center-align
                            -27
                        }
                    % [Voice 1 measure 6]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-septimal-comma-down 
                    g''1
                    ^ \markup {
                        \center-align
                            -27
                        }
                    % [Voice 1 measure 7]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-septimal-comma-down 
                    g''2.
                    ^ \markup {
                        \center-align
                            -27
                        }
                    ~

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-septimal-comma-down 
                    g''2
                    \bar "||"
                    % [Voice 1 measure 8]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                    \once \override Rest.color = #white                        %! applying ending skips
                    r1 * 1/8

                    \once \override MultiMeasureRest.color = #white            %! applying ending skips
                    R1 * 1/8
                    ^ \markup {                                                %! applying ending skips
                        \musicglyph                                            %! applying ending skips
                            #"scripts.ulongfermata"                            %! applying ending skips
                        }                                                      %! applying ending skips
                    \stopStaff \startStaff                                     %! applying ending skips

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
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-tridecimal-third-tone-down 
                                \hspace #0.125
                                \sharp-two-syntonic-comma-down 
                            }
                        }
                    bs'2.
                    \mf
                    ^ \markup {
                        \center-align
                            B+13
                        }
                    ^ \markup { st. }
                    ~

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-tridecimal-third-tone-down 
                                \hspace #0.125
                                \sharp-two-syntonic-comma-down 
                            }
                        }
                    bs'2
                    % [Voice 2 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-tridecimal-third-tone-down 
                    e''4
                    ^ \markup {
                        \center-align
                            E♭+41
                        }
                    % [Voice 2 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-tridecimal-third-tone-down 
                    e''2
                    ^ \markup {
                        \center-align
                            E♭+41
                        }
                    % [Voice 2 measure 4]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-tridecimal-third-tone-down 
                    e''2.
                    ^ \markup {
                        \center-align
                            E♭+41
                        }
                    ~

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-tridecimal-third-tone-down 
                    e''2
                    % [Voice 2 measure 5]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-tridecimal-third-tone-down 
                    e''2.
                    ^ \markup {
                        \center-align
                            E♭+41
                        }
                    % [Voice 2 measure 6]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-tridecimal-third-tone-down 
                    e''1
                    ^ \markup {
                        \center-align
                            E♭+41
                        }
                    % [Voice 2 measure 7]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-tridecimal-third-tone-down 
                    e''2.
                    ^ \markup {
                        \center-align
                            E♭+41
                        }
                    ~

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-tridecimal-third-tone-down 
                    e''2
                    \bar "||"
                    % [Voice 2 measure 8]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                    \once \override Rest.color = #white                        %! applying ending skips
                    r1 * 1/8

                    \once \override MultiMeasureRest.color = #white            %! applying ending skips
                    R1 * 1/8
                    ^ \markup {                                                %! applying ending skips
                        \musicglyph                                            %! applying ending skips
                            #"scripts.ulongfermata"                            %! applying ending skips
                        }                                                      %! applying ending skips
                    \stopStaff \startStaff                                     %! applying ending skips

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
                    \tweak Accidental.text \abjad-natural 
                    a2.
                    \mf
                    ^ \markup {
                        \center-align
                            +4
                        }
                    ^ \markup { st. }
                    ~

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    a2
                    % [Voice 3 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    a4
                    ^ \markup {
                        \center-align
                            +4
                        }
                    % [Voice 3 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    a2
                    ^ \markup {
                        \center-align
                            +4
                        }
                    % [Voice 3 measure 4]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    a2.
                    ^ \markup {
                        \center-align
                            +4
                        }
                    ~

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    a2
                    % [Voice 3 measure 5]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    a2.
                    ^ \markup {
                        \center-align
                            +4
                        }
                    % [Voice 3 measure 6]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    a1
                    ^ \markup {
                        \center-align
                            +4
                        }
                    % [Voice 3 measure 7]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-septimal-comma-down 
                                \hspace #0.125
                                \sharp-two-syntonic-comma-down 
                            }
                        }
                    cs'2.
                    ^ \markup {
                        \center-align
                            C+41
                        }
                    ~

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-septimal-comma-down 
                                \hspace #0.125
                                \sharp-two-syntonic-comma-down 
                            }
                        }
                    cs'2
                    \bar "||"
                    % [Voice 3 measure 8]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                    \once \override Rest.color = #white                        %! applying ending skips
                    r1 * 1/8

                    \once \override MultiMeasureRest.color = #white            %! applying ending skips
                    R1 * 1/8
                    ^ \markup {                                                %! applying ending skips
                        \musicglyph                                            %! applying ending skips
                            #"scripts.ulongfermata"                            %! applying ending skips
                        }                                                      %! applying ending skips
                    \stopStaff \startStaff                                     %! applying ending skips

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
                    g,2.
                    \mf
                    ^ \markup {
                        \center-align
                            +0
                        }
                    ^ \markup { st. }
                    ~

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    g,2
                    % [Voice 4 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    g,4
                    ^ \markup {
                        \center-align
                            +0
                        }
                    % [Voice 4 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    g,2
                    ^ \markup {
                        \center-align
                            +0
                        }
                    % [Voice 4 measure 4]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-tridecimal-third-tone-down 
                                \hspace #0.125
                                \sharp-two-syntonic-comma-down 
                            }
                        }
                    bs,2.
                    ^ \markup {
                        \center-align
                            B+13
                        }
                    ~

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-tridecimal-third-tone-down 
                                \hspace #0.125
                                \sharp-two-syntonic-comma-down 
                            }
                        }
                    bs,2
                    % [Voice 4 measure 5]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-tridecimal-third-tone-down 
                                \hspace #0.125
                                \sharp-two-syntonic-comma-down 
                            }
                        }
                    bs,2.
                    ^ \markup {
                        \center-align
                            B+13
                        }
                    % [Voice 4 measure 6]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    g,1
                    ^ \markup {
                        \center-align
                            +0
                        }
                    % [Voice 4 measure 7]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    g,2.
                    ^ \markup {
                        \center-align
                            +0
                        }
                    ~

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    g,2
                    \bar "||"
                    % [Voice 4 measure 8]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                    \once \override Rest.color = #white                        %! applying ending skips
                    r1 * 1/8

                    \once \override MultiMeasureRest.color = #white            %! applying ending skips
                    R1 * 1/8
                    ^ \markup {                                                %! applying ending skips
                        \musicglyph                                            %! applying ending skips
                            #"scripts.ulongfermata"                            %! applying ending skips
                        }                                                      %! applying ending skips
                    \stopStaff \startStaff                                     %! applying ending skips

                }
                }

            }

        >>

    >>
}                                                                              %! abjad.LilyPondFile._get_formatted_blocks()