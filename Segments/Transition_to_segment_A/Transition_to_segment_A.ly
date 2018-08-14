\version "2.19.82"
\language "english"

\include "transition_to_segment_a_stylesheet.ily"

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
                \time 6/8
                % [TimeSignatureContext1 measure 1] %! COMMENT_MEASURE_NUMBERS
                r2.
            }   % measure
        }
        \context StaffGroup = "violin"
        <<
            \context StringStaff = "violin_string_staff"
            {
                % [violin_string_staff measure 1] %! COMMENT_MEASURE_NUMBERS
                \once \override Dots.transparent = ##t
                r8
                ^ \markup {
                    \score
                        {
                            \new Score
                            \with
                            {
                                \override SpacingSpanner.spacing-increment = #0.5
                                proportionalNotationDuration = ##f
                            }
                            <<
                                \new RhythmicStaff
                                \with
                                {
                                    \remove Time_signature_engraver
                                    \remove Staff_symbol_engraver
                                    \override Stem.direction = #up
                                    \override Stem.length = #5
                                    \override TupletBracket.bracket-visibility = ##t
                                    \override TupletBracket.direction = #up
                                    \override TupletBracket.minimum-length = #4
                                    \override TupletBracket.padding = #1.25
                                    \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                    \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                    \override TupletNumber.font-size = #0
                                    \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                    tupletFullLength = ##t
                                }
                                {
                                    c4.
                                }
                            >>
                            \layout {
                                indent = #0
                                ragged-right = ##t
                            }
                        }
                    =
                    \hspace
                        #-0.5
                    \score
                        {
                            \new Score
                            \with
                            {
                                \override SpacingSpanner.spacing-increment = #0.5
                                proportionalNotationDuration = ##f
                            }
                            <<
                                \new RhythmicStaff
                                \with
                                {
                                    \remove Time_signature_engraver
                                    \remove Staff_symbol_engraver
                                    \override Stem.direction = #up
                                    \override Stem.length = #5
                                    \override TupletBracket.bracket-visibility = ##t
                                    \override TupletBracket.direction = #up
                                    \override TupletBracket.minimum-length = #4
                                    \override TupletBracket.padding = #1.25
                                    \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                    \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                    \override TupletNumber.font-size = #0
                                    \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                    tupletFullLength = ##t
                                }
                                {
                                    c4
                                }
                            >>
                            \layout {
                                indent = #0
                                ragged-right = ##t
                            }
                        }
                    }
                \times 2/3 {
                    \once \override Glissando.style = #'line
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
                }
                \once \override Dots.transparent = ##t
                r8
                \bar "||"
            }
            \context BowStaff = "violin_bow_staff"
            {
                % [violin_bow_staff measure 1] %! COMMENT_MEASURE_NUMBERS
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
                - \accent
                ^ \downbow
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
                r8
            }
            \context BeamStaff = "violin_beam_staff"
            {
                % [violin_beam_staff measure 1] %! COMMENT_MEASURE_NUMBERS
                \once \override Dots.transparent = ##t
                r8
                c'4
                \mp
                \>
                c'4
                \pp
                \once \override Dots.transparent = ##t
                r8
            }
            \context Staff = "violin_lh_staff"
            {
                % [violin_lh_staff measure 1] %! COMMENT_MEASURE_NUMBERS
                \tempo " " 4=80
                r8
                c'2
                r8
            }
        >>
        \context TimeSignatureContext = "TimeSignatureContext2"
        {
            {   % measure
                \time 6/8
                % [TimeSignatureContext2 measure 1] %! COMMENT_MEASURE_NUMBERS
                r2.
            }   % measure
        }
        \context StaffGroup = "viola"
        <<
            \context StringStaff = "viola_string_staff"
            {
                % [viola_string_staff measure 1] %! COMMENT_MEASURE_NUMBERS
                \once \override Dots.transparent = ##t
                r8
                ^ \markup {
                    \score
                        {
                            \new Score
                            \with
                            {
                                \override SpacingSpanner.spacing-increment = #0.5
                                proportionalNotationDuration = ##f
                            }
                            <<
                                \new RhythmicStaff
                                \with
                                {
                                    \remove Time_signature_engraver
                                    \remove Staff_symbol_engraver
                                    \override Stem.direction = #up
                                    \override Stem.length = #5
                                    \override TupletBracket.bracket-visibility = ##t
                                    \override TupletBracket.direction = #up
                                    \override TupletBracket.minimum-length = #4
                                    \override TupletBracket.padding = #1.25
                                    \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                    \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                    \override TupletNumber.font-size = #0
                                    \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                    tupletFullLength = ##t
                                }
                                {
                                    c4.
                                }
                            >>
                            \layout {
                                indent = #0
                                ragged-right = ##t
                            }
                        }
                    =
                    \hspace
                        #-0.5
                    \score
                        {
                            \new Score
                            \with
                            {
                                \override SpacingSpanner.spacing-increment = #0.5
                                proportionalNotationDuration = ##f
                            }
                            <<
                                \new RhythmicStaff
                                \with
                                {
                                    \remove Time_signature_engraver
                                    \remove Staff_symbol_engraver
                                    \override Stem.direction = #up
                                    \override Stem.length = #5
                                    \override TupletBracket.bracket-visibility = ##t
                                    \override TupletBracket.direction = #up
                                    \override TupletBracket.minimum-length = #4
                                    \override TupletBracket.padding = #1.25
                                    \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                    \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                    \override TupletNumber.font-size = #0
                                    \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                    tupletFullLength = ##t
                                }
                                {
                                    c4
                                }
                            >>
                            \layout {
                                indent = #0
                                ragged-right = ##t
                            }
                        }
                    }
                \times 2/3 {
                    \once \override Glissando.style = #'line
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
                }
                \once \override Dots.transparent = ##t
                r8
            }
            \context BowStaff = "viola_bow_staff"
            {
                % [viola_bow_staff measure 1] %! COMMENT_MEASURE_NUMBERS
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
                - \accent
                ^ \downbow
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
                r8
            }
            \context BeamStaff = "viola_beam_staff"
            {
                % [viola_beam_staff measure 1] %! COMMENT_MEASURE_NUMBERS
                \once \override Dots.transparent = ##t
                r8
                c'4
                \mp
                \>
                c'4
                \pp
                \once \override Dots.transparent = ##t
                r8
            }
            \context Staff = "viola_lh_staff"
            {
                % [viola_lh_staff measure 1] %! COMMENT_MEASURE_NUMBERS
                \clef "varC"
                r8
                c'4.
                \glissando
                eqf8
                r8
            }
        >>
        \context TimeSignatureContext = "TimeSignatureContext3"
        {
            {   % measure
                \time 6/8
                % [TimeSignatureContext3 measure 1] %! COMMENT_MEASURE_NUMBERS
                r2.
            }   % measure
        }
        \context StaffGroup = "cello"
        <<
            \context StringStaff = "cello_string_staff"
            {
                % [cello_string_staff measure 1] %! COMMENT_MEASURE_NUMBERS
                \once \override Dots.transparent = ##t
                r8
                ^ \markup {
                    \score
                        {
                            \new Score
                            \with
                            {
                                \override SpacingSpanner.spacing-increment = #0.5
                                proportionalNotationDuration = ##f
                            }
                            <<
                                \new RhythmicStaff
                                \with
                                {
                                    \remove Time_signature_engraver
                                    \remove Staff_symbol_engraver
                                    \override Stem.direction = #up
                                    \override Stem.length = #5
                                    \override TupletBracket.bracket-visibility = ##t
                                    \override TupletBracket.direction = #up
                                    \override TupletBracket.minimum-length = #4
                                    \override TupletBracket.padding = #1.25
                                    \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                    \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                    \override TupletNumber.font-size = #0
                                    \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                    tupletFullLength = ##t
                                }
                                {
                                    c4.
                                }
                            >>
                            \layout {
                                indent = #0
                                ragged-right = ##t
                            }
                        }
                    =
                    \hspace
                        #-0.5
                    \score
                        {
                            \new Score
                            \with
                            {
                                \override SpacingSpanner.spacing-increment = #0.5
                                proportionalNotationDuration = ##f
                            }
                            <<
                                \new RhythmicStaff
                                \with
                                {
                                    \remove Time_signature_engraver
                                    \remove Staff_symbol_engraver
                                    \override Stem.direction = #up
                                    \override Stem.length = #5
                                    \override TupletBracket.bracket-visibility = ##t
                                    \override TupletBracket.direction = #up
                                    \override TupletBracket.minimum-length = #4
                                    \override TupletBracket.padding = #1.25
                                    \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                    \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                    \override TupletNumber.font-size = #0
                                    \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                    tupletFullLength = ##t
                                }
                                {
                                    c4
                                }
                            >>
                            \layout {
                                indent = #0
                                ragged-right = ##t
                            }
                        }
                    }
                \times 2/3 {
                    \once \override Glissando.style = #'line
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
                }
                \once \override Dots.transparent = ##t
                r8
            }
            \context BowStaff = "cello_bow_staff"
            {
                % [cello_bow_staff measure 1] %! COMMENT_MEASURE_NUMBERS
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
                - \accent
                ^ \downbow
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
                r8
            }
            \context BeamStaff = "cello_beam_staff"
            {
                % [cello_beam_staff measure 1] %! COMMENT_MEASURE_NUMBERS
                \once \override Dots.transparent = ##t
                r8
                c'4
                \mp
                \>
                c'4
                \pp
                \once \override Dots.transparent = ##t
                r8
            }
            \context Staff = "cello_lh_staff"
            {
                % [cello_lh_staff measure 1] %! COMMENT_MEASURE_NUMBERS
                \clef "bass"
                r8
                c2
                r8
            }
        >>
    >>
}