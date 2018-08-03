\version "2.19.82"
\language "english"

\include "stylesheet.ily"

\header {
    tagline = ##f
}

\layout {}

\paper {
    top-margin = #20
    bottom-margin = #20
}

\score {
    \new Score
    <<
        \new TimeSignatureContext
        {
            {   % measure
                \time 4/4
                % [TimeSignatureContext measure 1] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
            {   % measure
                \time 3/4
                % [TimeSignatureContext measure 2] %! COMMENT_MEASURE_NUMBERS
                r2.
            }   % measure
            {   % measure
                \time 4/4
                % [TimeSignatureContext measure 3] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
            {   % measure
                \time 7/8
                % [TimeSignatureContext measure 4] %! COMMENT_MEASURE_NUMBERS
                r2..
            }   % measure
            {   % measure
                \time 3/4
                % [TimeSignatureContext measure 5] %! COMMENT_MEASURE_NUMBERS
                r2.
            }   % measure
            {   % measure
                \time 4/4
                % [TimeSignatureContext measure 6] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
            {   % measure
                \time 7/8
                % [TimeSignatureContext measure 7] %! COMMENT_MEASURE_NUMBERS
                r2..
            }   % measure
            {   % measure
                \time 3/4
                % [TimeSignatureContext measure 8] %! COMMENT_MEASURE_NUMBERS
                r2.
            }   % measure
            {   % measure
                \time 5/8
                % [TimeSignatureContext measure 9] %! COMMENT_MEASURE_NUMBERS
                r2
                r8
            }   % measure
            {   % measure
                \time 5/4
                % [TimeSignatureContext measure 10] %! COMMENT_MEASURE_NUMBERS
                r1
                r4
            }   % measure
            {   % measure
                \time 4/4
                % [TimeSignatureContext measure 11] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
            {   % measure
                \time 6/8
                % [TimeSignatureContext measure 12] %! COMMENT_MEASURE_NUMBERS
                r2.
            }   % measure
            {   % measure
                \time 5/8
                % [TimeSignatureContext measure 13] %! COMMENT_MEASURE_NUMBERS
                r2
                r8
            }   % measure
            {   % measure
                \time 4/4
                % [TimeSignatureContext measure 14] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
            {   % measure
                \time 3/4
                % [TimeSignatureContext measure 15] %! COMMENT_MEASURE_NUMBERS
                r2.
            }   % measure
            {   % measure
                \time 5/4
                % [TimeSignatureContext measure 16] %! COMMENT_MEASURE_NUMBERS
                r1
                r4
            }   % measure
            {   % measure
                \time 4/4
                % [TimeSignatureContext measure 17] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
            {   % measure
                \time 7/8
                % [TimeSignatureContext measure 18] %! COMMENT_MEASURE_NUMBERS
                r2..
            }   % measure
            {   % measure
                \time 4/4
                % [TimeSignatureContext measure 19] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
            {   % measure
                \time 3/4
                % [TimeSignatureContext measure 20] %! COMMENT_MEASURE_NUMBERS
                r2.
            }   % measure
            {   % measure
                \time 7/8
                % [TimeSignatureContext measure 21] %! COMMENT_MEASURE_NUMBERS
                r2..
            }   % measure
            {   % measure
                \time 5/4
                % [TimeSignatureContext measure 22] %! COMMENT_MEASURE_NUMBERS
                r1
                r4
            }   % measure
            {   % measure
                \time 4/4
                % [TimeSignatureContext measure 23] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
        }
        \new StaffGroup
        <<
            \context StringStaff = "violin_string_staff"
            {
                {   % measure
                    \time 4/4
                    % [violin_string_staff measure 1] %! COMMENT_MEASURE_NUMBERS
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'4
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    5
                        }
                    c'8
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'4.
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    4
                                    5
                        }
                    c'8
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    2
                                    5
                        }
                    c'8
                    ~
                    \glissando
                }   % measure
                {   % measure
                    \time 3/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/7 {
                        % [violin_string_staff measure 2] %! COMMENT_MEASURE_NUMBERS
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        5
                            }
                        c'8
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        5
                            }
                        c'2
                        ~
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        2
                                        5
                            }
                        c'8
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        5
                            }
                        c'8
                        ~
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    % [violin_string_staff measure 3] %! COMMENT_MEASURE_NUMBERS
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    5
                        }
                    c'4.
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'8
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    4
                                    5
                        }
                    c'2
                    \glissando
                }   % measure
                {   % measure
                    \time 7/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 7/8 {
                        % [violin_string_staff measure 4] %! COMMENT_MEASURE_NUMBERS
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        5
                            }
                        c'4.
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        2
                                        5
                            }
                        c'2
                        ~
                        \glissando
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'8
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    % [violin_string_staff measure 5] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r2.
                }   % measure
                {   % measure
                    \time 4/4
                    \times 8/9 {
                        % [violin_string_staff measure 6] %! COMMENT_MEASURE_NUMBERS
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'4
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        5
                            }
                        c'4
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'2
                        ~
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        4
                                        5
                            }
                        c'8
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 7/8
                    % [violin_string_staff measure 7] %! COMMENT_MEASURE_NUMBERS
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    5
                        }
                    c'4.
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'8
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'8
                    \glissando
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'4
                }   % measure
                {   % measure
                    \time 3/4
                    % [violin_string_staff measure 8] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r2.
                }   % measure
                {   % measure
                    \time 5/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/6 {
                        % [violin_string_staff measure 9] %! COMMENT_MEASURE_NUMBERS
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        5
                            }
                        c'2
                        ~
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'8
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        4
                                        5
                            }
                        c'8
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 5/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/8 {
                        % [violin_string_staff measure 10] %! COMMENT_MEASURE_NUMBERS
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        2
                                        5
                            }
                        c'2.
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        5
                            }
                        c'1
                        ~
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        5
                            }
                        c'4
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    \times 8/9 {
                        % [violin_string_staff measure 11] %! COMMENT_MEASURE_NUMBERS
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        2
                                        5
                            }
                        c'2
                        ~
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        5
                            }
                        c'8
                        \glissando
                        \once \override NoteHead.Y-offset = 0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        5
                            }
                        c'2
                    }
                }   % measure
                {   % measure
                    \time 6/8
                    % [violin_string_staff measure 12] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r2.
                }   % measure
                {   % measure
                    \time 5/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/9 {
                        % [violin_string_staff measure 13] %! COMMENT_MEASURE_NUMBERS
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        4
                                        5
                            }
                        c'4.
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        5
                            }
                        c'2
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        2
                                        5
                            }
                        c'4
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    % [violin_string_staff measure 14] %! COMMENT_MEASURE_NUMBERS
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'4.
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    5
                        }
                    c'2
                    ~
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'8
                    \glissando
                }   % measure
                {   % measure
                    \time 3/4
                    % [violin_string_staff measure 15] %! COMMENT_MEASURE_NUMBERS
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    5
                        }
                    c'8
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'4
                    ~
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    4
                                    5
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    5
                        }
                    c'4
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    \glissando
                }   % measure
                {   % measure
                    \time 5/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 20/21 {
                        % [violin_string_staff measure 16] %! COMMENT_MEASURE_NUMBERS
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'8.
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        5
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'8
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        4
                                        5
                            }
                        c'4
                        ~
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        2
                                        5
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        5
                            }
                        c'4
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        5
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        2
                                        5
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        5
                            }
                        c'16
                        \glissando
                        \once \override NoteHead.Y-offset = 0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        5
                            }
                        c'16
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    % [violin_string_staff measure 17] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r1
                }   % measure
                {   % measure
                    \time 7/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 14/15 {
                        % [violin_string_staff measure 18] %! COMMENT_MEASURE_NUMBERS
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        4
                                        5
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        5
                            }
                        c'8.
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        2
                                        5
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'8
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        5
                            }
                        c'4
                        ~
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        5
                            }
                        c'8.
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    % [violin_string_staff measure 19] %! COMMENT_MEASURE_NUMBERS
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    4
                                    5
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    5
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'8.
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'8
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'4
                    ~
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    5
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'8
                    ~
                    \glissando
                }   % measure
                {   % measure
                    \time 3/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 12/13 {
                        % [violin_string_staff measure 20] %! COMMENT_MEASURE_NUMBERS
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        4
                                        5
                            }
                        c'8
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        2
                                        5
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        5
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        5
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        2
                                        5
                            }
                        c'8.
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        5
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        5
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'8
                        \glissando
                        \once \override NoteHead.Y-offset = 1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        4
                                        5
                            }
                        c'16
                    }
                }   % measure
                {   % measure
                    \time 7/8
                    % [violin_string_staff measure 21] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r2..
                }   % measure
                {   % measure
                    \time 5/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 20/21 {
                        % [violin_string_staff measure 22] %! COMMENT_MEASURE_NUMBERS
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        2
                                        5
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        5
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        5
                            }
                        c'8.
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        4
                                        5
                            }
                        c'8
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        5
                            }
                        c'4
                        ~
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'4
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    % [violin_string_staff measure 23] %! COMMENT_MEASURE_NUMBERS
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    5
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'8.
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    4
                                    5
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    2
                                    5
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    5
                        }
                    c'8
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    5
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    2
                                    5
                        }
                    c'4.
                    \glissando
                    \once \override NoteHead.Y-offset = -1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    5
                        }
                    c'16
                }   % measure
            }
            \context BowStaff = "violin_bow_staff"
            {
                {   % measure
                    \time 4/4
                    \times 16/17 {
                        % [violin_bow_staff measure 1] %! COMMENT_MEASURE_NUMBERS
                        \set BowStaff.instrumentName =
                        \markup { Vln. }
                        \set BowStaff.shortInstrumentName =
                        \markup { Vln. }
                        \set BowStaff.instrumentName =
                        \markup { Violin }
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        [
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        ]
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    % [violin_bow_staff measure 2] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    4
                        }
                    c'16
                    [
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    4
                        }
                    c'16
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    2
                        }
                    c'16
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    2
                        }
                    c'16
                    ^ \parenthesize \upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 0
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    ^\upbow
                    ]
                    \glissando
                }   % measure
                {   % measure
                    \time 4/4
                    % [violin_bow_staff measure 3] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 1
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'8
                    ^\downbow
                    [
                    \glissando
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'8
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    4
                        }
                    c'8
                    \glissando
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    2
                        }
                    c'8
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    4
                        }
                    c'8
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'8
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    2
                        }
                    c'8
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 0
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'8
                    ^\downbow
                    ]
                    \glissando
                }   % measure
                {   % measure
                    \time 7/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 14/15 {
                        % [violin_bow_staff measure 4] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        ^\upbow
                        [
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^ \parenthesize \downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ]
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    % [violin_bow_staff measure 5] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r2.
                }   % measure
                {   % measure
                    \time 4/4
                    \times 8/9 {
                        % [violin_bow_staff measure 6] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'8
                        ^\downbow
                        [
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'8
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'8
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'8
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'8
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'8
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'8
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'8
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'8
                        ^\downbow
                        ]
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 7/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 14/15 {
                        % [violin_bow_staff measure 7] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        [
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        4
                            }
                        c'16
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        4
                            }
                        c'16
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        2
                            }
                        c'16
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        2
                            }
                        c'16
                        ^ \parenthesize \upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ]
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    % [violin_bow_staff measure 8] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r2.
                }   % measure
                {   % measure
                    \time 5/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 10/11 {
                        % [violin_bow_staff measure 9] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        4
                            }
                        c'16
                        ^\upbow
                        [
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        2
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        2
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        ^\upbow
                        ]
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 5/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 20/21 {
                        % [violin_bow_staff measure 10] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        [
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^ \parenthesize \downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        ]
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    % [violin_bow_staff measure 11] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    [
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    4
                        }
                    c'32
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    4
                        }
                    c'32
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    2
                        }
                    c'32
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    2
                        }
                    c'32
                    ^ \parenthesize \upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'32
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    4
                        }
                    c'32
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    2
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    4
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    2
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 0
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ]
                }   % measure
                {   % measure
                    \time 6/8
                    % [violin_bow_staff measure 12] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r2.
                }   % measure
                {   % measure
                    \time 5/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 10/13 {
                        % [violin_bow_staff measure 13] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        [
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        ]
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    \times 8/10 {
                        % [violin_bow_staff measure 14] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'8
                        ^\upbow
                        [
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'8
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        4
                            }
                        c'8
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'8
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        4
                            }
                        c'8
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        2
                            }
                        c'8
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        2
                            }
                        c'8
                        ^ \parenthesize \upbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'8
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'8
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'8
                        ^\upbow
                        ]
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    % [violin_bow_staff measure 15] %! COMMENT_MEASURE_NUMBERS
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'8
                    ^\upbow
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'4.
                    ^\upbow
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'8
                    ^\downbow
                    \glissando
                }   % measure
                {   % measure
                    \time 5/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 20/21 {
                        % [violin_bow_staff measure 16] %! COMMENT_MEASURE_NUMBERS
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'8.
                        ^\upbow
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        4
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        2
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        4
                            }
                        c'8
                        ^\upbow
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        2
                            }
                        c'8
                        ^\upbow
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'4.
                        ^\upbow
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'8
                        ^\downbow
                        \glissando
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'8
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    % [violin_bow_staff measure 17] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r1
                }   % measure
                {   % measure
                    \time 7/8
                    % [violin_bow_staff measure 18] %! COMMENT_MEASURE_NUMBERS
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'8.
                    ^\downbow
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'8
                    ^\upbow
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'8
                    ^ \parenthesize \downbow
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'8
                    ^\downbow
                    \glissando
                }   % measure
                {   % measure
                    \time 4/4
                    % [violin_bow_staff measure 19] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    [
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    4
                        }
                    c'16
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 0
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    ^\upbow
                    ]
                    \glissando
                }   % measure
                {   % measure
                    \time 3/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 12/13 {
                        % [violin_bow_staff measure 20] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        4
                            }
                        c'16
                        [
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        2
                            }
                        c'16
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        2
                            }
                        c'16
                        ^ \parenthesize \upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        \once \override NoteHead.Y-offset = 1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        4
                            }
                        c'16
                        ]
                    }
                }   % measure
                {   % measure
                    \time 7/8
                    % [violin_bow_staff measure 21] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r2..
                }   % measure
                {   % measure
                    \time 5/4
                    % [violin_bow_staff measure 22] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    4
                        }
                    c'16
                    ^\upbow
                    [
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    2
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^ \parenthesize \downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 0
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    ]
                    \glissando
                }   % measure
                {   % measure
                    \time 4/4
                    \times 8/10 {
                        % [violin_bow_staff measure 23] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'8
                        ^\downbow
                        [
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'8
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'8
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'8
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'8
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'8
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'8
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'8
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'8
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'8
                        ]
                    }
                }   % measure
            }
            \context BeamStaff = "violin_beam_staff"
            {
                {   % measure
                    \time 4/4
                    \times 16/17 {
                        % [violin_beam_staff measure 1] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        d''''16
                        [
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        d''''16
                        ]
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    % [violin_beam_staff measure 2] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 2
                    d''''16
                    [
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 0
                    d''''16
                    ]
                }   % measure
                {   % measure
                    \time 4/4
                    % [violin_beam_staff measure 3] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 1
                    d''''8
                    [
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    d''''8
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    d''''8
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    d''''8
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    d''''8
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    d''''8
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    d''''8
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 0
                    d''''8
                    ]
                }   % measure
                {   % measure
                    \time 7/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 14/15 {
                        % [violin_beam_staff measure 4] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        d''''16
                        [
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        d''''16
                        ]
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    % [violin_beam_staff measure 5] %! COMMENT_MEASURE_NUMBERS
                    r2.
                }   % measure
                {   % measure
                    \time 4/4
                    \times 8/9 {
                        % [violin_beam_staff measure 6] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 1
                        d''''8
                        [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        d''''8
                        ]
                    }
                }   % measure
                {   % measure
                    \time 7/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 14/15 {
                        % [violin_beam_staff measure 7] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        d''''16
                        [
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        d''''16
                        ]
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    % [violin_beam_staff measure 8] %! COMMENT_MEASURE_NUMBERS
                    r2.
                }   % measure
                {   % measure
                    \time 5/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 10/11 {
                        % [violin_beam_staff measure 9] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        d''''16
                        [
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        d''''16
                        ]
                    }
                }   % measure
                {   % measure
                    \time 5/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 20/21 {
                        % [violin_beam_staff measure 10] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        d''''16
                        [
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        d''''16
                        ]
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    % [violin_beam_staff measure 11] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 3
                    d''''32
                    [
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 0
                    d''''32
                    ]
                }   % measure
                {   % measure
                    \time 6/8
                    % [violin_beam_staff measure 12] %! COMMENT_MEASURE_NUMBERS
                    r2.
                }   % measure
                {   % measure
                    \time 5/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 10/13 {
                        % [violin_beam_staff measure 13] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        d''''16
                        [
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        d''''16
                        ]
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    \times 8/10 {
                        % [violin_beam_staff measure 14] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 1
                        d''''8
                        [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        d''''8
                        ]
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    % [violin_beam_staff measure 15] %! COMMENT_MEASURE_NUMBERS
                    d''''16
                    d''''8
                    d''''16
                    d''''4.
                    d''''8
                }   % measure
                {   % measure
                    \time 5/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 20/21 {
                        % [violin_beam_staff measure 16] %! COMMENT_MEASURE_NUMBERS
                        d''''8.
                        d''''16
                        d''''16
                        d''''8
                        d''''16
                        d''''8
                        d''''16
                        d''''4.
                        d''''8
                        d''''8
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    % [violin_beam_staff measure 17] %! COMMENT_MEASURE_NUMBERS
                    r1
                }   % measure
                {   % measure
                    \time 7/8
                    % [violin_beam_staff measure 18] %! COMMENT_MEASURE_NUMBERS
                    d''''16
                    d''''8.
                    d''''16
                    d''''16
                    d''''8
                    d''''16
                    d''''8
                    d''''16
                    d''''8
                }   % measure
                {   % measure
                    \time 4/4
                    % [violin_beam_staff measure 19] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 2
                    d''''16
                    [
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 0
                    d''''16
                    ]
                }   % measure
                {   % measure
                    \time 3/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 12/13 {
                        % [violin_beam_staff measure 20] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        d''''16
                        [
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        d''''16
                        ]
                    }
                }   % measure
                {   % measure
                    \time 7/8
                    % [violin_beam_staff measure 21] %! COMMENT_MEASURE_NUMBERS
                    r2..
                }   % measure
                {   % measure
                    \time 5/4
                    % [violin_beam_staff measure 22] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 2
                    d''''16
                    [
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 0
                    d''''16
                    ]
                }   % measure
                {   % measure
                    \time 4/4
                    \times 8/10 {
                        % [violin_beam_staff measure 23] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 1
                        d''''8
                        [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        d''''8
                        ]
                    }
                }   % measure
            }
            \new Staff
            {
                {   % measure
                    \time 4/4
                    % [Staff measure 1] %! COMMENT_MEASURE_NUMBERS
                    \tempo 2=60
                    c'1
                }   % measure
                {   % measure
                    \time 3/4
                    % [Staff measure 2] %! COMMENT_MEASURE_NUMBERS
                    c'2.
                }   % measure
                {   % measure
                    \time 4/4
                    % [Staff measure 3] %! COMMENT_MEASURE_NUMBERS
                    c'1
                }   % measure
                {   % measure
                    \time 7/8
                    % [Staff measure 4] %! COMMENT_MEASURE_NUMBERS
                    c'2..
                }   % measure
                {   % measure
                    \time 3/4
                    % [Staff measure 5] %! COMMENT_MEASURE_NUMBERS
                    r2.
                }   % measure
                {   % measure
                    \time 4/4
                    \times 4/5 {
                        % [Staff measure 6] %! COMMENT_MEASURE_NUMBERS
                        ef'2
                        dqs'2.
                    }
                }   % measure
                {   % measure
                    \time 7/8
                    % [Staff measure 7] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 1
                    d'8.
                    [
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    d'8
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 1
                    d'16
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    dqf'8
                    ]
                    ef'4
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 0
                    dqs'8
                    [
                    ]
                }   % measure
                {   % measure
                    \time 3/4
                    % [Staff measure 8] %! COMMENT_MEASURE_NUMBERS
                    r2.
                }   % measure
                {   % measure
                    \time 5/8
                    % [Staff measure 9] %! COMMENT_MEASURE_NUMBERS
                    d'4.
                    d'4
                }   % measure
                {   % measure
                    \time 5/4
                    % [Staff measure 10] %! COMMENT_MEASURE_NUMBERS
                    eqs'1
                    ~
                    eqs'4
                }   % measure
                {   % measure
                    \time 4/4
                    % [Staff measure 11] %! COMMENT_MEASURE_NUMBERS
                    e'1
                }   % measure
                {   % measure
                    \time 6/8
                    % [Staff measure 12] %! COMMENT_MEASURE_NUMBERS
                    r2.
                }   % measure
                {   % measure
                    \time 5/8
                    % [Staff measure 13] %! COMMENT_MEASURE_NUMBERS
                    eqs'2
                    ~
                    eqs'8
                }   % measure
                {   % measure
                    \time 4/4
                    % [Staff measure 14] %! COMMENT_MEASURE_NUMBERS
                    e'1
                }   % measure
                {   % measure
                    \time 3/4
                    % [Staff measure 15] %! COMMENT_MEASURE_NUMBERS
                    gqs'2.
                }   % measure
                {   % measure
                    \time 5/4
                    % [Staff measure 16] %! COMMENT_MEASURE_NUMBERS
                    g'1
                    ~
                    g'4
                }   % measure
                {   % measure
                    \time 4/4
                    % [Staff measure 17] %! COMMENT_MEASURE_NUMBERS
                    r1
                }   % measure
                {   % measure
                    \time 7/8
                    % [Staff measure 18] %! COMMENT_MEASURE_NUMBERS
                    gqs'2..
                }   % measure
                {   % measure
                    \time 4/4
                    % [Staff measure 19] %! COMMENT_MEASURE_NUMBERS
                    b'1
                }   % measure
                {   % measure
                    \time 3/4
                    % [Staff measure 20] %! COMMENT_MEASURE_NUMBERS
                    b'2.
                }   % measure
                {   % measure
                    \time 7/8
                    % [Staff measure 21] %! COMMENT_MEASURE_NUMBERS
                    r2..
                }   % measure
                {   % measure
                    \time 5/4
                    % [Staff measure 22] %! COMMENT_MEASURE_NUMBERS
                    b'1
                    ~
                    b'4
                }   % measure
                {   % measure
                    \time 4/4
                    % [Staff measure 23] %! COMMENT_MEASURE_NUMBERS
                    bqs'1
                }   % measure
            }
        >>
        \new TimeSignatureContext
        {
            {   % measure
                \time 4/4
                % [TimeSignatureContext measure 1] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
            {   % measure
                \time 3/4
                % [TimeSignatureContext measure 2] %! COMMENT_MEASURE_NUMBERS
                r2.
            }   % measure
            {   % measure
                \time 4/4
                % [TimeSignatureContext measure 3] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
            {   % measure
                \time 7/8
                % [TimeSignatureContext measure 4] %! COMMENT_MEASURE_NUMBERS
                r2..
            }   % measure
            {   % measure
                \time 3/4
                % [TimeSignatureContext measure 5] %! COMMENT_MEASURE_NUMBERS
                r2.
            }   % measure
            {   % measure
                \time 4/4
                % [TimeSignatureContext measure 6] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
            {   % measure
                \time 7/8
                % [TimeSignatureContext measure 7] %! COMMENT_MEASURE_NUMBERS
                r2..
            }   % measure
            {   % measure
                \time 3/4
                % [TimeSignatureContext measure 8] %! COMMENT_MEASURE_NUMBERS
                r2.
            }   % measure
            {   % measure
                \time 5/8
                % [TimeSignatureContext measure 9] %! COMMENT_MEASURE_NUMBERS
                r2
                r8
            }   % measure
            {   % measure
                \time 5/4
                % [TimeSignatureContext measure 10] %! COMMENT_MEASURE_NUMBERS
                r1
                r4
            }   % measure
            {   % measure
                \time 4/4
                % [TimeSignatureContext measure 11] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
            {   % measure
                \time 6/8
                % [TimeSignatureContext measure 12] %! COMMENT_MEASURE_NUMBERS
                r2.
            }   % measure
            {   % measure
                \time 5/8
                % [TimeSignatureContext measure 13] %! COMMENT_MEASURE_NUMBERS
                r2
                r8
            }   % measure
            {   % measure
                \time 4/4
                % [TimeSignatureContext measure 14] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
            {   % measure
                \time 3/4
                % [TimeSignatureContext measure 15] %! COMMENT_MEASURE_NUMBERS
                r2.
            }   % measure
            {   % measure
                \time 5/4
                % [TimeSignatureContext measure 16] %! COMMENT_MEASURE_NUMBERS
                r1
                r4
            }   % measure
            {   % measure
                \time 4/4
                % [TimeSignatureContext measure 17] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
            {   % measure
                \time 7/8
                % [TimeSignatureContext measure 18] %! COMMENT_MEASURE_NUMBERS
                r2..
            }   % measure
            {   % measure
                \time 4/4
                % [TimeSignatureContext measure 19] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
            {   % measure
                \time 3/4
                % [TimeSignatureContext measure 20] %! COMMENT_MEASURE_NUMBERS
                r2.
            }   % measure
            {   % measure
                \time 7/8
                % [TimeSignatureContext measure 21] %! COMMENT_MEASURE_NUMBERS
                r2..
            }   % measure
            {   % measure
                \time 5/4
                % [TimeSignatureContext measure 22] %! COMMENT_MEASURE_NUMBERS
                r1
                r4
            }   % measure
            {   % measure
                \time 4/4
                % [TimeSignatureContext measure 23] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
        }
        \new StaffGroup
        <<
            \context StringStaff = "viola_string_staff"
            {
                {   % measure
                    \time 4/4
                    \times 4/5 {
                        % [viola_string_staff measure 1] %! COMMENT_MEASURE_NUMBERS
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'2.
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'2
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    \times 2/3 {
                        % [viola_string_staff measure 2] %! COMMENT_MEASURE_NUMBERS
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'2
                        ~
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        5
                            }
                        c'8
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        4
                                        5
                            }
                        c'2
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    \times 4/7 {
                        % [viola_string_staff measure 3] %! COMMENT_MEASURE_NUMBERS
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'4
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        5
                            }
                        c'4
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'4
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        5
                            }
                        c'8
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'2
                        \glissando
                        \once \override NoteHead.Y-offset = -0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        2
                                        5
                            }
                        c'4.
                    }
                }   % measure
                {   % measure
                    \time 7/8
                    % [viola_string_staff measure 4] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r2..
                }   % measure
                {   % measure
                    \time 3/4
                    \times 2/3 {
                        % [viola_string_staff measure 5] %! COMMENT_MEASURE_NUMBERS
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        4
                                        5
                            }
                        c'2
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'2
                        ~
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        5
                            }
                        c'8
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    \times 8/11 {
                        % [viola_string_staff measure 6] %! COMMENT_MEASURE_NUMBERS
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        5
                            }
                        c'8
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        2
                                        5
                            }
                        c'8
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        5
                            }
                        c'2
                        ~
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        5
                            }
                        c'8
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        2
                                        5
                            }
                        c'2
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 7/8
                    % [viola_string_staff measure 7] %! COMMENT_MEASURE_NUMBERS
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    4
                                    5
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    5
                        }
                    c'8
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'4
                    \glissando
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'4.
                }   % measure
                {   % measure
                    \time 3/4
                    % [viola_string_staff measure 8] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r2.
                }   % measure
                {   % measure
                    \time 5/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 10/11 {
                        % [viola_string_staff measure 9] %! COMMENT_MEASURE_NUMBERS
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'8
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        5
                            }
                        c'8.
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        4
                                        5
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        5
                            }
                        c'8
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        5
                            }
                        c'16
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 5/4
                    % [viola_string_staff measure 10] %! COMMENT_MEASURE_NUMBERS
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    2
                                    5
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    5
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    4
                                    5
                        }
                    c'8.
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    5
                        }
                    c'8
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    5
                        }
                    c'4
                    ~
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    2
                                    5
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    5
                        }
                    c'4
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    5
                        }
                    c'16
                    \glissando
                    \once \override NoteHead.Y-offset = -0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    2
                                    5
                        }
                    c'16
                }   % measure
                {   % measure
                    \time 4/4
                    % [viola_string_staff measure 11] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r1
                }   % measure
                {   % measure
                    \time 6/8
                    % [viola_string_staff measure 12] %! COMMENT_MEASURE_NUMBERS
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'8.
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    5
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'8
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    5
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    4
                                    5
                        }
                    c'8
                    ~
                    \glissando
                }   % measure
                {   % measure
                    \time 5/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 10/11 {
                        % [viola_string_staff measure 13] %! COMMENT_MEASURE_NUMBERS
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        5
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'8
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        5
                            }
                        c'4
                        ~
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        2
                                        5
                            }
                        c'8
                        ~
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    % [viola_string_staff measure 14] %! COMMENT_MEASURE_NUMBERS
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    5
                        }
                    c'8
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    4
                                    5
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    5
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    5
                        }
                    c'8.
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    2
                                    5
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    5
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    5
                        }
                    c'8
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    2
                                    5
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    4
                                    5
                        }
                    c'8.
                    \glissando
                }   % measure
                {   % measure
                    \time 3/4
                    % [viola_string_staff measure 15] %! COMMENT_MEASURE_NUMBERS
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    5
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'8.
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'8
                    \glissando
                    \once \override NoteHead.Y-offset = 0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    5
                        }
                    c'8.
                }   % measure
                {   % measure
                    \time 5/4
                    % [viola_string_staff measure 16] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r1
                    \once \override Dots.transparent = ##t
                    r4
                }   % measure
                {   % measure
                    \time 4/4
                    % [viola_string_staff measure 17] %! COMMENT_MEASURE_NUMBERS
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    5
                        }
                    c'8
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'8
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    5
                        }
                    c'8.
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    2
                                    5
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    5
                        }
                    c'8
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    4
                                    5
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    5
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    5
                        }
                    c'8
                    ~
                    \glissando
                }   % measure
                {   % measure
                    \time 7/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 14/15 {
                        % [viola_string_staff measure 18] %! COMMENT_MEASURE_NUMBERS
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        2
                                        5
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        5
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        5
                            }
                        c'8
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        2
                                        5
                            }
                        c'4
                        ~
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        4
                                        5
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'4
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        5
                            }
                        c'16
                        \glissando
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    % [viola_string_staff measure 19] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r1
                }   % measure
                {   % measure
                    \time 3/4
                    % [viola_string_staff measure 20] %! COMMENT_MEASURE_NUMBERS
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    5
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    4
                                    5
                        }
                    c'8.
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    5
                        }
                    c'8
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'8.
                    ~
                    \glissando
                }   % measure
                {   % measure
                    \time 7/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 14/15 {
                        % [viola_string_staff measure 21] %! COMMENT_MEASURE_NUMBERS
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        5
                            }
                        c'8
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'4
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        2
                                        5
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        5
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        4
                                        5
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'8.
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        5
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        5
                            }
                        c'16
                        \glissando
                        \once \override NoteHead.Y-offset = -0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        2
                                        5
                            }
                        c'16
                    }
                }   % measure
                {   % measure
                    \time 5/4
                    % [viola_string_staff measure 22] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r1
                    \once \override Dots.transparent = ##t
                    r4
                }   % measure
                {   % measure
                    \time 4/4
                    \times 16/17 {
                        % [viola_string_staff measure 23] %! COMMENT_MEASURE_NUMBERS
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        2
                                        5
                            }
                        c'8.
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        4
                                        5
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'8
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        5
                            }
                        c'4
                        ~
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'4
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        \glissando
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                    }
                }   % measure
            }
            \context BowStaff = "viola_bow_staff"
            {
                {   % measure
                    \time 4/4
                    % [viola_bow_staff measure 1] %! COMMENT_MEASURE_NUMBERS
                    \set BowStaff.instrumentName =
                    \markup { Vla. }
                    \set BowStaff.shortInstrumentName =
                    \markup { Vla. }
                    \set BowStaff.instrumentName =
                    \markup { Viola }
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 1
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'8
                    ^\downbow
                    [
                    \glissando
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'8
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'8
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'8
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'8
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'8
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'8
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 0
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'8
                    ^\upbow
                    ]
                    \glissando
                }   % measure
                {   % measure
                    \time 3/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 12/13 {
                        % [viola_bow_staff measure 2] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        [
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        4
                            }
                        c'16
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        4
                            }
                        c'16
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        2
                            }
                        c'16
                        ]
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    \times 16/19 {
                        % [viola_bow_staff measure 3] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        2
                            }
                        c'16
                        ^ \parenthesize \upbow
                        [
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        4
                            }
                        c'16
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        2
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        2
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        ]
                    }
                }   % measure
                {   % measure
                    \time 7/8
                    % [viola_bow_staff measure 4] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r2..
                }   % measure
                {   % measure
                    \time 3/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/8 {
                        % [viola_bow_staff measure 5] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'8
                        ^\upbow
                        [
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'8
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'8
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'8
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'8
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'8
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'8
                        ^ \parenthesize \downbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'8
                        ^\upbow
                        ]
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    \times 16/19 {
                        % [viola_bow_staff measure 6] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        [
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        4
                            }
                        c'16
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        4
                            }
                        c'16
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        2
                            }
                        c'16
                        ]
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 7/8
                    % [viola_bow_staff measure 7] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    2
                        }
                    c'16
                    ^ \parenthesize \upbow
                    [
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    4
                        }
                    c'16
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    2
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    4
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 0
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ]
                }   % measure
                {   % measure
                    \time 3/4
                    % [viola_bow_staff measure 8] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r2.
                }   % measure
                {   % measure
                    \time 5/8
                    % [viola_bow_staff measure 9] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    [
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^ \parenthesize \downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 0
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    ]
                    \glissando
                }   % measure
                {   % measure
                    \time 5/4
                    % [viola_bow_staff measure 10] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 1
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'8
                    ^\upbow
                    [
                    \glissando
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'8
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'8
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'8
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'8
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'8
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'8
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'8
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    4
                        }
                    c'8
                    \glissando
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 0
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'8
                    ]
                }   % measure
                {   % measure
                    \time 4/4
                    % [viola_bow_staff measure 11] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r1
                }   % measure
                {   % measure
                    \time 6/8
                    % [viola_bow_staff measure 12] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    2
                        }
                    c'16
                    [
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    2
                        }
                    c'16
                    ^ \parenthesize \upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 0
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    4
                        }
                    c'16
                    ]
                    \glissando
                }   % measure
                {   % measure
                    \time 5/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/4 {
                        % [viola_bow_staff measure 13] %! COMMENT_MEASURE_NUMBERS
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        2
                            }
                        c'4
                        ^\downbow
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        4
                            }
                        c'4
                        ^\upbow
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    \times 8/10 {
                        % [viola_bow_staff measure 14] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'8
                        ^\downbow
                        [
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        2
                            }
                        c'8
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'8
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'8
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'8
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'8
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'8
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'8
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'8
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'8
                        ^\upbow
                        ]
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    % [viola_bow_staff measure 15] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    [
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^ \parenthesize \downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 0
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ]
                }   % measure
                {   % measure
                    \time 5/4
                    % [viola_bow_staff measure 16] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r1
                    \once \override Dots.transparent = ##t
                    r4
                }   % measure
                {   % measure
                    \time 4/4
                    % [viola_bow_staff measure 17] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 1
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'8
                    ^\upbow
                    [
                    \glissando
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'8
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'8
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'8
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'8
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'8
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    4
                        }
                    c'8
                    \glissando
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 0
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'8
                    ^\upbow
                    ]
                    \glissando
                }   % measure
                {   % measure
                    \time 7/8
                    % [viola_bow_staff measure 18] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    4
                        }
                    c'16
                    [
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    2
                        }
                    c'16
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    2
                        }
                    c'16
                    ^ \parenthesize \upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    4
                        }
                    c'16
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 0
                    \once \override NoteHead.Y-offset = 0.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    2
                        }
                    c'16
                    ]
                }   % measure
                {   % measure
                    \time 4/4
                    % [viola_bow_staff measure 19] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r1
                }   % measure
                {   % measure
                    \time 3/4
                    % [viola_bow_staff measure 20] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\downbow
                    [
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    2
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 0
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    ]
                    \glissando
                }   % measure
                {   % measure
                    \time 7/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 14/15 {
                        % [viola_bow_staff measure 21] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        [
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^ \parenthesize \downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ]
                    }
                }   % measure
                {   % measure
                    \time 5/4
                    % [viola_bow_staff measure 22] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r1
                    \once \override Dots.transparent = ##t
                    r4
                }   % measure
                {   % measure
                    \time 4/4
                    % [viola_bow_staff measure 23] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    [
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    4
                        }
                    c'16
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    4
                        }
                    c'16
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    2
                        }
                    c'16
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    2
                        }
                    c'16
                    ^ \parenthesize \upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 0
                    \once \override NoteHead.Y-offset = 1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    4
                        }
                    c'16
                    ]
                }   % measure
            }
            \context BeamStaff = "viola_beam_staff"
            {
                {   % measure
                    \time 4/4
                    % [viola_beam_staff measure 1] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 1
                    d''''8
                    [
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    d''''8
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    d''''8
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    d''''8
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    d''''8
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    d''''8
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    d''''8
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 0
                    d''''8
                    ]
                }   % measure
                {   % measure
                    \time 3/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 12/13 {
                        % [viola_beam_staff measure 2] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        d''''16
                        [
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        d''''16
                        ]
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    \times 16/19 {
                        % [viola_beam_staff measure 3] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        d''''16
                        [
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        d''''16
                        ]
                    }
                }   % measure
                {   % measure
                    \time 7/8
                    % [viola_beam_staff measure 4] %! COMMENT_MEASURE_NUMBERS
                    r2..
                }   % measure
                {   % measure
                    \time 3/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/8 {
                        % [viola_beam_staff measure 5] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 1
                        d''''8
                        [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        d''''8
                        ]
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    \times 16/19 {
                        % [viola_beam_staff measure 6] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        d''''16
                        [
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        d''''16
                        ]
                    }
                }   % measure
                {   % measure
                    \time 7/8
                    % [viola_beam_staff measure 7] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 2
                    d''''16
                    [
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 0
                    d''''16
                    ]
                }   % measure
                {   % measure
                    \time 3/4
                    % [viola_beam_staff measure 8] %! COMMENT_MEASURE_NUMBERS
                    r2.
                }   % measure
                {   % measure
                    \time 5/8
                    % [viola_beam_staff measure 9] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 3
                    d''''32
                    [
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 0
                    d''''32
                    ]
                }   % measure
                {   % measure
                    \time 5/4
                    % [viola_beam_staff measure 10] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 1
                    d''''8
                    [
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    d''''8
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    d''''8
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    d''''8
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    d''''8
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    d''''8
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    d''''8
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    d''''8
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    d''''8
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 0
                    d''''8
                    ]
                }   % measure
                {   % measure
                    \time 4/4
                    % [viola_beam_staff measure 11] %! COMMENT_MEASURE_NUMBERS
                    r1
                }   % measure
                {   % measure
                    \time 6/8
                    % [viola_beam_staff measure 12] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 2
                    d''''16
                    [
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 0
                    d''''16
                    ]
                }   % measure
                {   % measure
                    \time 5/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/4 {
                        % [viola_beam_staff measure 13] %! COMMENT_MEASURE_NUMBERS
                        d''''4
                        d''''4
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    \times 8/10 {
                        % [viola_beam_staff measure 14] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 1
                        d''''8
                        [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        d''''8
                        ]
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    % [viola_beam_staff measure 15] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 2
                    d''''16
                    [
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 0
                    d''''16
                    ]
                }   % measure
                {   % measure
                    \time 5/4
                    % [viola_beam_staff measure 16] %! COMMENT_MEASURE_NUMBERS
                    r1
                    r4
                }   % measure
                {   % measure
                    \time 4/4
                    % [viola_beam_staff measure 17] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 1
                    d''''8
                    [
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    d''''8
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    d''''8
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    d''''8
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    d''''8
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    d''''8
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    d''''8
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 0
                    d''''8
                    ]
                }   % measure
                {   % measure
                    \time 7/8
                    % [viola_beam_staff measure 18] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 2
                    d''''16
                    [
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 0
                    d''''16
                    ]
                }   % measure
                {   % measure
                    \time 4/4
                    % [viola_beam_staff measure 19] %! COMMENT_MEASURE_NUMBERS
                    r1
                }   % measure
                {   % measure
                    \time 3/4
                    % [viola_beam_staff measure 20] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 2
                    d''''16
                    [
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 0
                    d''''16
                    ]
                }   % measure
                {   % measure
                    \time 7/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 14/15 {
                        % [viola_beam_staff measure 21] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        d''''16
                        [
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        d''''16
                        ]
                    }
                }   % measure
                {   % measure
                    \time 5/4
                    % [viola_beam_staff measure 22] %! COMMENT_MEASURE_NUMBERS
                    r1
                    r4
                }   % measure
                {   % measure
                    \time 4/4
                    % [viola_beam_staff measure 23] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 2
                    d''''16
                    [
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 0
                    d''''16
                    ]
                }   % measure
            }
            \new Staff
            {
                {   % measure
                    \time 4/4
                    % [Staff measure 1] %! COMMENT_MEASURE_NUMBERS
                    \clef "varC"
                    fs1
                }   % measure
                {   % measure
                    \time 3/4
                    % [Staff measure 2] %! COMMENT_MEASURE_NUMBERS
                    gqf2.
                }   % measure
                {   % measure
                    \time 4/4
                    % [Staff measure 3] %! COMMENT_MEASURE_NUMBERS
                    fs1
                }   % measure
                {   % measure
                    \time 7/8
                    % [Staff measure 4] %! COMMENT_MEASURE_NUMBERS
                    r2..
                }   % measure
                {   % measure
                    \time 3/4
                    % [Staff measure 5] %! COMMENT_MEASURE_NUMBERS
                    fs2.
                }   % measure
                {   % measure
                    \time 4/4
                    % [Staff measure 6] %! COMMENT_MEASURE_NUMBERS
                    fs1
                }   % measure
                {   % measure
                    \time 7/8
                    % [Staff measure 7] %! COMMENT_MEASURE_NUMBERS
                    gqs2..
                }   % measure
                {   % measure
                    \time 3/4
                    % [Staff measure 8] %! COMMENT_MEASURE_NUMBERS
                    r2.
                }   % measure
                {   % measure
                    \time 5/8
                    % [Staff measure 9] %! COMMENT_MEASURE_NUMBERS
                    af2
                    ~
                    af8
                }   % measure
                {   % measure
                    \time 5/4
                    % [Staff measure 10] %! COMMENT_MEASURE_NUMBERS
                    bf1
                    ~
                    bf4
                }   % measure
                {   % measure
                    \time 4/4
                    % [Staff measure 11] %! COMMENT_MEASURE_NUMBERS
                    r1
                }   % measure
                {   % measure
                    \time 6/8
                    % [Staff measure 12] %! COMMENT_MEASURE_NUMBERS
                    bf2.
                }   % measure
                {   % measure
                    \time 5/8
                    % [Staff measure 13] %! COMMENT_MEASURE_NUMBERS
                    bf2
                    ~
                    bf8
                }   % measure
                {   % measure
                    \time 4/4
                    % [Staff measure 14] %! COMMENT_MEASURE_NUMBERS
                    bf1
                }   % measure
                {   % measure
                    \time 3/4
                    % [Staff measure 15] %! COMMENT_MEASURE_NUMBERS
                    eqf2.
                }   % measure
                {   % measure
                    \time 5/4
                    % [Staff measure 16] %! COMMENT_MEASURE_NUMBERS
                    r1
                    r4
                }   % measure
                {   % measure
                    \time 4/4
                    % [Staff measure 17] %! COMMENT_MEASURE_NUMBERS
                    e1
                }   % measure
                {   % measure
                    \time 7/8
                    % [Staff measure 18] %! COMMENT_MEASURE_NUMBERS
                    eqs2..
                }   % measure
                {   % measure
                    \time 4/4
                    % [Staff measure 19] %! COMMENT_MEASURE_NUMBERS
                    r1
                }   % measure
                {   % measure
                    \time 3/4
                    % [Staff measure 20] %! COMMENT_MEASURE_NUMBERS
                    fs2.
                }   % measure
                {   % measure
                    \time 7/8
                    % [Staff measure 21] %! COMMENT_MEASURE_NUMBERS
                    fs2..
                }   % measure
                {   % measure
                    \time 5/4
                    % [Staff measure 22] %! COMMENT_MEASURE_NUMBERS
                    r1
                    r4
                }   % measure
                {   % measure
                    \time 4/4
                    % [Staff measure 23] %! COMMENT_MEASURE_NUMBERS
                    fs1
                }   % measure
            }
        >>
        \new TimeSignatureContext
        {
            {   % measure
                \time 4/4
                % [TimeSignatureContext measure 1] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
            {   % measure
                \time 3/4
                % [TimeSignatureContext measure 2] %! COMMENT_MEASURE_NUMBERS
                r2.
            }   % measure
            {   % measure
                \time 4/4
                % [TimeSignatureContext measure 3] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
            {   % measure
                \time 7/8
                % [TimeSignatureContext measure 4] %! COMMENT_MEASURE_NUMBERS
                r2..
            }   % measure
            {   % measure
                \time 3/4
                % [TimeSignatureContext measure 5] %! COMMENT_MEASURE_NUMBERS
                r2.
            }   % measure
            {   % measure
                \time 4/4
                % [TimeSignatureContext measure 6] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
            {   % measure
                \time 7/8
                % [TimeSignatureContext measure 7] %! COMMENT_MEASURE_NUMBERS
                r2..
            }   % measure
            {   % measure
                \time 3/4
                % [TimeSignatureContext measure 8] %! COMMENT_MEASURE_NUMBERS
                r2.
            }   % measure
            {   % measure
                \time 5/8
                % [TimeSignatureContext measure 9] %! COMMENT_MEASURE_NUMBERS
                r2
                r8
            }   % measure
            {   % measure
                \time 5/4
                % [TimeSignatureContext measure 10] %! COMMENT_MEASURE_NUMBERS
                r1
                r4
            }   % measure
            {   % measure
                \time 4/4
                % [TimeSignatureContext measure 11] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
            {   % measure
                \time 6/8
                % [TimeSignatureContext measure 12] %! COMMENT_MEASURE_NUMBERS
                r2.
            }   % measure
            {   % measure
                \time 5/8
                % [TimeSignatureContext measure 13] %! COMMENT_MEASURE_NUMBERS
                r2
                r8
            }   % measure
            {   % measure
                \time 4/4
                % [TimeSignatureContext measure 14] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
            {   % measure
                \time 3/4
                % [TimeSignatureContext measure 15] %! COMMENT_MEASURE_NUMBERS
                r2.
            }   % measure
            {   % measure
                \time 5/4
                % [TimeSignatureContext measure 16] %! COMMENT_MEASURE_NUMBERS
                r1
                r4
            }   % measure
            {   % measure
                \time 4/4
                % [TimeSignatureContext measure 17] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
            {   % measure
                \time 7/8
                % [TimeSignatureContext measure 18] %! COMMENT_MEASURE_NUMBERS
                r2..
            }   % measure
            {   % measure
                \time 4/4
                % [TimeSignatureContext measure 19] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
            {   % measure
                \time 3/4
                % [TimeSignatureContext measure 20] %! COMMENT_MEASURE_NUMBERS
                r2.
            }   % measure
            {   % measure
                \time 7/8
                % [TimeSignatureContext measure 21] %! COMMENT_MEASURE_NUMBERS
                r2..
            }   % measure
            {   % measure
                \time 5/4
                % [TimeSignatureContext measure 22] %! COMMENT_MEASURE_NUMBERS
                r1
                r4
            }   % measure
            {   % measure
                \time 4/4
                % [TimeSignatureContext measure 23] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
        }
        \new StaffGroup
        <<
            \context StringStaff = "cello_string_staff"
            {
                {   % measure
                    \time 4/4
                    % [cello_string_staff measure 1] %! COMMENT_MEASURE_NUMBERS
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'8
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    5
                        }
                    c'4
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'8
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    4
                                    5
                        }
                    c'4.
                    \glissando
                    \once \override NoteHead.Y-offset = -0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    2
                                    5
                        }
                    c'8
                }   % measure
                {   % measure
                    \time 3/4
                    % [cello_string_staff measure 2] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r2.
                }   % measure
                {   % measure
                    \time 4/4
                    % [cello_string_staff measure 3] %! COMMENT_MEASURE_NUMBERS
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'4.
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    4
                                    5
                        }
                    c'2
                    ~
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    5
                        }
                    c'8
                    \glissando
                }   % measure
                {   % measure
                    \time 7/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 7/8 {
                        % [cello_string_staff measure 4] %! COMMENT_MEASURE_NUMBERS
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        2
                                        5
                            }
                        c'4.
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'2
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        5
                            }
                        c'8
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    % [cello_string_staff measure 5] %! COMMENT_MEASURE_NUMBERS
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'2
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    5
                        }
                    c'4
                    ~
                    \glissando
                }   % measure
                {   % measure
                    \time 4/4
                    % [cello_string_staff measure 6] %! COMMENT_MEASURE_NUMBERS
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    5
                        }
                    c'4.
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    2
                                    5
                        }
                    c'8
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    5
                        }
                    c'4
                    \glissando
                    \once \override NoteHead.Y-offset = 0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    5
                        }
                    c'4
                }   % measure
                {   % measure
                    \time 7/8
                    % [cello_string_staff measure 7] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r2..
                }   % measure
                {   % measure
                    \time 3/4
                    % [cello_string_staff measure 8] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r2.
                }   % measure
                {   % measure
                    \time 5/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 10/11 {
                        % [cello_string_staff measure 9] %! COMMENT_MEASURE_NUMBERS
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        5
                            }
                        c'8
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'4
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        5
                            }
                        c'8
                        ~
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 5/4
                    % [cello_string_staff measure 10] %! COMMENT_MEASURE_NUMBERS
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    4
                                    5
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    2
                                    5
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    5
                        }
                    c'8
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    4
                                    5
                        }
                    c'4.
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    5
                        }
                    c'8
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    2
                                    5
                        }
                    c'8.
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    5
                        }
                    c'16
                    \glissando
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                }   % measure
                {   % measure
                    \time 4/4
                    % [cello_string_staff measure 11] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r1
                }   % measure
                {   % measure
                    \time 6/8
                    % [cello_string_staff measure 12] %! COMMENT_MEASURE_NUMBERS
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    5
                        }
                    c'8.
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    2
                                    5
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    5
                        }
                    c'8
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    5
                        }
                    c'8.
                    \glissando
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'8.
                }   % measure
                {   % measure
                    \time 5/8
                    % [cello_string_staff measure 13] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r2
                    \once \override Dots.transparent = ##t
                    r8
                }   % measure
                {   % measure
                    \time 4/4
                    % [cello_string_staff measure 14] %! COMMENT_MEASURE_NUMBERS
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'4.
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'8
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'8.
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    5
                        }
                    c'4
                    \glissando
                }   % measure
                {   % measure
                    \time 3/4
                    % [cello_string_staff measure 15] %! COMMENT_MEASURE_NUMBERS
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    4
                                    5
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    2
                                    5
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    5
                        }
                    c'8.
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    4
                                    5
                        }
                    c'8
                    \glissando
                    \once \override NoteHead.Y-offset = 0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    5
                        }
                    c'8.
                }   % measure
                {   % measure
                    \time 5/4
                    % [cello_string_staff measure 16] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r1
                    \once \override Dots.transparent = ##t
                    r4
                }   % measure
                {   % measure
                    \time 4/4
                    % [cello_string_staff measure 17] %! COMMENT_MEASURE_NUMBERS
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    5
                        }
                    c'8
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'8
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    5
                        }
                    c'8.
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    5
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    2
                                    5
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    5
                        }
                    c'8
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    5
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    4
                                    5
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    5
                        }
                    c'8
                    ~
                    \glissando
                }   % measure
                {   % measure
                    \time 7/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 14/15 {
                        % [cello_string_staff measure 18] %! COMMENT_MEASURE_NUMBERS
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'8
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'4
                        ~
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        5
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'4
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        4
                                        5
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        2
                                        5
                            }
                        c'16
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    % [cello_string_staff measure 19] %! COMMENT_MEASURE_NUMBERS
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    5
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'8.
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    4
                                    5
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    5
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    2
                                    5
                        }
                    c'8
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    5
                        }
                    c'4.
                    \glissando
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                }   % measure
                {   % measure
                    \time 3/4
                    % [cello_string_staff measure 20] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r2.
                }   % measure
                {   % measure
                    \time 7/8
                    % [cello_string_staff measure 21] %! COMMENT_MEASURE_NUMBERS
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    5
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    2
                                    5
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    5
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    5
                        }
                    c'8.
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    4
                                    5
                        }
                    c'8
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    5
                        }
                    c'4
                    ~
                    \glissando
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    \glissando
                }   % measure
                {   % measure
                    \time 5/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 20/21 {
                        % [cello_string_staff measure 22] %! COMMENT_MEASURE_NUMBERS
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'4
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        5
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'8.
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        4
                                        5
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        2
                                        5
                            }
                        c'16
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.4
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        5
                            }
                        c'8
                        \glissando
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        \glissando
                        \once \override NoteHead.Y-offset = 1.2
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        4
                                        5
                            }
                        c'4.
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    % [cello_string_staff measure 23] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r1
                }   % measure
            }
            \context BowStaff = "cello_bow_staff"
            {
                {   % measure
                    \time 4/4
                    % [cello_bow_staff measure 1] %! COMMENT_MEASURE_NUMBERS
                    \set BowStaff.instrumentName =
                    \markup { Vc. }
                    \set BowStaff.shortInstrumentName =
                    \markup { Vc. }
                    \set BowStaff.instrumentName =
                    \markup { Violoncello }
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    [
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 0
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ]
                }   % measure
                {   % measure
                    \time 3/4
                    % [cello_bow_staff measure 2] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r2.
                }   % measure
                {   % measure
                    \time 4/4
                    \times 16/17 {
                        % [cello_bow_staff measure 3] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        4
                            }
                        c'16
                        ^\downbow
                        [
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        4
                            }
                        c'16
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        2
                            }
                        c'16
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        2
                            }
                        c'16
                        ^ \parenthesize \upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        4
                            }
                        c'16
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        2
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        4
                            }
                        c'16
                        ^\upbow
                        ]
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 7/8
                    % [cello_bow_staff measure 4] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\downbow
                    [
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    2
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 0
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^ \parenthesize \downbow
                    ]
                    \glissando
                }   % measure
                {   % measure
                    \time 3/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/8 {
                        % [cello_bow_staff measure 5] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'8
                        ^\upbow
                        [
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'8
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'8
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'8
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'8
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'8
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'8
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'8
                        ^\downbow
                        ]
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    \times 16/19 {
                        % [cello_bow_staff measure 6] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        [
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        4
                            }
                        c'16
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        4
                            }
                        c'16
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        2
                            }
                        c'16
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        2
                            }
                        c'16
                        ^ \parenthesize \upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ]
                    }
                }   % measure
                {   % measure
                    \time 7/8
                    % [cello_bow_staff measure 7] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r2..
                }   % measure
                {   % measure
                    \time 3/4
                    % [cello_bow_staff measure 8] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r2.
                }   % measure
                {   % measure
                    \time 5/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 10/11 {
                        % [cello_bow_staff measure 9] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        ^\upbow
                        [
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        4
                            }
                        c'16
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        2
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        2
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        ]
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 5/4
                    % [cello_bow_staff measure 10] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'32
                    ^\upbow
                    [
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^ \parenthesize \downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    4
                        }
                    c'32
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    4
                        }
                    c'32
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    2
                        }
                    c'32
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    2
                        }
                    c'32
                    ^ \parenthesize \upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'32
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    4
                        }
                    c'32
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    2
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 0
                    \once \override NoteHead.Y-offset = 1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    4
                        }
                    c'32
                    ]
                }   % measure
                {   % measure
                    \time 4/4
                    % [cello_bow_staff measure 11] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r1
                }   % measure
                {   % measure
                    \time 6/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 12/13 {
                        % [cello_bow_staff measure 12] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        2
                            }
                        c'16
                        ^\upbow
                        [
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ]
                    }
                }   % measure
                {   % measure
                    \time 5/8
                    % [cello_bow_staff measure 13] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r2
                    \once \override Dots.transparent = ##t
                    r8
                }   % measure
                {   % measure
                    \time 4/4
                    % [cello_bow_staff measure 14] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    [
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    4
                        }
                    c'16
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 0
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    ^\upbow
                    ]
                    \glissando
                }   % measure
                {   % measure
                    \time 3/4
                    % [cello_bow_staff measure 15] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    4
                        }
                    c'16
                    [
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    2
                        }
                    c'16
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    2
                        }
                    c'16
                    ^ \parenthesize \upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 0
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    ]
                }   % measure
                {   % measure
                    \time 5/4
                    % [cello_bow_staff measure 16] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r1
                    \once \override Dots.transparent = ##t
                    r4
                }   % measure
                {   % measure
                    \time 4/4
                    % [cello_bow_staff measure 17] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    4
                        }
                    c'32
                    ^\upbow
                    [
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    2
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^ \parenthesize \downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'32
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'32
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 0
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    4
                        }
                    c'32
                    ]
                    \glissando
                }   % measure
                {   % measure
                    \time 7/8
                    % [cello_bow_staff measure 18] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    ^\upbow
                    [
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    4
                        }
                    c'16
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    2
                        }
                    c'16
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 0.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    2
                        }
                    c'16
                    ^ \parenthesize \upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 0
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    4
                        }
                    c'16
                    ]
                    \glissando
                }   % measure
                {   % measure
                    \time 4/4
                    \times 8/10 {
                        % [cello_bow_staff measure 19] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        2
                            }
                        c'8
                        ^\downbow
                        [
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        4
                            }
                        c'8
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'8
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        2
                            }
                        c'8
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'8
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'8
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'8
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'8
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'8
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'8
                        ]
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    % [cello_bow_staff measure 20] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r2.
                }   % measure
                {   % measure
                    \time 7/8
                    % [cello_bow_staff measure 21] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    [
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^ \parenthesize \downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    c'16
                    ^\downbow
                    \glissando
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 0
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    c'16
                    ^\upbow
                    ]
                    \glissando
                }   % measure
                {   % measure
                    \time 5/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 20/21 {
                        % [cello_bow_staff measure 22] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        [
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        4
                            }
                        c'16
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        3
                                        4
                            }
                        c'16
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        2
                            }
                        c'16
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 0.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        2
                            }
                        c'16
                        ^ \parenthesize \upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -1.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        4
                            }
                        c'16
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        ^\upbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        \once \override NoteHead.Y-offset = 2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        1
                                        1
                            }
                        c'16
                        ]
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    % [cello_bow_staff measure 23] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r1
                }   % measure
            }
            \context BeamStaff = "cello_beam_staff"
            {
                {   % measure
                    \time 4/4
                    % [cello_beam_staff measure 1] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 2
                    d''''16
                    [
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 0
                    d''''16
                    ]
                }   % measure
                {   % measure
                    \time 3/4
                    % [cello_beam_staff measure 2] %! COMMENT_MEASURE_NUMBERS
                    r2.
                }   % measure
                {   % measure
                    \time 4/4
                    \times 16/17 {
                        % [cello_beam_staff measure 3] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        d''''16
                        [
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        d''''16
                        ]
                    }
                }   % measure
                {   % measure
                    \time 7/8
                    % [cello_beam_staff measure 4] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 2
                    d''''16
                    [
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 0
                    d''''16
                    ]
                }   % measure
                {   % measure
                    \time 3/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/8 {
                        % [cello_beam_staff measure 5] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 1
                        d''''8
                        [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        d''''8
                        ]
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    \times 16/19 {
                        % [cello_beam_staff measure 6] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        d''''16
                        [
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        d''''16
                        ]
                    }
                }   % measure
                {   % measure
                    \time 7/8
                    % [cello_beam_staff measure 7] %! COMMENT_MEASURE_NUMBERS
                    r2..
                }   % measure
                {   % measure
                    \time 3/4
                    % [cello_beam_staff measure 8] %! COMMENT_MEASURE_NUMBERS
                    r2.
                }   % measure
                {   % measure
                    \time 5/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 10/11 {
                        % [cello_beam_staff measure 9] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        d''''16
                        [
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        d''''16
                        ]
                    }
                }   % measure
                {   % measure
                    \time 5/4
                    % [cello_beam_staff measure 10] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 3
                    d''''32
                    [
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 0
                    d''''32
                    ]
                }   % measure
                {   % measure
                    \time 4/4
                    % [cello_beam_staff measure 11] %! COMMENT_MEASURE_NUMBERS
                    r1
                }   % measure
                {   % measure
                    \time 6/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 12/13 {
                        % [cello_beam_staff measure 12] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        d''''16
                        [
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        d''''16
                        ]
                    }
                }   % measure
                {   % measure
                    \time 5/8
                    % [cello_beam_staff measure 13] %! COMMENT_MEASURE_NUMBERS
                    r2
                    r8
                }   % measure
                {   % measure
                    \time 4/4
                    % [cello_beam_staff measure 14] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 2
                    d''''16
                    [
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 0
                    d''''16
                    ]
                }   % measure
                {   % measure
                    \time 3/4
                    % [cello_beam_staff measure 15] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 2
                    d''''16
                    [
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 0
                    d''''16
                    ]
                }   % measure
                {   % measure
                    \time 5/4
                    % [cello_beam_staff measure 16] %! COMMENT_MEASURE_NUMBERS
                    r1
                    r4
                }   % measure
                {   % measure
                    \time 4/4
                    % [cello_beam_staff measure 17] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 3
                    d''''32
                    [
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 0
                    d''''32
                    ]
                }   % measure
                {   % measure
                    \time 7/8
                    % [cello_beam_staff measure 18] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 2
                    d''''16
                    [
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 0
                    d''''16
                    ]
                }   % measure
                {   % measure
                    \time 4/4
                    \times 8/10 {
                        % [cello_beam_staff measure 19] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 1
                        d''''8
                        [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        d''''8
                        ]
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    % [cello_beam_staff measure 20] %! COMMENT_MEASURE_NUMBERS
                    r2.
                }   % measure
                {   % measure
                    \time 7/8
                    % [cello_beam_staff measure 21] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 2
                    d''''16
                    [
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 0
                    d''''16
                    ]
                }   % measure
                {   % measure
                    \time 5/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 20/21 {
                        % [cello_beam_staff measure 22] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        d''''16
                        [
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        d''''16
                        ]
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    % [cello_beam_staff measure 23] %! COMMENT_MEASURE_NUMBERS
                    r1
                }   % measure
            }
            \new Staff
            {
                {   % measure
                    \time 4/4
                    % [Staff measure 1] %! COMMENT_MEASURE_NUMBERS
                    \clef "bass"
                    e1
                }   % measure
                {   % measure
                    \time 3/4
                    % [Staff measure 2] %! COMMENT_MEASURE_NUMBERS
                    r2.
                }   % measure
                {   % measure
                    \time 4/4
                    % [Staff measure 3] %! COMMENT_MEASURE_NUMBERS
                    e1
                }   % measure
                {   % measure
                    \time 7/8
                    % [Staff measure 4] %! COMMENT_MEASURE_NUMBERS
                    e2..
                }   % measure
                {   % measure
                    \time 3/4
                    % [Staff measure 5] %! COMMENT_MEASURE_NUMBERS
                    e2.
                }   % measure
                {   % measure
                    \time 4/4
                    % [Staff measure 6] %! COMMENT_MEASURE_NUMBERS
                    e1
                }   % measure
                {   % measure
                    \time 7/8
                    % [Staff measure 7] %! COMMENT_MEASURE_NUMBERS
                    r2..
                }   % measure
                {   % measure
                    \time 3/4
                    % [Staff measure 8] %! COMMENT_MEASURE_NUMBERS
                    r2.
                }   % measure
                {   % measure
                    \time 5/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 10/11 {
                        % [Staff measure 9] %! COMMENT_MEASURE_NUMBERS
                        c4
                        ~
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        c16
                        [
                        ]
                        cqs4.
                    }
                }   % measure
                {   % measure
                    \time 5/4
                    % [Staff measure 10] %! COMMENT_MEASURE_NUMBERS
                    c2
                    c4.
                    c4
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 0
                    c8
                    [
                    ]
                }   % measure
                {   % measure
                    \time 4/4
                    % [Staff measure 11] %! COMMENT_MEASURE_NUMBERS
                    r1
                }   % measure
                {   % measure
                    \time 6/8
                    % [Staff measure 12] %! COMMENT_MEASURE_NUMBERS
                    a,2.
                }   % measure
                {   % measure
                    \time 5/8
                    % [Staff measure 13] %! COMMENT_MEASURE_NUMBERS
                    r2
                    r8
                }   % measure
                {   % measure
                    \time 4/4
                    % [Staff measure 14] %! COMMENT_MEASURE_NUMBERS
                    aqf,1
                }   % measure
                {   % measure
                    \time 3/4
                    % [Staff measure 15] %! COMMENT_MEASURE_NUMBERS
                    c2.
                }   % measure
                {   % measure
                    \time 5/4
                    % [Staff measure 16] %! COMMENT_MEASURE_NUMBERS
                    r1
                    r4
                }   % measure
                {   % measure
                    \time 4/4
                    % [Staff measure 17] %! COMMENT_MEASURE_NUMBERS
                    c1
                }   % measure
                {   % measure
                    \time 7/8
                    % [Staff measure 18] %! COMMENT_MEASURE_NUMBERS
                    c2..
                }   % measure
                {   % measure
                    \time 4/4
                    % [Staff measure 19] %! COMMENT_MEASURE_NUMBERS
                    c1
                }   % measure
                {   % measure
                    \time 3/4
                    % [Staff measure 20] %! COMMENT_MEASURE_NUMBERS
                    r2.
                }   % measure
                {   % measure
                    \time 7/8
                    % [Staff measure 21] %! COMMENT_MEASURE_NUMBERS
                    eqs2..
                }   % measure
                {   % measure
                    \time 5/4
                    % [Staff measure 22] %! COMMENT_MEASURE_NUMBERS
                    e1
                    ~
                    e4
                }   % measure
                {   % measure
                    \time 4/4
                    % [Staff measure 23] %! COMMENT_MEASURE_NUMBERS
                    r1
                }   % measure
            }
        >>
    >>
}