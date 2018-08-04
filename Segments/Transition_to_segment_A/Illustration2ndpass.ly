% 2018-07-17 19:54

\version "2.19.82"
\language "english"
#(set-default-paper-size "17x11")
#(set-global-staff-size 12)
\include "ekmel.ily"
\ekmelicStyle evans

\layout {
    \accidentalStyle forget
    indent = #0
    ragged-right = ##f
    left-margin = #15
    \context {
        \name TimeSignatureContext
        \type Engraver_group
         \numericTimeSignature
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
        proportionalNotationDuration = #(ly:make-moment 1 32)
        tupletFullLength = ##t
    }
    \context {
        \StaffGroup
    }
    \context {
        \Staff
        \remove Time_signature_engraver
    }
    \context {
        \RhythmicStaff
        \remove Time_signature_engraver
    }
	
	\context {
        \name BowContactVoice
        \type Engraver_group
        \override Beam.stencil = ##f
        \override Dots.stencil = ##f
        \override Flag.stencil = ##f
        \override NoteHead.extra-offset = #'(0.05 . 0)
        \override Rest.stencil = ##f
        \override Script.staff-padding = 2.5
        \override Stem.stencil = ##f
        \override TupletBracket.stencil = ##f
        \override TupletNumber.stencil = ##f
    }
    \context {
        \name BowBeamingVoice
        \type Engraver_group
	    \override Rest.stencil = ##f
        \override Beam.direction = #down
        \override Beam.positions = #'(-11 . -11)
        \override Dots.X-offset = -8
        \override Dots.staff-position = -1
        \override Flag.Y-offset = -10
        \override NoteHead.Y-offset = -5
        \override NoteHead.transparent = ##t
        \override Stem.direction = #down
        \override Stem.length = 9
        \override Stem.stem-begin-position = -11
        \override TupletBracket.positions = #'(-13 . -13)
    }

}

\paper {
  #(set-paper-size "17x11")
	top-margin = .90\in
	 oddHeaderMarkup = \markup ""
  evenHeaderMarkup = \markup ""
  oddFooterMarkup = \markup \fill-line {
    "" 
    \concat { 
      "~" 
      \override #'(font-name . "Didot") \fontsize #2 
        \fromproperty #'page:page-number-string "~" 
     } 
    ""
  }
  evenFooterMarkup = \markup \fill-line {
    "" 
    \concat { "~" \override #'(font-name . "Didot") \fontsize #2 
        \fromproperty #'page:page-number-string "~" 
    } ""
  }
}


\score {
    \new Score <<
\new TimeSignatureContext
<<
\time 2/4
r2
>>
        \new StaffGroup <<
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