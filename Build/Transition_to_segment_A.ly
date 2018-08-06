
    \context Score = "Adumbration Score"
    <<
        \context TimeSignatureContext = "TimeSignatureContext1"
        {
            {   % measure
                \time 5/8
                % [TimeSignatureContext measure 1] %! COMMENT_MEASURE_NUMBERS
                r2
                r8
            }   % measure
        }
        \context StaffGroup = "violin"
        <<
            \context StringStaff = "violin_string_staff"
            {
                {   % measure
                    \time 5/8
                    % [violin_string_staff measure 1] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r8
                    \once \override Glissando.style = #'line
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
            }
            \context BowStaff = "violin_bow_staff"
            {
                {   % measure
                    \time 5/8
                    % [violin_bow_staff measure 1] %! COMMENT_MEASURE_NUMBERS
                    \set BowStaff.instrumentName =
                    \markup { Vln. }
                    \set BowStaff.shortInstrumentName =
                    \markup { Vln. }
                    r8
                    \once \override Glissando.style = #'dotted-line
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
                    c'4
                }   % measure
            }
            \context BeamStaff = "violin_beam_staff"
            {
                {   % measure
                    \time 5/8
                    % [violin_beam_staff measure 1] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r8
                    d''''4
                    d''''4
                }   % measure
            }
            \context Staff = "violin_lh_staff"
            {
                {   % measure
                    \time 5/8
                    % [violin_lh_staff measure 1] %! COMMENT_MEASURE_NUMBERS
                    r8
                    c'2
                }   % measure
            }
        >>
        \context TimeSignatureContext = "TimeSignatureContext2"
        {
            {   % measure
                \time 5/8
                % [TimeSignatureContext measure 1] %! COMMENT_MEASURE_NUMBERS
                r2
                r8
            }   % measure
        }
        \context StaffGroup = "viola"
        <<
            \context StringStaff = "viola_string_staff"
            {
                {   % measure
                    \time 5/8
                    % [viola_string_staff measure 1] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r8
                    \once \override Glissando.style = #'line
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
                }   % measure
            }
            \context BowStaff = "viola_bow_staff"
            {
                {   % measure
                    \time 5/8
                    % [viola_bow_staff measure 1] %! COMMENT_MEASURE_NUMBERS
                    \set BowStaff.instrumentName =
                    \markup { Vla. }
                    \set BowStaff.shortInstrumentName =
                    \markup { Vla. }
                    r8
                    \once \override Glissando.style = #'dotted-line
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
                    c'4
                }   % measure
            }
            \context BeamStaff = "viola_beam_staff"
            {
                {   % measure
                    \time 5/8
                    % [viola_beam_staff measure 1] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r8
                    d''''4
                    d''''4
                }   % measure
            }
            \context Staff = "viola_lh_staff"
            {
                {   % measure
                    \time 5/8
                    % [viola_lh_staff measure 1] %! COMMENT_MEASURE_NUMBERS
                    \clef "varC"
                    r8
                    c'2
                }   % measure
            }
        >>
        \context TimeSignatureContext = "TimeSignatureContext3"
        {
            {   % measure
                \time 5/8
                % [TimeSignatureContext measure 1] %! COMMENT_MEASURE_NUMBERS
                r2
                r8
            }   % measure
        }
        \context StaffGroup = "cello"
        <<
            \context StringStaff = "cello_string_staff"
            {
                {   % measure
                    \time 5/8
                    % [cello_string_staff measure 1] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r8
                    \once \override Glissando.style = #'line
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
                }   % measure
            }
            \context BowStaff = "cello_bow_staff"
            {
                {   % measure
                    \time 5/8
                    % [cello_bow_staff measure 1] %! COMMENT_MEASURE_NUMBERS
                    \set BowStaff.instrumentName =
                    \markup { Vc. }
                    \set BowStaff.shortInstrumentName =
                    \markup { Vc. }
                    r8
                    \once \override Glissando.style = #'dotted-line
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
                    c'4
                }   % measure
            }
            \context BeamStaff = "cello_beam_staff"
            {
                {   % measure
                    \time 5/8
                    % [cello_beam_staff measure 1] %! COMMENT_MEASURE_NUMBERS
                    \once \override Dots.transparent = ##t
                    r8
                    d''''4
                    d''''4
                }   % measure
            }
            \context Staff = "cello_lh_staff"
            {
                {   % measure
                    \time 5/8
                    % [cello_lh_staff measure 1] %! COMMENT_MEASURE_NUMBERS
                    \clef "bass"
                    r8
                    c'2
                }   % measure
            }
        >>
    >>
