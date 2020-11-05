
    \context Score = "adumbration Score"
    <<

        \context TimeSignatureContext = "Global Context"
        {
            % [Global Context measure 1]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=51
            \time 6/4                                                          %! scaling time signatures
            \mark \markup {
                \bold
                    {
                    }
                }
            s1 * 3/2
            ^ \markup {
                \override
                    #'(font-name . "STIXGeneral Bold")
                    "E.H. [komm (ii)]"
                }
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-mixed-number-markup #2 #0 #1 #"51" #"1" #"9"
                  \hspace #1
                  \upright [
                  \abjad-metric-modulation-tuplet-rhs #1 #0 #2 #0 #2 #3 #'(0.6 . 0.6)
                  \hspace #0.5
                  \upright ]
              }
            }
            % [Global Context measure 2]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 3]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 4]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 5]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 6]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 7]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 8]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 9]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 2/4                                                          %! scaling time signatures
            s1 * 1/2
            % [Global Context measure 10]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 6/4                                                          %! scaling time signatures
            s1 * 3/2
            % [Global Context measure 11]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 12]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

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
                    \clef "treble"
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    e''2
                    \p
                    ^ \markup {
                        \center-align
                            +0
                        }
                    ^ \markup { clt. }
                    \<

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-tridecimal-third-tone-up 
                    g''1
                    ^ \markup {
                        \center-align
                            A♭-41
                        }
                    % [Voice 1 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \natural-one-syntonic-comma-up 
                    c'''4
                    \mf
                    ^ \markup {
                        \center-align
                            +14
                        }

                    r4

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-seventeen-limit-schisma-up 
                                \hspace #0.125
                                \two-tridecimal-third-tone-down 
                            }
                        }
                    d'''4
                    \f
                    ^ \markup {
                        \center-align
                            C♯-26
                        }
                    ^ \markup { 1/2clt. }
                    \>
                    ~

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-seventeen-limit-schisma-up 
                                \hspace #0.125
                                \two-tridecimal-third-tone-down 
                            }
                        }
                    d'''8
                    [

                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \sharp-one-syntonic-comma-down 
                    gs''8
                    ^ \markup {
                        \center-align
                            -14
                        }
                    ~
                    ]

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \sharp-one-syntonic-comma-down 
                    gs''4
                    % [Voice 1 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    g'2
                    \mp
                    ^ \markup {
                        \center-align
                            +2
                        }

                    r2
                    % [Voice 1 measure 4]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    e'''2.
                    \p
                    ^ \markup {
                        \center-align
                            +0
                        }
                    ^ \markup { norm. }
                    \<
                    ~

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    e'''2
                    ~
                    % [Voice 1 measure 5]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    e'''4

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-tridecimal-third-tone-down 
                                \hspace #0.125
                                \abjad-sharp 
                            }
                        }
                    cs'''4
                    \mf
                    ^ \markup {
                        \center-align
                            C+41
                        }

                    r4

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \natural-one-syntonic-comma-up 
                    d'''4
                    \f
                    ^ \markup {
                        \center-align
                            +18
                        }
                    ^ \markup { 1/2clt. }
                    \>
                    ~
                    % [Voice 1 measure 6]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \natural-one-syntonic-comma-up 
                    d'''4

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-undecimal-quarter-tone-up 
                                \hspace #0.125
                                \abjad-flat 
                            }
                        }
                    bf'4
                    \mp
                    ^ \markup {
                        \center-align
                            +49
                        }

                    r2.
                    % [Voice 1 measure 7]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    c'''2
                    \pp
                    ^ \markup {
                        \center-align
                            +37
                        }
                    ^ \markup { clt. }

                    r4
                    % [Voice 1 measure 8]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-septimal-comma-down 
                    d'''2
                    \p
                    ^ \markup {
                        \center-align
                            -31
                        }
                    ^ \markup { 1/2clt. }
                    \<

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-nineteen-limit-schisma-up 
                                \hspace #0.125
                                \flat-one-syntonic-comma-up 
                            }
                        }
                    cf''4
                    ^ \markup {
                        \center-align
                            +11
                        }
                    ~

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-nineteen-limit-schisma-up 
                                \hspace #0.125
                                \flat-one-syntonic-comma-up 
                            }
                        }
                    cf''4

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-septimal-comma-down 
                    d'''4
                    ^ \markup {
                        \center-align
                            -31
                        }
                    ~
                    % [Voice 1 measure 9]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-septimal-comma-down 
                    d'''4

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    a''4
                    ^ \markup {
                        \center-align
                            -2
                        }
                    ~

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) "8")
                    \times 6/5 {
                        % [Voice 1 measure 10]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural 
                        a''4.

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup {
                            \concat
                                {
                                    \one-tridecimal-third-tone-down 
                                    \hspace #0.125
                                    \one-septimal-comma-up 
                                    \hspace #0.125
                                    \abjad-sharp 
                                }
                            }
                        gs''4
                        \mf
                        ^ \markup {
                            \center-align
                                -30
                            }

                    }

                    r2

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \two-tridecimal-third-tone-up 
                                \hspace #0.125
                                \one-septimal-comma-down 
                                \hspace #0.125
                                \natural-one-syntonic-comma-down 
                            }
                        }
                    c'''4
                    \f
                    ^ \markup {
                        \center-align
                            C♯-26
                        }
                    ^ \markup { norm. }
                    \>
                    ~
                    % [Voice 1 measure 11]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \two-tridecimal-third-tone-up 
                                \hspace #0.125
                                \one-septimal-comma-down 
                                \hspace #0.125
                                \natural-one-syntonic-comma-down 
                            }
                        }
                    c'''4
                    \mp

                    r2
                    \bar "||"
                    % [Voice 1 measure 12]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                    \once \override Rest.color = #white                        %! applying ending skips
                    r1 * 3/32

                    \once \override MultiMeasureRest.color = #white            %! applying ending skips
                    R1 * 3/32
                    ^ \markup {                                                %! applying ending skips
                        \musicglyph                                            %! applying ending skips
                            #"scripts.ushortfermata"                           %! applying ending skips
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
                    \tweak Accidental.text \abjad-natural 
                    c'2
                    \p
                    ^ \markup {
                        \center-align
                            +0
                        }
                    ^ \markup { clt. }
                    \<

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \sharp-one-syntonic-comma-down 
                    gs'4
                    ^ \markup {
                        \center-align
                            -14
                        }
                    ~

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \sharp-one-syntonic-comma-down 
                    gs'4

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    e'4
                    \mf
                    ^ \markup {
                        \center-align
                            +0
                        }

                    r4
                    % [Voice 2 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \two-tridecimal-third-tone-up 
                                \hspace #0.125
                                \one-septimal-comma-down 
                                \hspace #0.125
                                \flat-one-syntonic-comma-down 
                            }
                        }
                    af'2
                    \f
                    ^ \markup {
                        \center-align
                            A-26
                        }
                    ^ \markup { 1/2clt. }
                    \>
                    ~

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) "8")
                    \times 6/5 {

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup {
                            \concat
                                {
                                    \two-tridecimal-third-tone-up 
                                    \hspace #0.125
                                    \one-septimal-comma-down 
                                    \hspace #0.125
                                    \flat-one-syntonic-comma-down 
                                }
                            }
                        af'2

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \natural-one-syntonic-comma-up 
                        g'8
                        \mp
                        ^ \markup {
                            \center-align
                                +16
                            }

                    }
                    % [Voice 2 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2.

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \sharp-one-syntonic-comma-down 
                    ds''4
                    \p
                    ^ \markup {
                        \center-align
                            -12
                        }
                    ^ \markup { norm. }
                    \<
                    ~
                    % [Voice 2 measure 4]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \sharp-one-syntonic-comma-down 
                    ds''4

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    b'2
                    ^ \markup {
                        \center-align
                            +2
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    b'2
                    ^ \markup {
                        \center-align
                            +2
                        }
                    ~
                    % [Voice 2 measure 5]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    b'4
                    \mf

                    r4

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    g'2
                    \f
                    ^ \markup {
                        \center-align
                            +2
                        }
                    ^ \markup { 1/2clt. }
                    \>
                    ~
                    % [Voice 2 measure 6]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    g'2.
                    \mp

                    r2
                    % [Voice 2 measure 7]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-seventeen-limit-schisma-up 
                                \hspace #0.125
                                \two-septimal-comma-down 
                                \hspace #0.125
                                \double-flat 
                            }
                        }
                    bff'4
                    \pp
                    ^ \markup {
                        \center-align
                            A♭+37
                        }
                    ^ \markup { clt. }

                    r4

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-septimal-comma-down 
                    d''4
                    \p
                    ^ \markup {
                        \center-align
                            -31
                        }
                    ^ \markup { 1/2clt. }
                    \<
                    ~

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 5) "4")
                    \times 5/4 {
                        % [Voice 2 measure 8]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-septimal-comma-down 
                        d''4

                        b'2.
                        \mf
                        ^ \markup {
                            \center-align
                                +45
                            }

                    }
                    % [Voice 2 measure 9]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 1/4

                    R1 * 1/4
                    % [Voice 2 measure 10]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-tridecimal-third-tone-up 
                    g'2
                    \f
                    ^ \markup {
                        \center-align
                            A♭-41
                        }
                    ^ \markup { norm. }
                    \>

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    e'2.
                    ^ \markup {
                        \center-align
                            +0
                        }
                    ~
                    % [Voice 2 measure 11]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    e'4
                    \mp

                    r4

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-seventeen-limit-schisma-up 
                                \hspace #0.125
                                \two-tridecimal-third-tone-down 
                            }
                        }
                    f'4
                    \pp
                    ^ \markup {
                        \center-align
                            E-24
                        }
                    ^ \markup { 1/2clt. }
                    \bar "||"
                    % [Voice 2 measure 12]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                    \once \override Rest.color = #white                        %! applying ending skips
                    r1 * 3/32

                    \once \override MultiMeasureRest.color = #white            %! applying ending skips
                    R1 * 3/32
                    ^ \markup {                                                %! applying ending skips
                        \musicglyph                                            %! applying ending skips
                            #"scripts.ushortfermata"                           %! applying ending skips
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

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 5) "4")
                    \times 5/7 {
                        % [Voice 3 measure 1]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \set Staff.shortInstrumentName =                       %! applying staff names and clefs
                        \markup { va. }                                        %! applying staff names and clefs
                        \set Staff.instrumentName =                            %! applying staff names and clefs
                        "Viola"                                                %! applying staff names and clefs
                        \clef "varC"
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural 
                        f'1
                        \p
                        ^ \markup {
                            \center-align
                                -2
                            }
                        ^ \markup { clt. }
                        \<

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup {
                            \concat
                                {
                                    \one-tridecimal-third-tone-down 
                                    \hspace #0.125
                                    \one-septimal-comma-up 
                                    \hspace #0.125
                                    \abjad-sharp 
                                }
                            }
                        gs2.
                        ^ \markup {
                            \center-align
                                -30
                            }
                        ~

                    }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-tridecimal-third-tone-down 
                                \hspace #0.125
                                \one-septimal-comma-up 
                                \hspace #0.125
                                \abjad-sharp 
                            }
                        }
                    gs4
                    ~
                    % [Voice 3 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-tridecimal-third-tone-down 
                                \hspace #0.125
                                \one-septimal-comma-up 
                                \hspace #0.125
                                \abjad-sharp 
                            }
                        }
                    gs4
                    \mf

                    r2

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-seventeen-limit-schisma-up 
                                \hspace #0.125
                                \two-tridecimal-third-tone-down 
                            }
                        }
                    a2
                    \f
                    ^ \markup {
                        \center-align
                            A♭-24
                        }
                    ^ \markup { 1/2clt. }
                    \>
                    % [Voice 3 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    b4
                    \mp
                    ^ \markup {
                        \center-align
                            +2
                        }

                    r4

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-tridecimal-third-tone-up 
                    d'2
                    \pp
                    ^ \markup {
                        \center-align
                            E♭-39
                        }
                    ^ \markup { norm. }
                    % [Voice 3 measure 4]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2.

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    b2
                    \p
                    ^ \markup {
                        \center-align
                            +2
                        }
                    ^ \markup { 1/2clt. }
                    \<
                    % [Voice 3 measure 5]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    af'2
                    ^ \markup {
                        \center-align
                            +14
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-seventeen-limit-schisma-down 
                                \hspace #0.125
                                \one-septimal-comma-up 
                                \hspace #0.125
                                \abjad-sharp 
                            }
                        }
                    bs2
                    ^ \markup {
                        \center-align
                            +34
                        }
                    ~
                    % [Voice 3 measure 6]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-seventeen-limit-schisma-down 
                                \hspace #0.125
                                \one-septimal-comma-up 
                                \hspace #0.125
                                \abjad-sharp 
                            }
                        }
                    bs2

                    d'4
                    ^ \markup {
                        \center-align
                            +45
                        }
                    ~

                    d'4
                    \mf

                    r4
                    % [Voice 3 measure 7]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-tridecimal-third-tone-down 
                                \hspace #0.125
                                \abjad-sharp 
                            }
                        }
                    cs'2
                    \pp
                    ^ \markup {
                        \center-align
                            C+41
                        }
                    ^ \markup { clt. }

                    r4
                    % [Voice 3 measure 8]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "2")
                    \times 2/3 {

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup {
                            \concat
                                {
                                    \one-septimal-comma-up 
                                    \hspace #0.125
                                    \abjad-sharp 
                                }
                            }
                        ds'2
                        \f
                        ^ \markup {
                            \center-align
                                +37
                            }
                        ^ \markup { 1/2clt. }
                        \>

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural 
                        c''2
                        ^ \markup {
                            \center-align
                                +0
                            }

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-septimal-comma-down 
                        d'2
                        ^ \markup {
                            \center-align
                                -31
                            }

                    }
                    % [Voice 3 measure 9]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    e4
                    \mp
                    ^ \markup {
                        \center-align
                            +0
                        }

                    r4
                    % [Voice 3 measure 10]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \sharp-one-syntonic-comma-down 
                    gs2
                    \p
                    ^ \markup {
                        \center-align
                            -14
                        }
                    ^ \markup { norm. }
                    \<
                    ~

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) "8")
                    \times 6/5 {

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \sharp-one-syntonic-comma-down 
                        gs4

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \natural-one-syntonic-comma-up 
                        c'4.
                        \mf
                        ^ \markup {
                            \center-align
                                +14
                            }

                    }

                    r4
                    % [Voice 3 measure 11]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \two-tridecimal-third-tone-up 
                                \hspace #0.125
                                \one-septimal-comma-down 
                                \hspace #0.125
                                \natural-one-syntonic-comma-down 
                            }
                        }
                    g4
                    \pp
                    ^ \markup {
                        \center-align
                            A♭-24
                        }
                    ^ \markup { 1/2clt. }
                    \bar "||"
                    % [Voice 3 measure 12]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                    \once \override Rest.color = #white                        %! applying ending skips
                    r1 * 3/32

                    \once \override MultiMeasureRest.color = #white            %! applying ending skips
                    R1 * 3/32
                    ^ \markup {                                                %! applying ending skips
                        \musicglyph                                            %! applying ending skips
                            #"scripts.ushortfermata"                           %! applying ending skips
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
                    \tweak Accidental.text \natural-one-syntonic-comma-up 
                    g,1
                    \p
                    ^ \markup {
                        \center-align
                            +16
                        }
                    ^ \markup { clt. }
                    \<

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    e,2
                    ^ \markup {
                        \center-align
                            +0
                        }
                    % [Voice 4 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \sharp-one-syntonic-comma-down 
                    cs2
                    \mf
                    ^ \markup {
                        \center-align
                            -16
                        }

                    r4

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \two-tridecimal-third-tone-up 
                                \hspace #0.125
                                \one-septimal-comma-down 
                                \hspace #0.125
                                \flat-one-syntonic-comma-down 
                            }
                        }
                    ef'2
                    \f
                    ^ \markup {
                        \center-align
                            E-24
                        }
                    ^ \markup { 1/2clt. }
                    \>
                    % [Voice 4 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-tridecimal-third-tone-down 
                                \hspace #0.125
                                \one-septimal-comma-up 
                                \hspace #0.125
                                \abjad-sharp 
                            }
                        }
                    ds2
                    \mp
                    ^ \markup {
                        \center-align
                            -28
                        }

                    r2
                    % [Voice 4 measure 4]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \clef "tenorvarC"
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    bf'4
                    \pp
                    ^ \markup {
                        \center-align
                            +18
                        }
                    ^ \markup { norm. }

                    r4

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) "8")
                    \times 6/5 {

                        \clef "bass"
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural 
                        b,2
                        \p
                        ^ \markup {
                            \center-align
                                +2
                            }
                        ^ \markup { 1/2clt. }
                        \<

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \sharp-one-syntonic-comma-down 
                        cs8
                        ^ \markup {
                            \center-align
                                -16
                            }
                        ~

                    }
                    % [Voice 4 measure 5]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \sharp-one-syntonic-comma-down 
                    cs4

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-tridecimal-third-tone-up 
                                \hspace #0.125
                                \one-septimal-comma-down 
                            }
                        }
                    c2
                    ^ \markup {
                        \center-align
                            +30
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    b,4
                    \mf
                    ^ \markup {
                        \center-align
                            +2
                        }
                    % [Voice 4 measure 6]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2.

                    d2
                    \f
                    ^ \markup {
                        \center-align
                            +45
                        }
                    ^ \markup { clt. }
                    \>
                    ~
                    % [Voice 4 measure 7]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    d2

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \natural-one-syntonic-comma-up 
                    c4
                    \mp
                    ^ \markup {
                        \center-align
                            +14
                        }
                    % [Voice 4 measure 8]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-tridecimal-third-tone-up 
                                \hspace #0.125
                                \sharp-two-syntonic-comma-down 
                            }
                        }
                    ds1
                    \p
                    ^ \markup {
                        \center-align
                            +32
                        }
                    ^ \markup { 1/2clt. }
                    \<
                    % [Voice 4 measure 9]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    e,2
                    ^ \markup {
                        \center-align
                            +0
                        }
                    % [Voice 4 measure 10]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \natural-one-syntonic-comma-up 
                    g,4
                    \mf
                    ^ \markup {
                        \center-align
                            +16
                        }

                    r2

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    e,4
                    \f
                    ^ \markup {
                        \center-align
                            +0
                        }
                    ^ \markup { norm. }
                    \>
                    ~

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural 
                    e,8
                    [

                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \sharp-one-syntonic-comma-down 
                    cs8
                    ^ \markup {
                        \center-align
                            -16
                        }
                    ~
                    ]

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \sharp-one-syntonic-comma-down 
                    cs4
                    \mp
                    % [Voice 4 measure 11]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    \clef "tenorvarC"
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-seventeen-limit-schisma-up 
                                \hspace #0.125
                                \two-tridecimal-third-tone-down 
                                \hspace #0.125
                                \abjad-flat 
                            }
                        }
                    bf'2
                    \pp
                    ^ \markup {
                        \center-align
                            A-26
                        }
                    ^ \markup { 1/2clt. }
                    \bar "||"
                    % [Voice 4 measure 12]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                    \once \override Rest.color = #white                        %! applying ending skips
                    r1 * 3/32

                    \once \override MultiMeasureRest.color = #white            %! applying ending skips
                    R1 * 3/32
                    ^ \markup {                                                %! applying ending skips
                        \musicglyph                                            %! applying ending skips
                            #"scripts.ushortfermata"                           %! applying ending skips
                        }                                                      %! applying ending skips
                    \stopStaff \startStaff                                     %! applying ending skips

                }
                }

            }

        >>

    >>
