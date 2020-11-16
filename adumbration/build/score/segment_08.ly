
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
                        x4
                    }
                }
            s1 * 1
            ^ \markup {
                \override
                    #'(font-name . "STIXGeneral Bold")
                    \column
                        {
                            \box
                                \caps
                                    Anamorphosis/Calligrapher
                            \caps
                                "[Ombreggiato (ii)]"
                        }
                }
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-mixed-number-markup #2 #0 #1 #"38" #"1" #"3"
                  \hspace #1
                  \upright [
                  \abjad-metric-modulation #2 #0 #3 #1 #'(0.6 . 0.6)
                  \hspace #0.5
                  \upright ]
              }
            }
            % [Global Context measure 2]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 2/4                                                          %! scaling time signatures
            s1 * 1/2
            % [Global Context measure 3]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 4]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \once \override TimeSignature.color = #white                       %! applying ending skips
            \time 3/16                                                         %! scaling time signatures
            s1 * 3/16

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
                    \bar ".|:"
                    \clef "treble"
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    c''2.
                    \p
                    ^ \markup {
                        \center-align
                            +0
                        }
                    ^ \markup { ½clt. }

                    r4
                    % [Voice 1 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2
                    % [Voice 1 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-septimal-comma-up 
                                \hspace #0.125
                                \sharp-one-syntonic-comma-down 
                            }
                        }
                    gs''2.
                    ^ \markup {
                        \center-align
                            +21
                        }
                    \bar ":|."
                    % [Voice 1 measure 4]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                    \once \override Rest.color = #white                        %! applying ending skips
                    r1 * 3/32

                    \once \override MultiMeasureRest.color = #white            %! applying ending skips
                    R1 * 3/32
                    ^ \markup {                                                %! applying ending skips
                        \musicglyph                                            %! applying ending skips
                            #"scripts.ufermata"                                %! applying ending skips
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
                    \bar ".|:"
                    \clef "treble"
                    r1
                    % [Voice 2 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-septimal-comma-up 
                                \hspace #0.125
                                \natural-one-syntonic-comma-up 
                            }
                        }
                    f'2
                    \mf
                    ^ \markup {
                        \center-align
                            +47
                        }
                    ^ \markup { clt. \raise #0.75 \baca-circle-very-wide-markup }
                    % [Voice 2 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-septimal-comma-up 
                    a'2.
                    ^ \markup {
                        \center-align
                            +33
                        }
                    ^ \markup { clt. \raise #0.75 \baca-circle-wide-poss-markup }

                    r4
                    \bar ":|."
                    % [Voice 2 measure 4]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                    \once \override Rest.color = #white                        %! applying ending skips
                    r1 * 3/32

                    \once \override MultiMeasureRest.color = #white            %! applying ending skips
                    R1 * 3/32
                    ^ \markup {                                                %! applying ending skips
                        \musicglyph                                            %! applying ending skips
                            #"scripts.ufermata"                                %! applying ending skips
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
                    \bar ".|:"
                    \clef "varC"
                    r2

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \natural-one-syntonic-comma-down 
                    e4
                    \f
                    - \snappizzicato
                    ^ \markup {
                        \center-align
                            -14
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    g4
                    ^ \markup {
                        \center-align
                            +2
                        }
                    ^ \markup { "slow bow" }
                    ~
                    % [Voice 3 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    g4

                    r4
                    % [Voice 3 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r1
                    \bar ":|."
                    % [Voice 3 measure 4]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                    \once \override Rest.color = #white                        %! applying ending skips
                    r1 * 3/32

                    \once \override MultiMeasureRest.color = #white            %! applying ending skips
                    R1 * 3/32
                    ^ \markup {                                                %! applying ending skips
                        \musicglyph                                            %! applying ending skips
                            #"scripts.ufermata"                                %! applying ending skips
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
                    \once \override Staff.Clef.X-extent = ##f \once \override Staff.Clef.extra-offset = #'(-2.25 . 0)
                    % [Voice 4 measure 1]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \set Staff.shortInstrumentName =                           %! applying staff names and clefs
                    \markup { vc. }                                            %! applying staff names and clefs
                    \set Staff.instrumentName =                                %! applying staff names and clefs
                    "Violoncello"                                              %! applying staff names and clefs
                    \bar ".|:"
                    \clef "bass"
                    r4

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-septimal-comma-down 
                                \hspace #0.125
                                \natural-one-syntonic-comma-down 
                            }
                        }
                    d,4
                    \mp
                    ^ \markup {
                        \center-align
                            -45
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-septimal-comma-down 
                                \hspace #0.125
                                \abjad-flat 
                            }
                        }
                    bf,2
                    :32
                    \f
                    ^ \markup {
                        \center-align
                            -31
                        }
                    % [Voice 4 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    ef,2
                    \mf
                    ^ \markup {
                        \center-align
                            +16
                        }
                    ^ \markup { clt. \raise #0.75 \baca-circle-very-wide-markup }
                    % [Voice 4 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r1
                    \bar ":|."
                    % [Voice 4 measure 4]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                    \once \override Rest.color = #white                        %! applying ending skips
                    r1 * 3/32

                    \once \override MultiMeasureRest.color = #white            %! applying ending skips
                    R1 * 3/32
                    ^ \markup {                                                %! applying ending skips
                        \musicglyph                                            %! applying ending skips
                            #"scripts.ufermata"                                %! applying ending skips
                        }                                                      %! applying ending skips
                    \stopStaff \startStaff                                     %! applying ending skips

                }
                }

            }

        >>

    >>
