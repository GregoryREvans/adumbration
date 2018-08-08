\version "2.19.82"
\language "english"

\include "first_stylesheet.ily"

\header {
    tagline = ##f
}

\layout {}

\paper {}

\score {
    \context Score = "Adumbration Score"
    <<
        \context TimeSignatureContext = "TimeSignatureContext1"
        {
            {   % measure
                \time 4/4
                % [TimeSignatureContext1 measure 1] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
            {   % measure
                \time 3/4
                % [TimeSignatureContext1 measure 2] %! COMMENT_MEASURE_NUMBERS
                r2.
            }   % measure
            {   % measure
                \time 4/4
                % [TimeSignatureContext1 measure 3] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
            {   % measure
                \time 7/8
                % [TimeSignatureContext1 measure 4] %! COMMENT_MEASURE_NUMBERS
                r2..
            }   % measure
            {   % measure
                \time 3/4
                % [TimeSignatureContext1 measure 5] %! COMMENT_MEASURE_NUMBERS
                r2.
            }   % measure
            {   % measure
                \time 4/4
                % [TimeSignatureContext1 measure 6] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
            {   % measure
                \time 7/8
                % [TimeSignatureContext1 measure 7] %! COMMENT_MEASURE_NUMBERS
                r2..
            }   % measure
            {   % measure
                \time 3/4
                % [TimeSignatureContext1 measure 8] %! COMMENT_MEASURE_NUMBERS
                r2.
            }   % measure
            {   % measure
                \time 5/8
                % [TimeSignatureContext1 measure 9] %! COMMENT_MEASURE_NUMBERS
                r2
                r8
            }   % measure
            {   % measure
                \time 5/4
                % [TimeSignatureContext1 measure 10] %! COMMENT_MEASURE_NUMBERS
                r1
                r4
            }   % measure
            {   % measure
                \time 4/4
                % [TimeSignatureContext1 measure 11] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
            {   % measure
                \time 6/8
                % [TimeSignatureContext1 measure 12] %! COMMENT_MEASURE_NUMBERS
                r2.
            }   % measure
            {   % measure
                \time 5/8
                % [TimeSignatureContext1 measure 13] %! COMMENT_MEASURE_NUMBERS
                r2
                r8
            }   % measure
            {   % measure
                \time 4/4
                % [TimeSignatureContext1 measure 14] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
            {   % measure
                \time 3/4
                % [TimeSignatureContext1 measure 15] %! COMMENT_MEASURE_NUMBERS
                r2.
            }   % measure
            {   % measure
                \time 5/4
                % [TimeSignatureContext1 measure 16] %! COMMENT_MEASURE_NUMBERS
                r1
                r4
            }   % measure
            {   % measure
                \time 4/4
                % [TimeSignatureContext1 measure 17] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
            {   % measure
                \time 7/8
                % [TimeSignatureContext1 measure 18] %! COMMENT_MEASURE_NUMBERS
                r2..
            }   % measure
            {   % measure
                \time 4/4
                % [TimeSignatureContext1 measure 19] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
            {   % measure
                \time 3/4
                % [TimeSignatureContext1 measure 20] %! COMMENT_MEASURE_NUMBERS
                r2.
            }   % measure
            {   % measure
                \time 7/8
                % [TimeSignatureContext1 measure 21] %! COMMENT_MEASURE_NUMBERS
                r2..
            }   % measure
            {   % measure
                \time 5/4
                % [TimeSignatureContext1 measure 22] %! COMMENT_MEASURE_NUMBERS
                r1
                r4
            }   % measure
            {   % measure
                \time 4/4
                % [TimeSignatureContext1 measure 23] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
        }
        \context StaffGroup = "violin"
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
                        \once \override Glissando.style = #'line
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
                    }
                }   % measure
                {   % measure
                    \time 7/8
                    % [violin_string_staff measure 7] %! COMMENT_MEASURE_NUMBERS
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
                    }
                }   % measure
                {   % measure
                    \time 5/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/8 {
                        % [violin_string_staff measure 10] %! COMMENT_MEASURE_NUMBERS
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
                        c'1
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
                        c'4
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    \times 8/9 {
                        % [violin_string_staff measure 11] %! COMMENT_MEASURE_NUMBERS
                        \once \override Glissando.style = #'line
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
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    % [violin_string_staff measure 14] %! COMMENT_MEASURE_NUMBERS
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
                }   % measure
                {   % measure
                    \time 3/4
                    % [violin_string_staff measure 15] %! COMMENT_MEASURE_NUMBERS
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
                    c'4
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
                }   % measure
                {   % measure
                    \time 5/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 20/21 {
                        % [violin_string_staff measure 16] %! COMMENT_MEASURE_NUMBERS
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
                        c'4
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
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    % [violin_string_staff measure 19] %! COMMENT_MEASURE_NUMBERS
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
                    ~
                    \glissando
                }   % measure
                {   % measure
                    \time 3/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 12/13 {
                        % [violin_string_staff measure 20] %! COMMENT_MEASURE_NUMBERS
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
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    % [violin_string_staff measure 23] %! COMMENT_MEASURE_NUMBERS
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
                    c'4.
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
                    \bar "||"
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
                        \f
                        [
                        \>
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \mf
                        \<
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \ff
                        \>
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \mp
                        \<
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \fff
                        \>
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
                        \f
                        \>
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
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
                        \mf
                        ]
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    % [violin_beam_staff measure 5] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r2.
                }   % measure
                {   % measure
                    \time 4/4
                    \times 8/9 {
                        % [violin_beam_staff measure 6] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 1
                        d''''8
                        \ff
                        [
                        \>
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
                        \p
                        \<
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \fff
                        \>
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        d''''8
                        \f
                        ]
                        \>
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
                        \p
                        ]
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    % [violin_beam_staff measure 8] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
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
                        \f
                        [
                        \>
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \mf
                        \<
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \ff
                        \>
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
                        \mp
                        [
                        \<
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \fff
                        \>
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
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
                    \f
                    \>
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
                    \mf
                    ]
                }   % measure
                {   % measure
                    \time 6/8
                    % [violin_beam_staff measure 12] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
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
                        \f
                        [
                        \>
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \mf
                        \<
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \ff
                        \>
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \mp
                        \<
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
                        \fff
                        \>
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
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 2
                    d''''16
                    [
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    d''''8
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 2
                    d''''16
                    ]
                    d''''4.
                    \f
                    \>
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 0
                    d''''8
                    [
                    ]
                }   % measure
                {   % measure
                    \time 5/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 20/21 {
                        % [violin_beam_staff measure 16] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 1
                        d''''8.
                        [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        d''''16
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        d''''16
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        d''''16
                        ]
                        d''''4.
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        d''''8
                        \mf
                        ]
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    % [violin_beam_staff measure 17] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r1
                }   % measure
                {   % measure
                    \time 7/8
                    % [violin_beam_staff measure 18] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 2
                    d''''16
                    \f
                    [
                    \>
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    d''''8.
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 1
                    d''''16
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    d''''8
                    \mf
                    \<
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 1
                    d''''16
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    d''''8
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 1
                    d''''16
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 0
                    d''''8
                    \ff
                    ]
                    \>
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
                    \mp
                    \<
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \fff
                    \>
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
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
                        \f
                        \>
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
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
                        \mf
                        ]
                    }
                }   % measure
                {   % measure
                    \time 7/8
                    % [violin_beam_staff measure 21] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r2..
                }   % measure
                {   % measure
                    \time 5/4
                    % [violin_beam_staff measure 22] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 2
                    d''''16
                    \ff
                    [
                    \>
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \p
                    \<
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \fff
                    \>
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \f
                    \>
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
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
                        \p
                        ]
                    }
                }   % measure
            }
            \context Staff = "violin_lh_staff"
            {
                {   % measure
                    \time 4/4
                    % [violin_lh_staff measure 1] %! COMMENT_MEASURE_NUMBERS
                    \tempo 2=60
                    bqs1
                }   % measure
                {   % measure
                    \time 3/4
                    % [violin_lh_staff measure 2] %! COMMENT_MEASURE_NUMBERS
                    c'2.
                }   % measure
                {   % measure
                    \time 4/4
                    % [violin_lh_staff measure 3] %! COMMENT_MEASURE_NUMBERS
                    cqs'1
                }   % measure
                {   % measure
                    \time 7/8
                    % [violin_lh_staff measure 4] %! COMMENT_MEASURE_NUMBERS
                    c'2..
                }   % measure
                {   % measure
                    \time 3/4
                    % [violin_lh_staff measure 5] %! COMMENT_MEASURE_NUMBERS
                    r2.
                }   % measure
                {   % measure
                    \time 4/4
                    \times 4/5 {
                        % [violin_lh_staff measure 6] %! COMMENT_MEASURE_NUMBERS
                        dqs'2
                        d'2.
                    }
                }   % measure
                {   % measure
                    \time 7/8
                    % [violin_lh_staff measure 7] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 1
                    dqf'8.
                    [
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    cs'8
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 1
                    cqs'16
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    c'8
                    ]
                    dqs'4
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 0
                    d'8
                    [
                    ]
                }   % measure
                {   % measure
                    \time 3/4
                    % [violin_lh_staff measure 8] %! COMMENT_MEASURE_NUMBERS
                    r2.
                }   % measure
                {   % measure
                    \time 5/8
                    % [violin_lh_staff measure 9] %! COMMENT_MEASURE_NUMBERS
                    dqf'4.
                    cs'4
                }   % measure
                {   % measure
                    \time 5/4
                    % [violin_lh_staff measure 10] %! COMMENT_MEASURE_NUMBERS
                    eqs'1
                    ~
                    eqs'4
                }   % measure
                {   % measure
                    \time 4/4
                    % [violin_lh_staff measure 11] %! COMMENT_MEASURE_NUMBERS
                    e'1
                }   % measure
                {   % measure
                    \time 6/8
                    % [violin_lh_staff measure 12] %! COMMENT_MEASURE_NUMBERS
                    r2.
                }   % measure
                {   % measure
                    \time 5/8
                    % [violin_lh_staff measure 13] %! COMMENT_MEASURE_NUMBERS
                    eqs'2
                    ~
                    eqs'8
                }   % measure
                {   % measure
                    \time 4/4
                    % [violin_lh_staff measure 14] %! COMMENT_MEASURE_NUMBERS
                    e'1
                }   % measure
                {   % measure
                    \time 3/4
                    % [violin_lh_staff measure 15] %! COMMENT_MEASURE_NUMBERS
                    gqs'2.
                }   % measure
                {   % measure
                    \time 5/4
                    % [violin_lh_staff measure 16] %! COMMENT_MEASURE_NUMBERS
                    g'1
                    ~
                    g'4
                }   % measure
                {   % measure
                    \time 4/4
                    % [violin_lh_staff measure 17] %! COMMENT_MEASURE_NUMBERS
                    r1
                }   % measure
                {   % measure
                    \time 7/8
                    % [violin_lh_staff measure 18] %! COMMENT_MEASURE_NUMBERS
                    gqs'2..
                }   % measure
                {   % measure
                    \time 4/4
                    % [violin_lh_staff measure 19] %! COMMENT_MEASURE_NUMBERS
                    bqf'1
                }   % measure
                {   % measure
                    \time 3/4
                    % [violin_lh_staff measure 20] %! COMMENT_MEASURE_NUMBERS
                    b'2.
                }   % measure
                {   % measure
                    \time 7/8
                    % [violin_lh_staff measure 21] %! COMMENT_MEASURE_NUMBERS
                    r2..
                }   % measure
                {   % measure
                    \time 5/4
                    % [violin_lh_staff measure 22] %! COMMENT_MEASURE_NUMBERS
                    bqs'1
                    ~
                    bqs'4
                }   % measure
                {   % measure
                    \time 4/4
                    % [violin_lh_staff measure 23] %! COMMENT_MEASURE_NUMBERS
                    c''1
                }   % measure
            }
        >>
        \context TimeSignatureContext = "TimeSignatureContext2"
        {
            {   % measure
                \time 4/4
                % [TimeSignatureContext2 measure 1] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
            {   % measure
                \time 3/4
                % [TimeSignatureContext2 measure 2] %! COMMENT_MEASURE_NUMBERS
                r2.
            }   % measure
            {   % measure
                \time 4/4
                % [TimeSignatureContext2 measure 3] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
            {   % measure
                \time 7/8
                % [TimeSignatureContext2 measure 4] %! COMMENT_MEASURE_NUMBERS
                r2..
            }   % measure
            {   % measure
                \time 3/4
                % [TimeSignatureContext2 measure 5] %! COMMENT_MEASURE_NUMBERS
                r2.
            }   % measure
            {   % measure
                \time 4/4
                % [TimeSignatureContext2 measure 6] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
            {   % measure
                \time 7/8
                % [TimeSignatureContext2 measure 7] %! COMMENT_MEASURE_NUMBERS
                r2..
            }   % measure
            {   % measure
                \time 3/4
                % [TimeSignatureContext2 measure 8] %! COMMENT_MEASURE_NUMBERS
                r2.
            }   % measure
            {   % measure
                \time 5/8
                % [TimeSignatureContext2 measure 9] %! COMMENT_MEASURE_NUMBERS
                r2
                r8
            }   % measure
            {   % measure
                \time 5/4
                % [TimeSignatureContext2 measure 10] %! COMMENT_MEASURE_NUMBERS
                r1
                r4
            }   % measure
            {   % measure
                \time 4/4
                % [TimeSignatureContext2 measure 11] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
            {   % measure
                \time 6/8
                % [TimeSignatureContext2 measure 12] %! COMMENT_MEASURE_NUMBERS
                r2.
            }   % measure
            {   % measure
                \time 5/8
                % [TimeSignatureContext2 measure 13] %! COMMENT_MEASURE_NUMBERS
                r2
                r8
            }   % measure
            {   % measure
                \time 4/4
                % [TimeSignatureContext2 measure 14] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
            {   % measure
                \time 3/4
                % [TimeSignatureContext2 measure 15] %! COMMENT_MEASURE_NUMBERS
                r2.
            }   % measure
            {   % measure
                \time 5/4
                % [TimeSignatureContext2 measure 16] %! COMMENT_MEASURE_NUMBERS
                r1
                r4
            }   % measure
            {   % measure
                \time 4/4
                % [TimeSignatureContext2 measure 17] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
            {   % measure
                \time 7/8
                % [TimeSignatureContext2 measure 18] %! COMMENT_MEASURE_NUMBERS
                r2..
            }   % measure
            {   % measure
                \time 4/4
                % [TimeSignatureContext2 measure 19] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
            {   % measure
                \time 3/4
                % [TimeSignatureContext2 measure 20] %! COMMENT_MEASURE_NUMBERS
                r2.
            }   % measure
            {   % measure
                \time 7/8
                % [TimeSignatureContext2 measure 21] %! COMMENT_MEASURE_NUMBERS
                r2..
            }   % measure
            {   % measure
                \time 5/4
                % [TimeSignatureContext2 measure 22] %! COMMENT_MEASURE_NUMBERS
                r1
                r4
            }   % measure
            {   % measure
                \time 4/4
                % [TimeSignatureContext2 measure 23] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
        }
        \context StaffGroup = "viola"
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
                        c'2
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    \times 4/7 {
                        % [viola_string_staff measure 3] %! COMMENT_MEASURE_NUMBERS
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
                    \time 4/4
                    \times 8/11 {
                        % [viola_string_staff measure 6] %! COMMENT_MEASURE_NUMBERS
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
                        c'2
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 7/8
                    % [viola_string_staff measure 7] %! COMMENT_MEASURE_NUMBERS
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
                    }
                }   % measure
                {   % measure
                    \time 5/4
                    % [viola_string_staff measure 10] %! COMMENT_MEASURE_NUMBERS
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
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    % [viola_string_staff measure 14] %! COMMENT_MEASURE_NUMBERS
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
                    c'8.
                    \glissando
                }   % measure
                {   % measure
                    \time 3/4
                    % [viola_string_staff measure 15] %! COMMENT_MEASURE_NUMBERS
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
                    % [viola_string_staff measure 19] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r1
                }   % measure
                {   % measure
                    \time 3/4
                    % [viola_string_staff measure 20] %! COMMENT_MEASURE_NUMBERS
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
                    r1
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
                    r1
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
                    \f
                    [
                    \>
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
                    \mf
                    \<
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
                        \ff
                        [
                        \>
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \mp
                        \<
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \fff
                        \>
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
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
                        \f
                        \>
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
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
                        \mf
                        ]
                    }
                }   % measure
                {   % measure
                    \time 7/8
                    % [viola_beam_staff measure 4] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
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
                        \f
                        [
                        \>
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
                        \mf
                        \<
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
                        \ff
                        [
                        \>
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \mp
                        \<
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \fff
                        \>
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
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
                    \f
                    \>
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
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
                    \mf
                    ]
                }   % measure
                {   % measure
                    \time 3/4
                    % [viola_beam_staff measure 8] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r2.
                }   % measure
                {   % measure
                    \time 5/8
                    % [viola_beam_staff measure 9] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 3
                    d''''32
                    \ff
                    [
                    \>
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
                    \p
                    \<
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \fff
                    \>
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \f
                    \>
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
                    \p
                    ]
                }   % measure
                {   % measure
                    \time 4/4
                    % [viola_beam_staff measure 11] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r1
                }   % measure
                {   % measure
                    \time 6/8
                    % [viola_beam_staff measure 12] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 2
                    d''''16
                    \f
                    [
                    \>
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \mf
                    \<
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \ff
                    \>
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 0
                    d''''16
                    \mp
                    ]
                    \<
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
                        \fff
                        \>
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
                    \f
                    [
                    \>
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
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
                    \mf
                    ]
                }   % measure
                {   % measure
                    \time 5/4
                    % [viola_beam_staff measure 16] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r1
                    \once \override Dots.transparent = ##t
                    r4
                }   % measure
                {   % measure
                    \time 4/4
                    % [viola_beam_staff measure 17] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 1
                    d''''8
                    \ff
                    [
                    \>
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
                    \p
                    \<
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    d''''8
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    d''''8
                    \fff
                    \>
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
                    \f
                    [
                    \>
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
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
                    \p
                    ]
                }   % measure
                {   % measure
                    \time 4/4
                    % [viola_beam_staff measure 19] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r1
                }   % measure
                {   % measure
                    \time 3/4
                    % [viola_beam_staff measure 20] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 2
                    d''''16
                    \ff
                    [
                    \>
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \p
                    \<
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \fff
                    \>
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \f
                    \>
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
                        \p
                        ]
                    }
                }   % measure
                {   % measure
                    \time 5/4
                    % [viola_beam_staff measure 22] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r1
                    \once \override Dots.transparent = ##t
                    r4
                }   % measure
                {   % measure
                    \time 4/4
                    % [viola_beam_staff measure 23] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 2
                    d''''16
                    \ff
                    [
                    \>
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \p
                    \<
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \fff
                    \>
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \f
                    \>
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
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
                    \p
                    ]
                }   % measure
            }
            \context Staff = "viola_lh_staff"
            {
                {   % measure
                    \time 4/4
                    % [viola_lh_staff measure 1] %! COMMENT_MEASURE_NUMBERS
                    \clef "varC"
                    gqf1
                }   % measure
                {   % measure
                    \time 3/4
                    % [viola_lh_staff measure 2] %! COMMENT_MEASURE_NUMBERS
                    g2.
                }   % measure
                {   % measure
                    \time 4/4
                    % [viola_lh_staff measure 3] %! COMMENT_MEASURE_NUMBERS
                    gqf1
                }   % measure
                {   % measure
                    \time 7/8
                    % [viola_lh_staff measure 4] %! COMMENT_MEASURE_NUMBERS
                    r2..
                }   % measure
                {   % measure
                    \time 3/4
                    % [viola_lh_staff measure 5] %! COMMENT_MEASURE_NUMBERS
                    fs2.
                }   % measure
                {   % measure
                    \time 4/4
                    % [viola_lh_staff measure 6] %! COMMENT_MEASURE_NUMBERS
                    gqf1
                }   % measure
                {   % measure
                    \time 7/8
                    % [viola_lh_staff measure 7] %! COMMENT_MEASURE_NUMBERS
                    gqs2..
                }   % measure
                {   % measure
                    \time 3/4
                    % [viola_lh_staff measure 8] %! COMMENT_MEASURE_NUMBERS
                    r2.
                }   % measure
                {   % measure
                    \time 5/8
                    % [viola_lh_staff measure 9] %! COMMENT_MEASURE_NUMBERS
                    af2
                    ~
                    af8
                }   % measure
                {   % measure
                    \time 5/4
                    % [viola_lh_staff measure 10] %! COMMENT_MEASURE_NUMBERS
                    aqs1
                    ~
                    aqs4
                }   % measure
                {   % measure
                    \time 4/4
                    % [viola_lh_staff measure 11] %! COMMENT_MEASURE_NUMBERS
                    r1
                }   % measure
                {   % measure
                    \time 6/8
                    % [viola_lh_staff measure 12] %! COMMENT_MEASURE_NUMBERS
                    bf2.
                }   % measure
                {   % measure
                    \time 5/8
                    % [viola_lh_staff measure 13] %! COMMENT_MEASURE_NUMBERS
                    aqs2
                    ~
                    aqs8
                }   % measure
                {   % measure
                    \time 4/4
                    % [viola_lh_staff measure 14] %! COMMENT_MEASURE_NUMBERS
                    bf1
                }   % measure
                {   % measure
                    \time 3/4
                    % [viola_lh_staff measure 15] %! COMMENT_MEASURE_NUMBERS
                    eqf2.
                }   % measure
                {   % measure
                    \time 5/4
                    % [viola_lh_staff measure 16] %! COMMENT_MEASURE_NUMBERS
                    r1
                    r4
                }   % measure
                {   % measure
                    \time 4/4
                    % [viola_lh_staff measure 17] %! COMMENT_MEASURE_NUMBERS
                    e1
                }   % measure
                {   % measure
                    \time 7/8
                    % [viola_lh_staff measure 18] %! COMMENT_MEASURE_NUMBERS
                    eqs2..
                }   % measure
                {   % measure
                    \time 4/4
                    % [viola_lh_staff measure 19] %! COMMENT_MEASURE_NUMBERS
                    r1
                }   % measure
                {   % measure
                    \time 3/4
                    % [viola_lh_staff measure 20] %! COMMENT_MEASURE_NUMBERS
                    fqs2.
                }   % measure
                {   % measure
                    \time 7/8
                    % [viola_lh_staff measure 21] %! COMMENT_MEASURE_NUMBERS
                    fs2..
                }   % measure
                {   % measure
                    \time 5/4
                    % [viola_lh_staff measure 22] %! COMMENT_MEASURE_NUMBERS
                    r1
                    r4
                }   % measure
                {   % measure
                    \time 4/4
                    % [viola_lh_staff measure 23] %! COMMENT_MEASURE_NUMBERS
                    gqf1
                }   % measure
            }
        >>
        \context TimeSignatureContext = "TimeSignatureContext3"
        {
            {   % measure
                \time 4/4
                % [TimeSignatureContext3 measure 1] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
            {   % measure
                \time 3/4
                % [TimeSignatureContext3 measure 2] %! COMMENT_MEASURE_NUMBERS
                r2.
            }   % measure
            {   % measure
                \time 4/4
                % [TimeSignatureContext3 measure 3] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
            {   % measure
                \time 7/8
                % [TimeSignatureContext3 measure 4] %! COMMENT_MEASURE_NUMBERS
                r2..
            }   % measure
            {   % measure
                \time 3/4
                % [TimeSignatureContext3 measure 5] %! COMMENT_MEASURE_NUMBERS
                r2.
            }   % measure
            {   % measure
                \time 4/4
                % [TimeSignatureContext3 measure 6] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
            {   % measure
                \time 7/8
                % [TimeSignatureContext3 measure 7] %! COMMENT_MEASURE_NUMBERS
                r2..
            }   % measure
            {   % measure
                \time 3/4
                % [TimeSignatureContext3 measure 8] %! COMMENT_MEASURE_NUMBERS
                r2.
            }   % measure
            {   % measure
                \time 5/8
                % [TimeSignatureContext3 measure 9] %! COMMENT_MEASURE_NUMBERS
                r2
                r8
            }   % measure
            {   % measure
                \time 5/4
                % [TimeSignatureContext3 measure 10] %! COMMENT_MEASURE_NUMBERS
                r1
                r4
            }   % measure
            {   % measure
                \time 4/4
                % [TimeSignatureContext3 measure 11] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
            {   % measure
                \time 6/8
                % [TimeSignatureContext3 measure 12] %! COMMENT_MEASURE_NUMBERS
                r2.
            }   % measure
            {   % measure
                \time 5/8
                % [TimeSignatureContext3 measure 13] %! COMMENT_MEASURE_NUMBERS
                r2
                r8
            }   % measure
            {   % measure
                \time 4/4
                % [TimeSignatureContext3 measure 14] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
            {   % measure
                \time 3/4
                % [TimeSignatureContext3 measure 15] %! COMMENT_MEASURE_NUMBERS
                r2.
            }   % measure
            {   % measure
                \time 5/4
                % [TimeSignatureContext3 measure 16] %! COMMENT_MEASURE_NUMBERS
                r1
                r4
            }   % measure
            {   % measure
                \time 4/4
                % [TimeSignatureContext3 measure 17] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
            {   % measure
                \time 7/8
                % [TimeSignatureContext3 measure 18] %! COMMENT_MEASURE_NUMBERS
                r2..
            }   % measure
            {   % measure
                \time 4/4
                % [TimeSignatureContext3 measure 19] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
            {   % measure
                \time 3/4
                % [TimeSignatureContext3 measure 20] %! COMMENT_MEASURE_NUMBERS
                r2.
            }   % measure
            {   % measure
                \time 7/8
                % [TimeSignatureContext3 measure 21] %! COMMENT_MEASURE_NUMBERS
                r2..
            }   % measure
            {   % measure
                \time 5/4
                % [TimeSignatureContext3 measure 22] %! COMMENT_MEASURE_NUMBERS
                r1
                r4
            }   % measure
            {   % measure
                \time 4/4
                % [TimeSignatureContext3 measure 23] %! COMMENT_MEASURE_NUMBERS
                r1
            }   % measure
        }
        \context StaffGroup = "cello"
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
                }   % measure
                {   % measure
                    \time 7/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 7/8 {
                        % [cello_string_staff measure 4] %! COMMENT_MEASURE_NUMBERS
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
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    % [cello_string_staff measure 5] %! COMMENT_MEASURE_NUMBERS
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
                }   % measure
                {   % measure
                    \time 4/4
                    % [cello_string_staff measure 6] %! COMMENT_MEASURE_NUMBERS
                    \once \override Glissando.style = #'line
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
                    ~
                    \glissando
                }   % measure
                {   % measure
                    \time 7/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 14/15 {
                        % [cello_string_staff measure 18] %! COMMENT_MEASURE_NUMBERS
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
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    % [cello_string_staff measure 19] %! COMMENT_MEASURE_NUMBERS
                    \once \override Glissando.style = #'line
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
                    c'4.
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
                }   % measure
                {   % measure
                    \time 5/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 20/21 {
                        % [cello_string_staff measure 22] %! COMMENT_MEASURE_NUMBERS
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
                        c'16
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
                    r2..
                }   % measure
                {   % measure
                    \time 3/4
                    % [cello_bow_staff measure 8] %! COMMENT_MEASURE_NUMBERS
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
                    r1
                }   % measure
                {   % measure
                    \time 6/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 12/13 {
                        % [cello_bow_staff measure 12] %! COMMENT_MEASURE_NUMBERS
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
                        d''''4
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
                        d''''8
                        ^\downbow
                        [
                        \glissando
                        \set stemLeftBeamCount = 2
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
                        d''''16
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
                        d''''8
                        ^\downbow
                        \glissando
                        \set stemLeftBeamCount = 1
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
                        d''''16
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
                        d''''16
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
                        d''''16
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
                        d''''16
                        ]
                    }
                }   % measure
                {   % measure
                    \time 5/8
                    % [cello_bow_staff measure 13] %! COMMENT_MEASURE_NUMBERS
                    r2
                    r8
                }   % measure
                {   % measure
                    \time 4/4
                    % [cello_bow_staff measure 14] %! COMMENT_MEASURE_NUMBERS
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
                    d''''4.
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
                    d''''8
                    [
                    \glissando
                    \set stemLeftBeamCount = 2
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
                    d''''16
                    ^ \parenthesize \downbow
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
                    d''''8
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 1
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
                    d''''16
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
                    d''''16
                    ^\upbow
                    \glissando
                    \set stemLeftBeamCount = 2
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
                    d''''16
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
                    d''''8
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
                {   % measure
                    \time 5/4
                    % [cello_bow_staff measure 16] %! COMMENT_MEASURE_NUMBERS
                    r1
                    r4
                }   % measure
                {   % measure
                    \time 4/4
                    % [cello_bow_staff measure 17] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
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
                    [
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
                    \time 7/8
                    % [cello_bow_staff measure 18] %! COMMENT_MEASURE_NUMBERS
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
                    \time 4/4
                    \times 8/10 {
                        % [cello_bow_staff measure 19] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
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
                    r2.
                }   % measure
                {   % measure
                    \time 7/8
                    % [cello_bow_staff measure 21] %! COMMENT_MEASURE_NUMBERS
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
                    \time 4/4
                    % [cello_bow_staff measure 23] %! COMMENT_MEASURE_NUMBERS
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
                    \ff
                    [
                    \>
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \p
                    \<
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \fff
                    \>
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \f
                    \>
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
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
                    \p
                    ]
                }   % measure
                {   % measure
                    \time 3/4
                    % [cello_beam_staff measure 2] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r2.
                }   % measure
                {   % measure
                    \time 4/4
                    \times 16/17 {
                        % [cello_beam_staff measure 3] %! COMMENT_MEASURE_NUMBERS
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        d''''16
                        \f
                        [
                        \>
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \mf
                        \<
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \ff
                        \>
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \mp
                        \<
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \fff
                        \>
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
                        \f
                        \>
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
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
                        \mf
                        ]
                    }
                }   % measure
                {   % measure
                    \time 7/8
                    % [cello_beam_staff measure 7] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r2..
                }   % measure
                {   % measure
                    \time 3/4
                    % [cello_beam_staff measure 8] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
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
                        \f
                        [
                        \>
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \mf
                        \<
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \ff
                        \>
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
                    \mp
                    [
                    \<
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
                    \fff
                    \>
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
                    \f
                    \>
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
                    \mf
                    ]
                }   % measure
                {   % measure
                    \time 4/4
                    % [cello_beam_staff measure 11] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r1
                }   % measure
                {   % measure
                    \time 6/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 12/13 {
                        % [cello_beam_staff measure 12] %! COMMENT_MEASURE_NUMBERS
                        d''''4
                        - \tweak circled-tip ##t
                        \<
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        [
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        d''''16
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d''''8
                        \set stemLeftBeamCount = 1
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
                        \ff
                    }
                }   % measure
                {   % measure
                    \time 5/8
                    % [cello_beam_staff measure 13] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r2
                    \once \override Dots.transparent = ##t
                    r8
                }   % measure
                {   % measure
                    \time 4/4
                    % [cello_beam_staff measure 14] %! COMMENT_MEASURE_NUMBERS
                    d''''4.
                    \ff
                    \>
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    d''''8
                    [
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 1
                    d''''16
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    d''''8
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 2
                    d''''16
                    \p
                    \<
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 1
                    d''''16
                    \fff
                    \>
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 0
                    d''''8
                    ]
                }   % measure
                {   % measure
                    \time 3/4
                    % [cello_beam_staff measure 15] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 2
                    d''''16
                    \f
                    [
                    \>
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
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
                    \p
                    ]
                }   % measure
                {   % measure
                    \time 5/4
                    % [cello_beam_staff measure 16] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r1
                    \once \override Dots.transparent = ##t
                    r4
                }   % measure
                {   % measure
                    \time 4/4
                    % [cello_beam_staff measure 17] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 3
                    d''''32
                    \f
                    [
                    \>
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
                    \mf
                    \<
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
                    \ff
                    \>
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \set stemLeftBeamCount = 3
                    \set stemRightBeamCount = 3
                    d''''32
                    \mp
                    \<
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
                    \fff
                    \>
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
                    \f
                    \>
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
                        \mf
                        ]
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    % [cello_beam_staff measure 20] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r2.
                }   % measure
                {   % measure
                    \time 7/8
                    % [cello_beam_staff measure 21] %! COMMENT_MEASURE_NUMBERS
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 2
                    d''''16
                    \f
                    [
                    \>
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \mf
                    \<
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \ff
                    \>
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    d''''16
                    \mp
                    \<
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
                        \fff
                        \>
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \f
                        \>
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
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
                        \mf
                        ]
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    % [cello_beam_staff measure 23] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r1
                }   % measure
            }
            \context Staff = "cello_lh_staff"
            {
                {   % measure
                    \time 4/4
                    % [cello_lh_staff measure 1] %! COMMENT_MEASURE_NUMBERS
                    \clef "bass"
                    eqf1
                }   % measure
                {   % measure
                    \time 3/4
                    % [cello_lh_staff measure 2] %! COMMENT_MEASURE_NUMBERS
                    r2.
                }   % measure
                {   % measure
                    \time 4/4
                    % [cello_lh_staff measure 3] %! COMMENT_MEASURE_NUMBERS
                    e1
                }   % measure
                {   % measure
                    \time 7/8
                    % [cello_lh_staff measure 4] %! COMMENT_MEASURE_NUMBERS
                    eqf2..
                }   % measure
                {   % measure
                    \time 3/4
                    % [cello_lh_staff measure 5] %! COMMENT_MEASURE_NUMBERS
                    e2.
                }   % measure
                {   % measure
                    \time 4/4
                    % [cello_lh_staff measure 6] %! COMMENT_MEASURE_NUMBERS
                    eqs1
                }   % measure
                {   % measure
                    \time 7/8
                    % [cello_lh_staff measure 7] %! COMMENT_MEASURE_NUMBERS
                    r2..
                }   % measure
                {   % measure
                    \time 3/4
                    % [cello_lh_staff measure 8] %! COMMENT_MEASURE_NUMBERS
                    r2.
                }   % measure
                {   % measure
                    \time 5/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 10/11 {
                        % [cello_lh_staff measure 9] %! COMMENT_MEASURE_NUMBERS
                        cqs4
                        ~
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        cqs16
                        [
                        ]
                        cs4.
                    }
                }   % measure
                {   % measure
                    \time 5/4
                    % [cello_lh_staff measure 10] %! COMMENT_MEASURE_NUMBERS
                    cqs2
                    c4.
                    bqs,4
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 0
                    c8
                    [
                    ]
                }   % measure
                {   % measure
                    \time 4/4
                    % [cello_lh_staff measure 11] %! COMMENT_MEASURE_NUMBERS
                    r1
                }   % measure
                {   % measure
                    \time 6/8
                    % [cello_lh_staff measure 12] %! COMMENT_MEASURE_NUMBERS
                    aqf,2.
                }   % measure
                {   % measure
                    \time 5/8
                    % [cello_lh_staff measure 13] %! COMMENT_MEASURE_NUMBERS
                    r2
                    r8
                }   % measure
                {   % measure
                    \time 4/4
                    % [cello_lh_staff measure 14] %! COMMENT_MEASURE_NUMBERS
                    af,1
                }   % measure
                {   % measure
                    \time 3/4
                    % [cello_lh_staff measure 15] %! COMMENT_MEASURE_NUMBERS
                    bqs,2.
                }   % measure
                {   % measure
                    \time 5/4
                    % [cello_lh_staff measure 16] %! COMMENT_MEASURE_NUMBERS
                    r1
                    r4
                }   % measure
                {   % measure
                    \time 4/4
                    % [cello_lh_staff measure 17] %! COMMENT_MEASURE_NUMBERS
                    c1
                }   % measure
                {   % measure
                    \time 7/8
                    % [cello_lh_staff measure 18] %! COMMENT_MEASURE_NUMBERS
                    cqs2..
                }   % measure
                {   % measure
                    \time 4/4
                    % [cello_lh_staff measure 19] %! COMMENT_MEASURE_NUMBERS
                    c1
                }   % measure
                {   % measure
                    \time 3/4
                    % [cello_lh_staff measure 20] %! COMMENT_MEASURE_NUMBERS
                    r2.
                }   % measure
                {   % measure
                    \time 7/8
                    % [cello_lh_staff measure 21] %! COMMENT_MEASURE_NUMBERS
                    eqs2..
                }   % measure
                {   % measure
                    \time 5/4
                    % [cello_lh_staff measure 22] %! COMMENT_MEASURE_NUMBERS
                    e1
                    ~
                    e4
                }   % measure
                {   % measure
                    \time 4/4
                    % [cello_lh_staff measure 23] %! COMMENT_MEASURE_NUMBERS
                    r1
                }   % measure
            }
        >>
    >>
}