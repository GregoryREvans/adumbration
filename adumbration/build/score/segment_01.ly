
    \context Score = "adumbration Score"
    <<

        \context TimeSignatureContext = "Global Context"
        {
            % [Global Context measure 1]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=115
            \time 4/4                                                          %! scaling time signatures
            \mark \markup {
                \bold
                    {
                    }
                }
            s1 * 1
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"115"
              }
            }
            % [Global Context measure 2]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 3]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 4]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 5]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 6]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 7]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 8]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 9]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 10]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 2/4                                                          %! scaling time signatures
            s1 * 1/2

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
                    \tweak Accidental.text \abjad-flat 
                    ef''1
                    :32
                    \fff
                    ^ \markup {
                        \center-align
                            +0
                        }
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \upright
                        scratch \hspace #0.5 }
                    - \tweak bound-details.right.padding 1.4
                    - \tweak staff-padding #4.5
                    \startTextSpanOne
                    % [Voice 1 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-tridecimal-third-tone-down 
                    c''4
                    :32
                    ^ \markup {
                        \center-align
                            B+41
                        }
                    \stopTextSpanOne
                    - \abjad-solid-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \upright
                        norm. \hspace #0.5 }
                    - \tweak bound-details.right.padding 3
                    - \tweak staff-padding #4.5
                    \startTextSpanOne

                    r4
                    \stopTextSpanOne

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \natural-one-syntonic-comma-down 
                    g''4
                    :32
                    \sfp
                    ^ \markup {
                        \center-align
                            -14
                        }
                    - \tweak stencil #abjad-flared-hairpin
                    \<
                    ~
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \upright
                        XFB. \hspace #0.5 }
                    - \tweak bound-details.right.padding 1.4
                    - \tweak staff-padding #4.5
                    \startTextSpanOne
                    % [Voice 1 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \natural-one-syntonic-comma-down 
                    g''1
                    :32
                    \stopTextSpanOne
                    - \abjad-solid-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \upright
                        scratch \hspace #0.5 }
                    - \tweak bound-details.right.padding 3
                    - \tweak staff-padding #4.5
                    \startTextSpanOne

                    r4
                    \ff
                    \stopTextSpanOne
                    % [Voice 1 measure 4]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    cf''2.
                    :32
                    \mp
                    ^ \markup {
                        \center-align
                            +14
                        }
                    ~
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \upright
                        XFB. \hspace #0.5 }
                    - \tweak bound-details.right.padding 1.4
                    - \tweak staff-padding #4.5
                    \startTextSpanOne

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "2")
                    \times 2/3 {
                        % [Voice 1 measure 5]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \flat-one-syntonic-comma-up 
                        cf''4
                        :32

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat 
                        ef''2
                        :32
                        ^ \markup {
                            \center-align
                                +0
                            }

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup {
                            \concat
                                {
                                    \one-seventeen-limit-schisma-down 
                                    \hspace #0.125
                                    \two-tridecimal-third-tone-up 
                                }
                            }
                        f''2.
                        :32
                        ^ \markup {
                            \center-align
                                F♯+26
                            }
                        \stopTextSpanOne
                        - \abjad-solid-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright
                            norm. \hspace #0.5 }
                        - \tweak bound-details.right.padding 3
                        - \tweak staff-padding #4.5
                        \startTextSpanOne

                    }
                    % [Voice 1 measure 6]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4
                    \stopTextSpanOne

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-flat 
                    ef''2
                    :32
                    \f
                    ^ \markup {
                        \center-align
                            +0
                        }
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \upright
                        scratch \hspace #0.5 }
                    - \tweak bound-details.right.padding 1.4
                    - \tweak staff-padding #4.5
                    \startTextSpanOne
                    % [Voice 1 measure 7]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \natural-one-syntonic-comma-down 
                    c''2
                    :32
                    ^ \markup {
                        \center-align
                            -16
                        }

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-flat 
                    ef'4
                    :32
                    ^ \markup {
                        \center-align
                            +0
                        }
                    \stopTextSpanOne
                    - \abjad-solid-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \upright
                        norm. \hspace #0.5 }
                    - \tweak bound-details.right.padding 3
                    - \tweak staff-padding #4.5
                    \startTextSpanOne

                    r4
                    \stopTextSpanOne

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \natural-one-syntonic-comma-down 
                    g''4
                    :32
                    ^ \markup {
                        \center-align
                            -14
                        }
                    % [Voice 1 measure 8]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-flat 
                    ef'2
                    :32
                    \mf
                    ^ \markup {
                        \center-align
                            +0
                        }
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \upright
                        XFB. \hspace #0.5 }
                    - \tweak bound-details.right.padding 1.4
                    - \tweak staff-padding #4.5
                    \startTextSpanOne
                    % [Voice 1 measure 9]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    cf''1
                    :32
                    ^ \markup {
                        \center-align
                            +14
                        }
                    \stopTextSpanOne
                    - \abjad-solid-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \upright
                        scratch \hspace #0.5 }
                    - \tweak bound-details.right.padding 3
                    - \tweak staff-padding #4.5
                    \startTextSpanOne
                    % [Voice 1 measure 10]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 1/4
                    \stopTextSpanOne                                           %! applying indicators

                    R1 * 1/4
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
                    r4

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-flat 
                    bf'2.
                    :32
                    \fff
                    ^ \markup {
                        \center-align
                            +2
                        }
                    ~
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \upright
                        scratch \hspace #0.5 }
                    - \tweak bound-details.right.padding 1.4
                    - \tweak staff-padding #5.5
                    \startTextSpanOne
                    % [Voice 2 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-flat 
                    bf'4
                    :32

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-flat 
                    ef'2
                    :32
                    ^ \markup {
                        \center-align
                            +0
                        }
                    \stopTextSpanOne
                    - \abjad-solid-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \upright
                        norm. \hspace #0.5 }
                    - \tweak bound-details.right.padding 3
                    - \tweak staff-padding #5.5
                    \startTextSpanOne
                    % [Voice 2 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4
                    \stopTextSpanOne

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    gf''2
                    :32
                    \sfp
                    ^ \markup {
                        \center-align
                            +16
                        }
                    - \tweak stencil #abjad-flared-hairpin
                    \<
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \upright
                        XFB. \hspace #0.5 }
                    - \tweak bound-details.right.padding 1.4
                    - \tweak staff-padding #5.5
                    \startTextSpanOne

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-flat 
                    ef''2
                    :32
                    ^ \markup {
                        \center-align
                            +0
                        }
                    % [Voice 2 measure 4]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-flat 
                    bf'2
                    :32
                    ^ \markup {
                        \center-align
                            +2
                        }
                    \stopTextSpanOne
                    - \abjad-solid-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \upright
                        scratch \hspace #0.5 }
                    - \tweak bound-details.right.padding 3
                    - \tweak staff-padding #5.5
                    \startTextSpanOne

                    r4
                    \ff
                    \stopTextSpanOne
                    % [Voice 2 measure 5]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-flat 
                    ef'4
                    :32
                    \mp
                    ^ \markup {
                        \center-align
                            +0
                        }
                    ~
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \upright
                        XFB. \hspace #0.5 }
                    - \tweak bound-details.right.padding 1.4
                    - \tweak staff-padding #5.5
                    \startTextSpanOne

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-flat 
                    ef'8
                    :32
                    [

                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \two-tridecimal-third-tone-down 
                                \hspace #0.125
                                \one-septimal-comma-up 
                                \hspace #0.125
                                \natural-one-syntonic-comma-up 
                            }
                        }
                    g''8
                    :32
                    ^ \markup {
                        \center-align
                            F♯+26
                        }
                    ~
                    ]

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \two-tridecimal-third-tone-down 
                                \hspace #0.125
                                \one-septimal-comma-up 
                                \hspace #0.125
                                \natural-one-syntonic-comma-up 
                            }
                        }
                    g''4
                    :32
                    \stopTextSpanOne
                    - \abjad-solid-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \upright
                        norm. \hspace #0.5 }
                    - \tweak bound-details.right.padding 3
                    - \tweak staff-padding #5.5
                    \startTextSpanOne

                    r4
                    \stopTextSpanOne
                    % [Voice 2 measure 6]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-flat 
                    ef'2
                    :32
                    \f
                    ^ \markup {
                        \center-align
                            +0
                        }
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \upright
                        scratch \hspace #0.5 }
                    - \tweak bound-details.right.padding 1.4
                    - \tweak staff-padding #5.5
                    \startTextSpanOne

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-flat 
                    bf'4
                    :32
                    ^ \markup {
                        \center-align
                            +2
                        }
                    \stopTextSpanOne
                    - \abjad-solid-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \upright
                        norm. \hspace #0.5 }
                    - \tweak bound-details.right.padding 3
                    - \tweak staff-padding #5.5
                    \startTextSpanOne
                    % [Voice 2 measure 7]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4
                    \stopTextSpanOne

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-tridecimal-third-tone-down 
                    c''4
                    :32
                    \mf
                    ^ \markup {
                        \center-align
                            B+41
                        }
                    ~
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \upright
                        XFB. \hspace #0.5 }
                    - \tweak bound-details.right.padding 1.4
                    - \tweak staff-padding #5.5
                    \startTextSpanOne

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 3) "4")
                    \times 3/4 {

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-tridecimal-third-tone-down 
                        c''4
                        :32

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat 
                        ef''2.
                        :32
                        ^ \markup {
                            \center-align
                                +0
                            }
                        ~

                    }
                    % [Voice 2 measure 8]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-flat 
                    ef''2.
                    :32
                    % [Voice 2 measure 9]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \natural-one-syntonic-comma-down 
                    c''2
                    :32
                    ^ \markup {
                        \center-align
                            -16
                        }
                    \stopTextSpanOne
                    - \abjad-solid-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \upright
                        scratch \hspace #0.5 }
                    - \tweak bound-details.right.padding 3
                    - \tweak staff-padding #5.5
                    \startTextSpanOne

                    r4
                    \stopTextSpanOne

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-tridecimal-third-tone-up 
                                \hspace #0.125
                                \one-septimal-comma-down 
                                \hspace #0.125
                                \abjad-flat 
                            }
                        }
                    af'4
                    :32
                    ^ \markup {
                        \center-align
                            +30
                        }
                    ~
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \upright
                        XFB. \hspace #0.5 }
                    - \tweak bound-details.right.padding 1.4
                    - \tweak staff-padding #5.5
                    \startTextSpanOne
                    % [Voice 2 measure 10]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-tridecimal-third-tone-up 
                                \hspace #0.125
                                \one-septimal-comma-down 
                                \hspace #0.125
                                \abjad-flat 
                            }
                        }
                    af'2
                    :32
                    \stopTextSpanOne
                    - \abjad-solid-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \upright
                        norm. \hspace #0.5 }
                    - \tweak bound-details.right.padding 3
                    - \tweak staff-padding #5.5
                    \startTextSpanOne
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
                    r4

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \natural-one-syntonic-comma-down 
                    c'2.
                    :32
                    \fff
                    ^ \markup {
                        \center-align
                            -16
                        }
                    ~
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \upright
                        scratch \hspace #0.5 }
                    - \tweak bound-details.right.padding 1.4
                    - \tweak staff-padding #4.9
                    \startTextSpanOne

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) "8")
                    \times 6/5 {
                        % [Voice 3 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \natural-one-syntonic-comma-down 
                        c'4.
                        :32

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat 
                        ef'4
                        :32
                        ^ \markup {
                            \center-align
                                +0
                            }
                        \stopTextSpanOne
                        - \abjad-solid-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright
                            norm. \hspace #0.5 }
                        - \tweak bound-details.right.padding 3
                        - \tweak staff-padding #4.9
                        \startTextSpanOne

                    }
                    % [Voice 3 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4
                    \stopTextSpanOne

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \two-tridecimal-third-tone-down 
                                \hspace #0.125
                                \one-septimal-comma-up 
                                \hspace #0.125
                                \natural-one-syntonic-comma-up 
                            }
                        }
                    g'2
                    :32
                    \sfp
                    ^ \markup {
                        \center-align
                            F♯+26
                        }
                    - \tweak stencil #abjad-flared-hairpin
                    \<
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \upright
                        XFB. \hspace #0.5 }
                    - \tweak bound-details.right.padding 1.4
                    - \tweak staff-padding #4.9
                    \startTextSpanOne

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-flat 
                    ef4
                    :32
                    ^ \markup {
                        \center-align
                            +0
                        }
                    \stopTextSpanOne
                    - \abjad-solid-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \upright
                        scratch \hspace #0.5 }
                    - \tweak bound-details.right.padding 3
                    - \tweak staff-padding #4.9
                    \startTextSpanOne

                    r4
                    \ff
                    \stopTextSpanOne
                    % [Voice 3 measure 4]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \natural-one-syntonic-comma-down 
                    c'2
                    :32
                    \mp
                    ^ \markup {
                        \center-align
                            -16
                        }
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \upright
                        XFB. \hspace #0.5 }
                    - \tweak bound-details.right.padding 1.4
                    - \tweak staff-padding #4.9
                    \startTextSpanOne

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-tridecimal-third-tone-down 
                    c'4
                    :32
                    ^ \markup {
                        \center-align
                            B+41
                        }
                    \stopTextSpanOne
                    - \abjad-solid-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \upright
                        norm. \hspace #0.5 }
                    - \tweak bound-details.right.padding 3
                    - \tweak staff-padding #4.9
                    \startTextSpanOne
                    % [Voice 3 measure 5]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4
                    \stopTextSpanOne

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \natural-one-syntonic-comma-down 
                    g'2.
                    :32
                    \f
                    ^ \markup {
                        \center-align
                            -14
                        }
                    ~
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \upright
                        scratch \hspace #0.5 }
                    - \tweak bound-details.right.padding 1.4
                    - \tweak staff-padding #4.9
                    \startTextSpanOne
                    % [Voice 3 measure 6]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \natural-one-syntonic-comma-down 
                    g'2.
                    :32
                    % [Voice 3 measure 7]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    cf'2.
                    :32
                    ^ \markup {
                        \center-align
                            +14
                        }
                    \stopTextSpanOne
                    - \abjad-solid-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \upright
                        norm. \hspace #0.5 }
                    - \tweak bound-details.right.padding 3
                    - \tweak staff-padding #4.9
                    \startTextSpanOne

                    r4
                    \stopTextSpanOne

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    gf'4
                    :32
                    \mf
                    ^ \markup {
                        \center-align
                            +16
                        }
                    ~
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \upright
                        XFB. \hspace #0.5 }
                    - \tweak bound-details.right.padding 1.4
                    - \tweak staff-padding #4.9
                    \startTextSpanOne
                    % [Voice 3 measure 8]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    gf'4
                    :32

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-seventeen-limit-schisma-down 
                                \hspace #0.125
                                \two-tridecimal-third-tone-up 
                            }
                        }
                    f'4
                    :32
                    ^ \markup {
                        \center-align
                            F♯+26
                        }
                    \stopTextSpanOne
                    - \abjad-solid-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \upright
                        scratch \hspace #0.5 }
                    - \tweak bound-details.right.padding 3
                    - \tweak staff-padding #4.9
                    \startTextSpanOne

                    r4
                    \stopTextSpanOne
                    % [Voice 3 measure 9]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-flat 
                    bf4
                    :32
                    ^ \markup {
                        \center-align
                            +2
                        }

                    r2.
                    % [Voice 3 measure 10]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 1/4

                    R1 * 1/4
                    \bar "||"

                }
                }

            }

            \context Staff = "Staff 4"
            {
                \tag #'voice4 {

                \context Voice = "Voice 4"
                {

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "2")
                    \times 2/3 {
                        % [Voice 4 measure 1]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \set Staff.shortInstrumentName =                       %! applying staff names and clefs
                        \markup { vc. }                                        %! applying staff names and clefs
                        \set Staff.instrumentName =                            %! applying staff names and clefs
                        "Violoncello"                                          %! applying staff names and clefs
                        \clef "bass"
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat 
                        ef,1
                        :32
                        \fff
                        ^ \markup {
                            \center-align
                                +0
                            }
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \upright
                            scratch \hspace #0.5 }
                        - \tweak bound-details.right.padding 1.4
                        - \tweak staff-padding #5.9
                        \startTextSpanOne

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \flat-one-syntonic-comma-up 
                        cf2
                        :32
                        ^ \markup {
                            \center-align
                                +14
                            }

                    }
                    % [Voice 4 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-tridecimal-third-tone-up 
                                \hspace #0.125
                                \one-septimal-comma-down 
                                \hspace #0.125
                                \abjad-flat 
                            }
                        }
                    cf2.
                    :32
                    ^ \markup {
                        \center-align
                            +30
                        }
                    ~
                    % [Voice 4 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-tridecimal-third-tone-up 
                                \hspace #0.125
                                \one-septimal-comma-down 
                                \hspace #0.125
                                \abjad-flat 
                            }
                        }
                    cf4
                    :32
                    \stopTextSpanOne
                    - \abjad-solid-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \upright
                        norm. \hspace #0.5 }
                    - \tweak bound-details.right.padding 3
                    - \tweak staff-padding #5.9
                    \startTextSpanOne

                    r4
                    \stopTextSpanOne

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-seventeen-limit-schisma-down 
                                \hspace #0.125
                                \two-tridecimal-third-tone-up 
                            }
                        }
                    f2.
                    :32
                    \sfp
                    ^ \markup {
                        \center-align
                            F♯+26
                        }
                    - \tweak stencil #abjad-flared-hairpin
                    \<
                    ~
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \upright
                        XFB. \hspace #0.5 }
                    - \tweak bound-details.right.padding 1.4
                    - \tweak staff-padding #5.9
                    \startTextSpanOne
                    % [Voice 4 measure 4]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-seventeen-limit-schisma-down 
                                \hspace #0.125
                                \two-tridecimal-third-tone-up 
                            }
                        }
                    f4
                    :32
                    \stopTextSpanOne
                    - \abjad-solid-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \upright
                        scratch \hspace #0.5 }
                    - \tweak bound-details.right.padding 3
                    - \tweak staff-padding #5.9
                    \startTextSpanOne

                    r4
                    \ff
                    \stopTextSpanOne

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-tridecimal-third-tone-up 
                                \hspace #0.125
                                \one-septimal-comma-down 
                                \hspace #0.125
                                \abjad-flat 
                            }
                        }
                    cf4
                    :32
                    \mp
                    ^ \markup {
                        \center-align
                            +30
                        }
                    ~
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \upright
                        XFB. \hspace #0.5 }
                    - \tweak bound-details.right.padding 1.4
                    - \tweak staff-padding #5.9
                    \startTextSpanOne
                    % [Voice 4 measure 5]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-tridecimal-third-tone-up 
                                \hspace #0.125
                                \one-septimal-comma-down 
                                \hspace #0.125
                                \abjad-flat 
                            }
                        }
                    cf4
                    :32

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    gf2.
                    :32
                    ^ \markup {
                        \center-align
                            +16
                        }
                    ~
                    % [Voice 4 measure 6]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \flat-one-syntonic-comma-up 
                    gf2.
                    :32
                    \stopTextSpanOne
                    - \abjad-solid-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \upright
                        norm. \hspace #0.5 }
                    - \tweak bound-details.right.padding 3
                    - \tweak staff-padding #5.9
                    \startTextSpanOne
                    % [Voice 4 measure 7]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4
                    \stopTextSpanOne

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \one-tridecimal-third-tone-up 
                                \hspace #0.125
                                \one-septimal-comma-down 
                                \hspace #0.125
                                \abjad-flat 
                            }
                        }
                    cf2
                    :32
                    \f
                    ^ \markup {
                        \center-align
                            +30
                        }

                    r4

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \two-tridecimal-third-tone-down 
                                \hspace #0.125
                                \one-septimal-comma-up 
                                \hspace #0.125
                                \natural-one-syntonic-comma-up 
                            }
                        }
                    g4
                    :32
                    ^ \markup {
                        \center-align
                            F♯+26
                        }
                    ~
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \upright
                        scratch \hspace #0.5 }
                    - \tweak bound-details.right.padding 1.4
                    - \tweak staff-padding #5.9
                    \startTextSpanOne
                    % [Voice 4 measure 8]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup {
                        \concat
                            {
                                \two-tridecimal-third-tone-down 
                                \hspace #0.125
                                \one-septimal-comma-up 
                                \hspace #0.125
                                \natural-one-syntonic-comma-up 
                            }
                        }
                    g4
                    :32
                    \stopTextSpanOne
                    - \abjad-solid-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \upright
                        norm. \hspace #0.5 }
                    - \tweak bound-details.right.padding 3
                    - \tweak staff-padding #5.9
                    \startTextSpanOne

                    r4
                    \stopTextSpanOne

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-flat 
                    ef4
                    :32
                    \mf
                    ^ \markup {
                        \center-align
                            +0
                        }
                    ~
                    - \abjad-solid-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \upright
                        XFB. \hspace #0.5 }
                    - \tweak bound-details.right.padding 1.4
                    - \tweak staff-padding #5.9
                    \startTextSpanOne
                    % [Voice 4 measure 9]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-flat 
                    ef2
                    :32

                    \clef "tenorvarC"
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-tridecimal-third-tone-down 
                    a'2
                    :32
                    ^ \markup {
                        \center-align
                            A♭+41
                        }
                    \stopTextSpanOne
                    - \abjad-solid-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \upright
                        scratch \hspace #0.5 }
                    - \tweak bound-details.right.padding 3
                    - \tweak staff-padding #5.9
                    \startTextSpanOne
                    % [Voice 4 measure 10]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 1/4
                    \stopTextSpanOne                                           %! applying indicators

                    R1 * 1/4
                    \bar "||"

                }
                }

            }

        >>

    >>
