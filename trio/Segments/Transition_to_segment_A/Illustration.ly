% 2018-07-18 16:32

\version "2.19.82"
#(set-default-paper-size "17x11")
#(set-global-staff-size 12)
\language "english"
\include "ekmel.ily"
\ekmelicStyle evans

stringtab = {
  \override Staff.Clef.stencil = #ly:text-interface::print
  \override Staff.Clef.text = \markup { \general-align #Y #-0.05
    \epsfile #Y #8 #"string_position_tablature.eps"
  } 
}

 bowtab = {
  \override Staff.Clef.stencil = #ly:text-interface::print
  \override Staff.Clef.text = \markup { \general-align #Y #-0.05
    \epsfile #Y #9 #"bow_position_tablature.eps"
  }
 }
 
\header {
    tagline = ##f
}

\layout {
    \accidentalStyle forget
    indent = #3
    ragged-right = ##t
    left-margin = #15
    \context {
        \name TimeSignatureContext
        \type Engraver_group
        \consists Axis_group_engraver
        \consists Time_signature_engraver
        \override TimeSignature.X-extent = #'(0 . 0)
        \override TimeSignature.X-offset = #ly:self-alignment-interface::x-aligned-on-self
        \override TimeSignature.Y-extent = #'(0 . 0)
        \override TimeSignature.break-align-symbol = ##f
        \override TimeSignature.break-visibility = #end-of-line-invisible
        \override TimeSignature.font-size = #1
        \override TimeSignature.self-alignment-X = #center
        \override VerticalAxisGroup.default-staff-staff-spacing = #'((basic-distance . 0) (minimum-distance . 10) (padding . 6) (stretchability . 0))
    }
    \context {
        \Score
       \override StaffGrouper.staff-staff-spacing.padding = #4
       \override StaffGrouper.staff-staff-spacing.basic-distance = #5
        \remove Bar_number_engraver
        \accepts TimeSignatureContext
        \override Beam.breakable = ##t
        \override SpacingSpanner.strict-grace-spacing = ##t
        \override SpacingSpanner.strict-note-spacing = ##t
        \override SpacingSpanner.uniform-stretching = ##t
        \override TupletBracket.bracket-visibility = ##t
        \override TupletBracket.minimum-length = #3
        \override TupletBracket.padding = #2
        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
        \override TupletNumber.text = #tuplet-number::calc-fraction-text
        autoBeaming = ##f
        proportionalNotationDuration = #(ly:make-moment 1 24)
        tupletFullLength = ##t
    }
    \context {
        \StaffGroup
    }
    \context {
        \Staff
        %\remove Time_signature_engraver
    }
    \context {
        \RhythmicStaff
        \remove Time_signature_engraver
    }
}

\paper { 
system-system-spacing = #'((basic-distance . 15) (padding . 15))
     %system-separator-markup = \slashSeparator
    #(define after-title-space (* 0.5 cm))
    #(define head-separation (* 0.5 cm))
    print-page-number = ##f
   top-margin = 2\cm
   bottom-margin = 1\cm
%%%%%these come together:%%%%
	left-margin = 20\mm
    line-width = 380\mm
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  tagline = \markup {

  }
}


\score {
    \new ChoirStaff <<
      \set ChoirStaff.systemStartDelimiter = #'SystemStartSquare
        \new ChoirStaff <<
            \new Staff \with {
                %\override BarLine.transparent = ##t
                \override Dots.staff-position = #-8
                \override Flag.Y-offset = #-8.5
                \override Glissando.bound-details.left.padding = #1.5
                \override Glissando.bound-details.right.padding = #1.5
                \override Glissando.thickness = #2
                \override Script.staff-padding = #3
                \override StaffSymbol.transparent = ##t
                \override Stem.direction = #down
                \override Stem.length = #8
                \override Stem.stem-begin-position = #-9
                \override TimeSignature.stencil = ##f
            } {
                \clef "percussion"    
                \stringtab
                \set Staff.instrumentName = \markup { String Position }
                \set Staff.shortInstrumentName = \markup { St. Pos. }
                \times 2/3 {
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    5
                        }
                    c'4  \glissando
                    \once \override NoteHead.Y-offset = 2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    5
                                    5
                        }
                    c'4  \glissando
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
            }
            \new Staff \with {
               % \override BarLine.transparent = ##t
                \override Dots.staff-position = #-8
                \override Flag.Y-offset = #-8.5
                \override Glissando.bound-details.left.padding = #1.5
                \override Glissando.bound-details.right.padding = #1.5
                \override Glissando.thickness = #2
                \override Script.staff-padding = #3
                \override StaffSymbol.transparent = ##t
                \override Stem.direction = #down
                \override Stem.length = #8
                \override Stem.stem-begin-position = #-9
                \override TimeSignature.stencil = ##f
            } {
                \clef "percussion"
                \bowtab
                \set Staff.instrumentName = \markup { Bow Position }
                \set Staff.shortInstrumentName = \markup { B. Pos. }
                \once \override Glissando.style = #'dotted-line
                \once \override NoteHead.Y-offset = -2.0
                \once \override NoteHead.stencil = #ly:text-interface::print
                \once \override NoteHead.text = \markup {
                    \center-align
                        \vcenter
                            \fraction
                                0
                                4
                    }
                c'4 ^\downbow \glissando
                \once \override NoteHead.Y-offset = 2.0
                \once \override NoteHead.stencil = #ly:text-interface::print
                \once \override NoteHead.text = \markup {
                    \center-align
                        \vcenter
                            \fraction
                                4
                                4
                    }
                c'4
            }
            \new Staff {
                \clef "treble"
                \set Staff.instrumentName = \markup { Violin }
                \set Staff.shortInstrumentName = \markup { Vn. }
                \time 2/4
                axs'2
            }
        >>
        \new ChoirStaff <<
            \new Staff \with {
            %    \override BarLine.transparent = ##t
                \override Dots.staff-position = #-8
                \override Flag.Y-offset = #-8.5
                \override Glissando.bound-details.left.padding = #1.5
                \override Glissando.bound-details.right.padding = #1.5
                \override Glissando.thickness = #2
                \override Script.staff-padding = #3
                \override StaffSymbol.transparent = ##t
                \override Stem.direction = #down
                \override Stem.length = #8
                \override Stem.stem-begin-position = #-9
                \override TimeSignature.stencil = ##f
            } {
                \clef "percussion"
                \stringtab
                \set Staff.instrumentName = \markup { String Position }
                \set Staff.shortInstrumentName = \markup { St. Pos. }
                \times 2/3 {
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    5
                        }
                    c'4  \glissando
                    \once \override NoteHead.Y-offset = 1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    4
                                    5
                        }
                    c'4  \glissando
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
            }
            \new Staff \with {
              %  \override BarLine.transparent = ##t
                \override Dots.staff-position = #-8
                \override Flag.Y-offset = #-8.5
                \override Glissando.bound-details.left.padding = #1.5
                \override Glissando.bound-details.right.padding = #1.5
                \override Glissando.thickness = #2
                \override Script.staff-padding = #3
                \override StaffSymbol.transparent = ##t
                \override Stem.direction = #down
                \override Stem.length = #8
                \override Stem.stem-begin-position = #-9
                \override TimeSignature.stencil = ##f
            } {
                \clef "percussion"
                \bowtab
                \set Staff.instrumentName = \markup { Bow Position }
                \set Staff.shortInstrumentName = \markup { B. Pos. }
                \once \override NoteHead.Y-offset = -2.0
                 \once \override Glissando.style = #'dotted-line
                \once \override NoteHead.Y-offset = -2.0
                \once \override NoteHead.stencil = #ly:text-interface::print
                \once \override NoteHead.text = \markup {
                    \center-align
                        \vcenter
                            \fraction
                                0
                                4
                    }
                c'4 ^\downbow \glissando
                \once \override NoteHead.Y-offset = 2.0
                \once \override NoteHead.stencil = #ly:text-interface::print
                \once \override NoteHead.text = \markup {
                    \center-align
                        \vcenter
                            \fraction
                                4
                                4
                    }
                c'4
            }
            \new Staff {
                \clef "varC"
                \set Staff.instrumentName = \markup { Viola }
                \set Staff.shortInstrumentName = \markup { Va. }
                \time 2/4
                c'4. \glissando eqf8
            }
        >>
        \new ChoirStaff <<
            \new Staff \with {
         %       \override BarLine.transparent = ##t
                \override Dots.staff-position = #-8
                \override Flag.Y-offset = #-8.5
                \override Glissando.bound-details.left.padding = #1.5
                \override Glissando.bound-details.right.padding = #1.5
                \override Glissando.thickness = #2
                \override Script.staff-padding = #3
                \override StaffSymbol.transparent = ##t
                \override Stem.direction = #down
                \override Stem.length = #8
                \override Stem.stem-begin-position = #-9
                \override TimeSignature.stencil = ##f
            } {
                \clef "percussion"
                \stringtab
                \set Staff.instrumentName = \markup { String Position }
                \set Staff.shortInstrumentName = \markup { St. Pos. }
                \times 2/3 {
                    \once \override NoteHead.Y-offset = -2.0
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    0
                                    5
                        }
                    c'4  \glissando
                    \once \override NoteHead.Y-offset = 1.2
                    \once \override NoteHead.stencil = #ly:text-interface::print
                    \once \override NoteHead.text = \markup {
                        \center-align
                            \vcenter
                                \fraction
                                    4
                                    5
                        }
                    c'4  \glissando
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
            }
            \new Staff \with {
           %     \override BarLine.transparent = ##t
                \override Dots.staff-position = #-8
                \override Flag.Y-offset = #-8.5
                \override Glissando.bound-details.left.padding = #1.5
                \override Glissando.bound-details.right.padding = #1.5
                \override Glissando.thickness = #2
                \override Script.staff-padding = #3
                \override StaffSymbol.transparent = ##t
                \override Stem.direction = #down
                \override Stem.length = #8
                \override Stem.stem-begin-position = #-9
                \override TimeSignature.stencil = ##f
            } {
                \clef "percussion"
                \bowtab
                \set Staff.instrumentName = \markup { Bow Position }
                \set Staff.shortInstrumentName = \markup { B. Pos. }
                \once \override Glissando.style = #'dotted-line
                \once \override NoteHead.Y-offset = -2.0
                \once \override NoteHead.stencil = #ly:text-interface::print
                \once \override NoteHead.text = \markup {
                    \center-align
                        \vcenter
                            \fraction
                                0
                                4
                    }
                c'4 ^\downbow \glissando
                \once \override NoteHead.Y-offset = 2.0
                \once \override NoteHead.stencil = #ly:text-interface::print
                \once \override NoteHead.text = \markup {
                    \center-align
                        \vcenter
                            \fraction
                                4
                                4
                    }
                c'4
            }
            \new Staff {
                \clef "bass"
                \set Staff.instrumentName = \markup { Violoncello }
                \set Staff.shortInstrumentName = \markup { Vc. }
                \time 2/4
                gef2
            }
        >>
    >>
}