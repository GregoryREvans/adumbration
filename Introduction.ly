\version "2.19.82"
\language "english"

\include "ekmel.ily"
\include "stylesheet.ily"

#(set-global-staff-size 15)

\header {
    tagline = ##f
    composer = #"Gregory Rowland Evans"
    title = \markup {
        \fontsize
            #5
            \bold
                "String Trio no.2"
        }
    subtitle = #"for violin, viola, and violoncello"
}

\layout {}

\paper {
    top-margin = #20
    bottom-margin = #20
    system-count = #5
}

\score {
    \new Score
    <<
        \new TimeSignatureContext
        {
            {   % measure
                \time 4/4
                r1
            }   % measure
            {   % measure
                \time 3/4
                r2.
            }   % measure
            {   % measure
                \time 4/4
                r1
            }   % measure
            {   % measure
                \time 7/8
                r2..
            }   % measure
            {   % measure
                \time 3/4
                r2.
            }   % measure
            {   % measure
                \time 4/4
                r1
            }   % measure
            {   % measure
                \time 7/8
                r2..
            }   % measure
            {   % measure
                \time 3/4
                r2.
            }   % measure
            {   % measure
                \time 5/8
                r2
                r8
            }   % measure
            {   % measure
                \time 5/4
                r1
                r4
            }   % measure
            {   % measure
                \time 4/4
                r1
            }   % measure
            {   % measure
                \time 6/8
                r2.
            }   % measure
            {   % measure
                \time 5/8
                r2
                r8
            }   % measure
            {   % measure
                \time 4/4
                r1
            }   % measure
            {   % measure
                \time 3/4
                r2.
            }   % measure
            {   % measure
                \time 5/4
                r1
                r4
            }   % measure
            {   % measure
                \time 4/4
                r1
            }   % measure
            {   % measure
                \time 7/8
                r2..
            }   % measure
            {   % measure
                \time 4/4
                r1
            }   % measure
            {   % measure
                \time 3/4
                r2.
            }   % measure
            {   % measure
                \time 7/8
                r2..
            }   % measure
            {   % measure
                \time 5/4
                r1
                r4
            }   % measure
            {   % measure
                \time 4/4
                r1
            }   % measure
        }
        \new StaffGroup
        <<
            \context StringStaff = "violin_string_staff"
            {
                {   % measure
                    \time 4/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 1/1 {
                        \once \override Glissando.style = #'line
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
                        -\tenuto
                        ^\downbow
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                        ^\upbow
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
                        ^\downbow
                        ~
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/7 {
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
                        ^\upbow
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
                        ^\downbow
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
                        ^\upbow
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
                        ^\downbow
                        ~
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 1/1 {
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
                        ^\upbow
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
                    \time 7/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 7/8 {
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 3/4
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
                    r2.
                    ^\upbow
                    \glissando
                }   % measure
                {   % measure
                    \time 4/4
                    \times 8/9 {
                        \once \override Glissando.style = #'line
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
                        -\tenuto
                        ^\downbow
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                        ^\upbow
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
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 1/1 {
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    r2.
                    ^\downbow
                    \glissando
                }   % measure
                {   % measure
                    \time 5/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/6 {
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
                        \fff
                        -\tenuto
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
                        ^\upbow
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
                        -\tenuto
                        ^\downbow
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                        ^\upbow
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
                        ^\downbow
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    \times 8/9 {
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
                        ^\upbow
                        ~
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
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
                        ^\downbow
                        [
                        ]
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 6/8
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    r2.
                    ^\upbow
                    \glissando
                }   % measure
                {   % measure
                    \time 5/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/9 {
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
                        -\tenuto
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 1/1 {
                        \once \override Glissando.style = #'line
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
                        ^\downbow
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
                        ^\upbow
                        ~
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
                        \!
                        [
                        ]
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 1/1 {
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
                        -\tenuto
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
                        \once \override Glissando.style = #'line
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
                        ^\upbow
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
                        c'16
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 5/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 20/21 {
                        \once \override Glissando.style = #'line
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
                        ^ \parenthesize \upbow
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
                        ^\upbow
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
                        ^\downbow
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
                        ^\upbow
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
                        ^\downbow
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
                        ^\upbow
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
                        ^\downbow
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    r1
                    ^\upbow
                    \glissando
                }   % measure
                {   % measure
                    \time 7/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 14/15 {
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
                        -\tenuto
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                        ^\downbow
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
                        ^\upbow
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
                        ^\downbow
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
                        \!
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 1/1 {
                        \once \override Glissando.style = #'line
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
                        -\tenuto
                        ^\upbow
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                        ^ \parenthesize \upbow
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
                        ^\downbow
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
                        ^\upbow
                        ~
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 12/13 {
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
                        ^\downbow
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
                        ^\upbow
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
                        ^\downbow
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
                        ^\upbow
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
                        ^\downbow
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
                        ^\upbow
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 7/8
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
                    r2..
                    \glissando
                }   % measure
                {   % measure
                    \time 5/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 20/21 {
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
                        -\tenuto
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
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
                        ^\upbow
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
                        ^\downbow
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
                        ^ \parenthesize \upbow
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
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 1/1 {
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
                        ^\upbow
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
                        ^\downbow
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
                        ^\upbow
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
                        ^\downbow
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
                        ^\upbow
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
                        \!
                    }
                }   % measure
            }
            \context BowStaff = "violin_bow_staff"
            {
                {   % measure
                    \time 4/4
                    \times 16/17 {
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
                        -\tenuto
                        ^\downbow
                        [
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 12/12 {
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
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 8/8 {
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
                    }
                }   % measure
                {   % measure
                    \time 7/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 14/15 {
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    r2.
                    ^\upbow
                    \glissando
                }   % measure
                {   % measure
                    \time 4/4
                    \times 8/9 {
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
                        -\tenuto
                        ^\downbow
                        [
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    r2.
                    ^\upbow
                    \glissando
                }   % measure
                {   % measure
                    \time 5/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 10/11 {
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
                        -\tenuto
                        [
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                        \!
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 5/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 20/21 {
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
                        -\tenuto
                        ^\downbow
                        [
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 32/32 {
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 6/8
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    r2.
                    ^\upbow
                    \glissando
                }   % measure
                {   % measure
                    \time 5/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 10/13 {
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
                        -\tenuto
                        ^\downbow
                        [
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                        \!
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 1/1 {
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        -\tenuto
                        ^\downbow
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
                        \once \override Glissando.style = #'line
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
                    }
                }   % measure
                {   % measure
                    \time 5/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 20/21 {
                        \once \override Glissando.style = #'line
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    r1
                    ^\downbow
                    \glissando
                }   % measure
                {   % measure
                    \time 7/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 1/1 {
                        \once \override Glissando.style = #'line
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
                        -\tenuto
                        ^\upbow
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
                        \once \override Glissando.style = #'line
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
                        \!
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 16/16 {
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
                        -\tenuto
                        ^\upbow
                        [
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
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
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 12/13 {
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 7/8
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
                    r2..
                    ^\downbow
                    \glissando
                }   % measure
                {   % measure
                    \time 5/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 20/20 {
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
                        -\tenuto
                        ^\upbow
                        [
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    \times 8/10 {
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
                        \!
                    }
                }   % measure
            }
            \context BeamStaff = "violin_beam_staff"
            {
                {   % measure
                    \time 4/4
                    \times 16/17 {
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        d''''16
                        -\tenuto
                        [
                        - \tweak circled-tip ##t
                        \>
                        \mp
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
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
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 12/12 {
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
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 8/8 {
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
                    \time 7/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 14/15 {
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    r2.
                }   % measure
                {   % measure
                    \time 4/4
                    \times 8/9 {
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 1
                        d''''8
                        -\tenuto
                        [
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    r2.
                }   % measure
                {   % measure
                    \time 5/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 10/11 {
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        d''''16
                        -\tenuto
                        [
                        - \tweak circled-tip ##t
                        \>
                        \mp
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 5/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 20/21 {
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        d''''16
                        -\tenuto
                        [
                        - \tweak circled-tip ##t
                        \>
                        \mp
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
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
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 32/32 {
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 6/8
                    r2.
                }   % measure
                {   % measure
                    \time 5/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 10/13 {
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        d''''16
                        -\tenuto
                        [
                        - \tweak circled-tip ##t
                        \>
                        \mp
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 1/1 {
                        d''''16
                        -\tenuto
                        - \tweak circled-tip ##t
                        \>
                        \mp
                        d''''8
                        d''''16
                        d''''4.
                        d''''8
                    }
                }   % measure
                {   % measure
                    \time 5/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 20/21 {
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    r1
                }   % measure
                {   % measure
                    \time 7/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 1/1 {
                        d''''16
                        -\tenuto
                        - \tweak circled-tip ##t
                        \>
                        \mp
                        d''''8.
                        d''''16
                        d''''16
                        d''''8
                        d''''16
                        d''''8
                        d''''16
                        d''''8
                        \!
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 16/16 {
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        d''''16
                        -\tenuto
                        [
                        - \tweak circled-tip ##t
                        \>
                        \mp
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
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
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 12/13 {
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 7/8
                    r2..
                }   % measure
                {   % measure
                    \time 5/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 20/20 {
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        d''''16
                        -\tenuto
                        [
                        - \tweak circled-tip ##t
                        \>
                        \mp
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
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
                        \!
                    }
                }   % measure
            }
            \new Staff
            {
                {   % measure
                    \time 4/4
                    \tempo 2=60
                    c'1
                    \ppp
                    -\tenuto
                }   % measure
                {   % measure
                    \time 3/4
                    c'2.
                }   % measure
                {   % measure
                    \time 4/4
                    c'1
                }   % measure
                {   % measure
                    \time 7/8
                    c'2..
                }   % measure
                {   % measure
                    \time 3/4
                    r2.
                }   % measure
                {   % measure
                    \time 4/4
                    \times 4/5 {
                        ef'2
                        -\tenuto
                        - \tweak circled-tip ##t
                        \>
                        \mp
                        dqs'2.
                    }
                }   % measure
                {   % measure
                    \time 7/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 1/1 {
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
                        \!
                        [
                        ]
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    r2.
                }   % measure
                {   % measure
                    \time 5/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 1/1 {
                        d'4.
                        \fff
                        -\tenuto
                        d'4
                    }
                }   % measure
                {   % measure
                    \time 5/4
                    eqs'1
                    \fff
                    -\tenuto
                    ~
                    eqs'4
                }   % measure
                {   % measure
                    \time 4/4
                    e'1
                }   % measure
                {   % measure
                    \time 6/8
                    r2.
                }   % measure
                {   % measure
                    \time 5/8
                    eqs'2
                    \fff
                    -\tenuto
                    ~
                    eqs'8
                }   % measure
                {   % measure
                    \time 4/4
                    e'1
                }   % measure
                {   % measure
                    \time 3/4
                    gqs'2.
                    \fff
                    -\tenuto
                }   % measure
                {   % measure
                    \time 5/4
                    g'1
                    ~
                    g'4
                }   % measure
                {   % measure
                    \time 4/4
                    r1
                }   % measure
                {   % measure
                    \time 7/8
                    gqs'2..
                    \ppp
                    -\tenuto
                }   % measure
                {   % measure
                    \time 4/4
                    b'1
                    \fff
                    -\tenuto
                }   % measure
                {   % measure
                    \time 3/4
                    b'2.
                }   % measure
                {   % measure
                    \time 7/8
                    r2..
                }   % measure
                {   % measure
                    \time 5/4
                    b'1
                    \fff
                    -\tenuto
                    ~
                    b'4
                }   % measure
                {   % measure
                    \time 4/4
                    bqs'1
                }   % measure
            }
        >>
        \new TimeSignatureContext
        {
            {   % measure
                \time 4/4
                r1
            }   % measure
            {   % measure
                \time 3/4
                r2.
            }   % measure
            {   % measure
                \time 4/4
                r1
            }   % measure
            {   % measure
                \time 7/8
                r2..
            }   % measure
            {   % measure
                \time 3/4
                r2.
            }   % measure
            {   % measure
                \time 4/4
                r1
            }   % measure
            {   % measure
                \time 7/8
                r2..
            }   % measure
            {   % measure
                \time 3/4
                r2.
            }   % measure
            {   % measure
                \time 5/8
                r2
                r8
            }   % measure
            {   % measure
                \time 5/4
                r1
                r4
            }   % measure
            {   % measure
                \time 4/4
                r1
            }   % measure
            {   % measure
                \time 6/8
                r2.
            }   % measure
            {   % measure
                \time 5/8
                r2
                r8
            }   % measure
            {   % measure
                \time 4/4
                r1
            }   % measure
            {   % measure
                \time 3/4
                r2.
            }   % measure
            {   % measure
                \time 5/4
                r1
                r4
            }   % measure
            {   % measure
                \time 4/4
                r1
            }   % measure
            {   % measure
                \time 7/8
                r2..
            }   % measure
            {   % measure
                \time 4/4
                r1
            }   % measure
            {   % measure
                \time 3/4
                r2.
            }   % measure
            {   % measure
                \time 7/8
                r2..
            }   % measure
            {   % measure
                \time 5/4
                r1
                r4
            }   % measure
            {   % measure
                \time 4/4
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
                        \once \override Glissando.style = #'line
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
                        -\tenuto
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
                        \once \override Glissando.style = #'line
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
                        \once \override Glissando.style = #'line
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
                        ^ \parenthesize \upbow
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
                        ^\downbow
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
                        \once \override Glissando.style = #'line
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
                        ^\upbow
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
                        ^\downbow
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
                        c'2
                        ^\downbow
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 7/8
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
                    r2..
                    \glissando
                }   % measure
                {   % measure
                    \time 3/4
                    \times 2/3 {
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
                        -\tenuto
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
                        \once \override Glissando.style = #'line
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
                        ^\upbow
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
                        ^\downbow
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
                        ^\upbow
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
                        ^\downbow
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
                        ^\upbow
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
                        ^\downbow
                        \!
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 7/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 1/1 {
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
                        -\tenuto
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
                        \once \override Glissando.style = #'line
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
                        c'4.
                        \!
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    r2.
                    \glissando
                }   % measure
                {   % measure
                    \time 5/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 10/11 {
                        \once \override Glissando.style = #'line
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
                        -\tenuto
                        ^ \parenthesize \upbow
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                        ^\downbow
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
                        ^\upbow
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
                        ^\downbow
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
                        ^\upbow
                        \!
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 5/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 1/1 {
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
                                        0
                                        1
                            }
                        c'16
                        -\tenuto
                        ^\downbow
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                        ^\upbow
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
                        ^\downbow
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
                        ^\upbow
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
                        ^\downbow
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
                        ^\upbow
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 4/4
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
                    r1
                    \glissando
                }   % measure
                {   % measure
                    \time 6/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 1/1 {
                        \once \override Glissando.style = #'line
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
                        -\tenuto
                        ^\upbow
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                        ^ \parenthesize \upbow
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
                        ^\downbow
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
                    \time 5/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 10/11 {
                        \once \override Glissando.style = #'line
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
                        ^\downbow
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
                        ^\upbow
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
                        ^\downbow
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
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 1/1 {
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
                        ^\upbow
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
                        ^\downbow
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
                        ^\upbow
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
                        ^\downbow
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
                        ^\upbow
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
                        ^\downbow
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
                        \!
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 1/1 {
                        \once \override Glissando.style = #'line
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
                        -\tenuto
                        ^\upbow
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                        ^ \parenthesize \upbow
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 5/4
                    \once \override NoteHead.Y-offset = 1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    4
                                    5
                        }
                    r1
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    r4
                    ^\upbow
                    \glissando
                }   % measure
                {   % measure
                    \time 4/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 1/1 {
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
                        -\tenuto
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
                        \once \override Glissando.style = #'line
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
                        ^\upbow
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
                        ^\downbow
                        ~
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 7/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 14/15 {
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
                        ^\upbow
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
                        ^\downbow
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
                        ^\upbow
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
                        ^\downbow
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
                        ^\upbow
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    r1
                    \glissando
                }   % measure
                {   % measure
                    \time 3/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 1/1 {
                        \once \override Glissando.style = #'line
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
                        -\tenuto
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
                        \once \override Glissando.style = #'line
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
                        ^ \parenthesize \upbow
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
                        ^\downbow
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
                        ^\upbow
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
                        ^\downbow
                        ~
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 7/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 14/15 {
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
                        c'4
                        ^\downbow
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
                        ^\upbow
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
                        ^\downbow
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 5/4
                    \once \override NoteHead.Y-offset = -1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    5
                        }
                    r1
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
                    r4
                    ^\upbow
                    \glissando
                }   % measure
                {   % measure
                    \time 4/4
                    \times 16/17 {
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
                        -\tenuto
                        ^\downbow
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                        ^\upbow
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
                        \!
                    }
                }   % measure
            }
            \context BowStaff = "viola_bow_staff"
            {
                {   % measure
                    \time 4/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 8/8 {
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
                        -\tenuto
                        ^\downbow
                        [
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 12/13 {
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 7/8
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    r2..
                    ^\downbow
                    \glissando
                }   % measure
                {   % measure
                    \time 3/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/8 {
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
                        -\tenuto
                        ^\upbow
                        [
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                        \!
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 7/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 14/14 {
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
                        -\tenuto
                        ^ \parenthesize \upbow
                        [
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 3/4
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
                    r2.
                    ^\upbow
                    \glissando
                }   % measure
                {   % measure
                    \time 5/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 20/20 {
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
                        -\tenuto
                        ^\downbow
                        [
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                        \!
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 5/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 10/10 {
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
                        -\tenuto
                        ^\upbow
                        [
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 4/4
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
                    r1
                    \glissando
                }   % measure
                {   % measure
                    \time 6/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 12/12 {
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
                        -\tenuto
                        [
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                    }
                }   % measure
                {   % measure
                    \time 5/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/4 {
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
                        \!
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 12/12 {
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
                        -\tenuto
                        ^\downbow
                        [
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 5/4
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    r1
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    r4
                    ^\downbow
                    \glissando
                }   % measure
                {   % measure
                    \time 4/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 8/8 {
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
                        -\tenuto
                        ^\upbow
                        [
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                    }
                }   % measure
                {   % measure
                    \time 7/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 14/14 {
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 4/4
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
                    r1
                    ^\upbow
                    \glissando
                }   % measure
                {   % measure
                    \time 3/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 12/12 {
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
                        -\tenuto
                        ^\downbow
                        [
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                    }
                }   % measure
                {   % measure
                    \time 7/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 14/15 {
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 5/4
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    r1
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    r4
                    ^\upbow
                    \glissando
                }   % measure
                {   % measure
                    \time 4/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 16/16 {
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
                        -\tenuto
                        ^\downbow
                        [
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                        \!
                    }
                }   % measure
            }
            \context BeamStaff = "viola_beam_staff"
            {
                {   % measure
                    \time 4/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 8/8 {
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 1
                        d''''8
                        -\tenuto
                        [
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 12/13 {
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 7/8
                    r2..
                }   % measure
                {   % measure
                    \time 3/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/8 {
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 1
                        d''''8
                        -\tenuto
                        [
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 7/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 14/14 {
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        d''''16
                        -\tenuto
                        [
                        - \tweak circled-tip ##t
                        \>
                        \mp
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    r2.
                }   % measure
                {   % measure
                    \time 5/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 20/20 {
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 3
                        d''''32
                        -\tenuto
                        [
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 5/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 10/10 {
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 1
                        d''''8
                        -\tenuto
                        [
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    r1
                }   % measure
                {   % measure
                    \time 6/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 12/12 {
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        d''''16
                        -\tenuto
                        [
                        - \tweak circled-tip ##t
                        \>
                        \mp
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
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
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/4 {
                        d''''4
                        d''''4
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    \times 8/10 {
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 12/12 {
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        d''''16
                        -\tenuto
                        [
                        - \tweak circled-tip ##t
                        \>
                        \mp
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 5/4
                    r1
                    r4
                }   % measure
                {   % measure
                    \time 4/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 8/8 {
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 1
                        d''''8
                        -\tenuto
                        [
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                    \times 14/14 {
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    r1
                }   % measure
                {   % measure
                    \time 3/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 12/12 {
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        d''''16
                        -\tenuto
                        [
                        - \tweak circled-tip ##t
                        \>
                        \mp
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
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
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 14/15 {
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 5/4
                    r1
                    r4
                }   % measure
                {   % measure
                    \time 4/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 16/16 {
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        d''''16
                        -\tenuto
                        [
                        - \tweak circled-tip ##t
                        \>
                        \mp
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
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
                        \!
                    }
                }   % measure
            }
            \new Staff
            {
                {   % measure
                    \time 4/4
                    \clef "alto"
                    fs1
                    \fff
                    -\tenuto
                }   % measure
                {   % measure
                    \time 3/4
                    gqf2.
                }   % measure
                {   % measure
                    \time 4/4
                    fs1
                }   % measure
                {   % measure
                    \time 7/8
                    r2..
                }   % measure
                {   % measure
                    \time 3/4
                    fs2.
                    \fff
                    -\tenuto
                }   % measure
                {   % measure
                    \time 4/4
                    fs1
                }   % measure
                {   % measure
                    \time 7/8
                    gqs2..
                    \ppp
                    -\tenuto
                }   % measure
                {   % measure
                    \time 3/4
                    r2.
                }   % measure
                {   % measure
                    \time 5/8
                    af2
                    \fff
                    -\tenuto
                    ~
                    af8
                }   % measure
                {   % measure
                    \time 5/4
                    bf1
                    \fff
                    -\tenuto
                    ~
                    bf4
                }   % measure
                {   % measure
                    \time 4/4
                    r1
                }   % measure
                {   % measure
                    \time 6/8
                    bf2.
                    \ppp
                    -\tenuto
                }   % measure
                {   % measure
                    \time 5/8
                    bf2
                    ~
                    bf8
                }   % measure
                {   % measure
                    \time 4/4
                    bf1
                }   % measure
                {   % measure
                    \time 3/4
                    eqf2.
                    \ppp
                    -\tenuto
                }   % measure
                {   % measure
                    \time 5/4
                    r1
                    r4
                }   % measure
                {   % measure
                    \time 4/4
                    e1
                    \fff
                    -\tenuto
                }   % measure
                {   % measure
                    \time 7/8
                    eqs2..
                }   % measure
                {   % measure
                    \time 4/4
                    r1
                }   % measure
                {   % measure
                    \time 3/4
                    fs2.
                    \fff
                    -\tenuto
                }   % measure
                {   % measure
                    \time 7/8
                    fs2..
                }   % measure
                {   % measure
                    \time 5/4
                    r1
                    r4
                }   % measure
                {   % measure
                    \time 4/4
                    fs1
                    \ppp
                    -\tenuto
                }   % measure
            }
        >>
        \new TimeSignatureContext
        {
            {   % measure
                \time 4/4
                r1
            }   % measure
            {   % measure
                \time 3/4
                r2.
            }   % measure
            {   % measure
                \time 4/4
                r1
            }   % measure
            {   % measure
                \time 7/8
                r2..
            }   % measure
            {   % measure
                \time 3/4
                r2.
            }   % measure
            {   % measure
                \time 4/4
                r1
            }   % measure
            {   % measure
                \time 7/8
                r2..
            }   % measure
            {   % measure
                \time 3/4
                r2.
            }   % measure
            {   % measure
                \time 5/8
                r2
                r8
            }   % measure
            {   % measure
                \time 5/4
                r1
                r4
            }   % measure
            {   % measure
                \time 4/4
                r1
            }   % measure
            {   % measure
                \time 6/8
                r2.
            }   % measure
            {   % measure
                \time 5/8
                r2
                r8
            }   % measure
            {   % measure
                \time 4/4
                r1
            }   % measure
            {   % measure
                \time 3/4
                r2.
            }   % measure
            {   % measure
                \time 5/4
                r1
                r4
            }   % measure
            {   % measure
                \time 4/4
                r1
            }   % measure
            {   % measure
                \time 7/8
                r2..
            }   % measure
            {   % measure
                \time 4/4
                r1
            }   % measure
            {   % measure
                \time 3/4
                r2.
            }   % measure
            {   % measure
                \time 7/8
                r2..
            }   % measure
            {   % measure
                \time 5/4
                r1
                r4
            }   % measure
            {   % measure
                \time 4/4
                r1
            }   % measure
        }
        \new StaffGroup
        <<
            \context StringStaff = "cello_string_staff"
            {
                {   % measure
                    \time 4/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 1/1 {
                        \once \override Glissando.style = #'line
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
                        -\tenuto
                        ^\downbow
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                        ^\upbow
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 3/4
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
                    r2.
                    \glissando
                }   % measure
                {   % measure
                    \time 4/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 1/1 {
                        \once \override Glissando.style = #'line
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
                        -\tenuto
                        ^\upbow
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                    }
                }   % measure
                {   % measure
                    \time 7/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 7/8 {
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
                        ^\downbow
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
                        ^\upbow
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 1/1 {
                        \once \override Glissando.style = #'line
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
                        ^\downbow
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
                        ^\upbow
                        ~
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 1/1 {
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
                        ^\downbow
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
                        ^\upbow
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
                        ^\downbow
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 7/8
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    r2..
                }   % measure
                {   % measure
                    \time 3/4
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
                    r2.
                    \glissando
                }   % measure
                {   % measure
                    \time 5/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 10/11 {
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
                        -\tenuto
                        ^\downbow
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
                        \once \override Glissando.style = #'line
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
                        ^ \parenthesize \upbow
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
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 1/1 {
                        \once \override Glissando.style = #'line
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
                        ^\downbow
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
                        ^\upbow
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
                        ^\downbow
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
                        ^\upbow
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 4/4
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
                    r1
                    ^\upbow
                    \glissando
                }   % measure
                {   % measure
                    \time 6/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 1/1 {
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
                        -\tenuto
                        ^\downbow
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                        ^\upbow
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
                        ^\downbow
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 5/8
                    \once \override NoteHead.Y-offset = 1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    4
                                    5
                        }
                    r2
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
                    r8
                    ^\downbow
                    \glissando
                }   % measure
                {   % measure
                    \time 4/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 1/1 {
                        \once \override Glissando.style = #'line
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
                        -\tenuto
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
                        \once \override Glissando.style = #'line
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
                        ^ \parenthesize \upbow
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
                        \!
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 1/1 {
                        \once \override Glissando.style = #'line
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
                        -\tenuto
                        ^\upbow
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                        ^\downbow
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
                        ^\upbow
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 5/4
                    \once \override NoteHead.Y-offset = -0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    2
                                    5
                        }
                    r1
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    r4
                    ^\downbow
                    \glissando
                }   % measure
                {   % measure
                    \time 4/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 1/1 {
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
                        -\tenuto
                        ^\upbow
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
                        \once \override Glissando.style = #'line
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
                        ^\upbow
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
                        ^\downbow
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
                        ^\upbow
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
                        ^\downbow
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
                        ^\upbow
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
                        ^\downbow
                        ~
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 7/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 14/15 {
                        \once \override Glissando.style = #'line
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
                        ^ \parenthesize \upbow
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
                        ^\downbow
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
                        ^\upbow
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
                        ^\downbow
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 1/1 {
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
                        ^\upbow
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
                        ^\downbow
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
                        ^\upbow
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 3/4
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
                    r2.
                    ^\upbow
                    \glissando
                }   % measure
                {   % measure
                    \time 7/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 1/1 {
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
                        -\tenuto
                        ^\downbow
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                        ^\upbow
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
                        ^\downbow
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
                        ^\upbow
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
                        ^\downbow
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
                    }
                }   % measure
                {   % measure
                    \time 5/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 20/21 {
                        \once \override Glissando.style = #'line
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
                        ^ \parenthesize \upbow
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
                        ^\upbow
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
                        ^\downbow
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
                        ^\upbow
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    \once \override NoteHead.Y-offset = 0.4
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    5
                        }
                    r1
                }   % measure
            }
            \context BowStaff = "cello_bow_staff"
            {
                {   % measure
                    \time 4/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 16/16 {
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
                        -\tenuto
                        ^\downbow
                        [
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    r2.
                    ^\downbow
                    \glissando
                }   % measure
                {   % measure
                    \time 4/4
                    \times 16/17 {
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
                        -\tenuto
                        [
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 14/14 {
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
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/8 {
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 7/8
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    1
                        }
                    r2..
                }   % measure
                {   % measure
                    \time 3/4
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    r2.
                    ^\downbow
                    \glissando
                }   % measure
                {   % measure
                    \time 5/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 10/11 {
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
                        -\tenuto
                        ^\upbow
                        [
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 40/40 {
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    r1
                    ^\downbow
                    \glissando
                }   % measure
                {   % measure
                    \time 6/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 12/13 {
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
                        -\tenuto
                        ^\upbow
                        [
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 5/8
                    \once \override NoteHead.Y-offset = -1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    1
                                    4
                        }
                    r2
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    r8
                    ^\downbow
                    \glissando
                }   % measure
                {   % measure
                    \time 4/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 16/16 {
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
                        -\tenuto
                        ^\upbow
                        [
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
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
                        \!
                        \glissando
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 12/12 {
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
                        -\tenuto
                        [
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 5/4
                    \once \override NoteHead.Y-offset = 1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    4
                        }
                    r1
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
                    r4
                    ^\downbow
                    \glissando
                }   % measure
                {   % measure
                    \time 4/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 32/32 {
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
                        -\tenuto
                        ^\upbow
                        [
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                    }
                }   % measure
                {   % measure
                    \time 7/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 14/14 {
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
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    \times 8/10 {
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    \once \override Glissando.style = #'line
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    1
                        }
                    r2.
                    ^\downbow
                    \glissando
                }   % measure
                {   % measure
                    \time 7/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 14/14 {
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
                        -\tenuto
                        ^\upbow
                        [
                        \glissando
                        - \tweak circled-tip ##t
                        \>
                        \mp
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \once \override Glissando.style = #'line
                        \once \override NoteHead.Y-offset = -2.0
                        \once \override NoteHead.stencil = #ly:text-interface::print
                        \once \override NoteHead.text = \markup {
                            \center-align
                                \vcenter
                                    \fraction
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
                    }
                }   % measure
                {   % measure
                    \time 5/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 20/21 {
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    \once \override NoteHead.Y-offset = 1.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    3
                                    4
                        }
                    r1
                }   % measure
            }
            \context BeamStaff = "cello_beam_staff"
            {
                {   % measure
                    \time 4/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 16/16 {
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        d''''16
                        -\tenuto
                        [
                        - \tweak circled-tip ##t
                        \>
                        \mp
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    r2.
                }   % measure
                {   % measure
                    \time 4/4
                    \times 16/17 {
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        d''''16
                        -\tenuto
                        [
                        - \tweak circled-tip ##t
                        \>
                        \mp
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
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
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 14/14 {
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
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/8 {
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 7/8
                    r2..
                }   % measure
                {   % measure
                    \time 3/4
                    r2.
                }   % measure
                {   % measure
                    \time 5/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 10/11 {
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        d''''16
                        -\tenuto
                        [
                        - \tweak circled-tip ##t
                        \>
                        \mp
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
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
                    \times 40/40 {
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    r1
                }   % measure
                {   % measure
                    \time 6/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 12/13 {
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        d''''16
                        -\tenuto
                        [
                        - \tweak circled-tip ##t
                        \>
                        \mp
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 5/8
                    r2
                    r8
                }   % measure
                {   % measure
                    \time 4/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 16/16 {
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        d''''16
                        -\tenuto
                        [
                        - \tweak circled-tip ##t
                        \>
                        \mp
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 12/12 {
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        d''''16
                        -\tenuto
                        [
                        - \tweak circled-tip ##t
                        \>
                        \mp
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 5/4
                    r1
                    r4
                }   % measure
                {   % measure
                    \time 4/4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 32/32 {
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 3
                        d''''32
                        -\tenuto
                        [
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                    }
                }   % measure
                {   % measure
                    \time 7/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 14/14 {
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
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    \times 8/10 {
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 3/4
                    r2.
                }   % measure
                {   % measure
                    \time 7/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 14/14 {
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        d''''16
                        -\tenuto
                        [
                        - \tweak circled-tip ##t
                        \>
                        \mp
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        d''''16
                        \set stemLeftBeamCount = 2
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
                        \!
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    r1
                }   % measure
            }
            \new Staff
            {
                {   % measure
                    \time 4/4
                    \clef "bass"
                    e1
                    \ppp
                    -\tenuto
                }   % measure
                {   % measure
                    \time 3/4
                    r2.
                }   % measure
                {   % measure
                    \time 4/4
                    e1
                    \ppp
                    -\tenuto
                }   % measure
                {   % measure
                    \time 7/8
                    e2..
                }   % measure
                {   % measure
                    \time 3/4
                    e2.
                }   % measure
                {   % measure
                    \time 4/4
                    e1
                }   % measure
                {   % measure
                    \time 7/8
                    r2..
                }   % measure
                {   % measure
                    \time 3/4
                    r2.
                }   % measure
                {   % measure
                    \time 5/8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 10/11 {
                        c4
                        -\tenuto
                        ~
                        - \tweak circled-tip ##t
                        \>
                        \mp
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
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 1/1 {
                        c2
                        c4.
                        c4
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        c8
                        \!
                        [
                        ]
                    }
                }   % measure
                {   % measure
                    \time 4/4
                    r1
                }   % measure
                {   % measure
                    \time 6/8
                    a,2.
                    \ppp
                    -\tenuto
                }   % measure
                {   % measure
                    \time 5/8
                    r2
                    r8
                }   % measure
                {   % measure
                    \time 4/4
                    aqf,1
                    \ppp
                    -\tenuto
                }   % measure
                {   % measure
                    \time 3/4
                    c2.
                    \ppp
                    -\tenuto
                }   % measure
                {   % measure
                    \time 5/4
                    r1
                    r4
                }   % measure
                {   % measure
                    \time 4/4
                    c1
                    \fff
                    -\tenuto
                }   % measure
                {   % measure
                    \time 7/8
                    c2..
                }   % measure
                {   % measure
                    \time 4/4
                    c1
                }   % measure
                {   % measure
                    \time 3/4
                    r2.
                }   % measure
                {   % measure
                    \time 7/8
                    eqs2..
                    \fff
                    -\tenuto
                }   % measure
                {   % measure
                    \time 5/4
                    e1
                    ~
                    e4
                }   % measure
                {   % measure
                    \time 4/4
                    r1
                }   % measure
            }
        >>
    >>
}