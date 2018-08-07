% 2018-07-17 19:54

\version "2.19.82"
\language "english"
#(set-default-paper-size "11x17landscape")
#(set-global-staff-size 15)
\include "ekmel.ily"
\ekmelicStyle evans

stringtab = {
	\override Staff.Clef.stencil = #ly:text-interface::print
	\override Staff.Clef.text = \markup { \general-align #Y #-0.02
	\epsfile #Y #7 #"string_position_tablature.eps"
  	}
}

 bowtab = {
	\override Staff.Clef.stencil = #ly:text-interface::print
	\override Staff.Clef.text = \markup { \general-align #Y #0.03
	\epsfile #Y #10 #"bow_position_tablature.eps"
  	}
 }

\layout {
    \accidentalStyle forget
    indent = #0
	ragged-last = ##t
    %ragged-right = ##t
    left-margin = #15
    \context {
        \name TimeSignatureContext
        \type Engraver_group
        \numericTimeSignature
        \consists Axis_group_engraver
		\consists Bar_number_engraver
        \consists Time_signature_engraver
		\consists Mark_engraver
		\consists Metronome_mark_engraver
		\override BarNumber.Y-extent = #'(0 . 0)
		\override BarNumber.Y-offset = 0
		\override BarNumber.extra-offset = #'(-6 . 0)
		\override BarNumber.font-name = "Didot Italic"
		\override BarNumber.font-size = 1
		\override BarNumber.padding = 4
		\override BarNumber.stencil = #(make-stencil-circler 0.1 0.7 ly:text-interface::print)
		\override MetronomeMark.X-extent = #'(0 . 0)
		\override MetronomeMark.Y-extent = #'(0 . 0)
		\override MetronomeMark.break-align-symbols = #'(left-edge)
		\override MetronomeMark.extra-offset = #'(0 . 4)
		\override MetronomeMark.font-size = 3
		\override RehearsalMark.X-extent = #'(0 . 0)
		\override RehearsalMark.X-offset = 6
		\override RehearsalMark.Y-offset = -2.25
		\override RehearsalMark.break-align-symbols = #'(time-signature)
		\override RehearsalMark.break-visibility = #end-of-line-invisible
		\override RehearsalMark.font-name = "Didot"
		\override RehearsalMark.font-size = 8
		\override RehearsalMark.outside-staff-priority = 500
		\override RehearsalMark.self-alignment-X = #center
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
		\remove Mark_engraver
        \accepts TimeSignatureContext
        \override Beam.breakable = ##t
		\override Glissando.breakable = ##t
        \override SpacingSpanner.strict-grace-spacing = ##t
        \override SpacingSpanner.strict-note-spacing = ##t
        \override SpacingSpanner.uniform-stretching = ##t
        \override TupletBracket.bracket-visibility = ##t
        \override TupletBracket.minimum-length = #3
        \override TupletBracket.padding = #2
        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
        \override TupletNumber.text = #tuplet-number::calc-fraction-text
		proportionalNotationDuration = #(ly:make-moment 1 50)
        autoBeaming = ##f
        tupletFullLength = ##t
    }
	\context {
        \Voice
        \remove Forbid_line_break_engraver
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
        \Staff
        \name StringStaff
        \type Engraver_group
        \alias Staff

        \stringtab

	    % \override NoteHead.color = #blue %test
        % \override Rest.color = #red %test

        \override Dots.staff-position = #-8
        \override Flag.Y-offset = #-8.4
        \override Glissando.bound-details.left.padding = #0.5
        \override Glissando.bound-details.right.padding = #0.5
        \override Glissando.thickness = #2
		\override Rest.transparent = ##t
        \override Script.staff-padding = #3
        \override StaffSymbol.transparent = ##t
        \override Stem.direction = #down
        \override Stem.length = #8
        \override Stem.stem-begin-position = #-9
		\override Tie.stencil = ##f
        \override TimeSignature.stencil = ##f
    }
    \context {
        \Staff
        \name BowStaff
        \type Engraver_group
        \alias Staff

        % \override Script.color = #red %test
		% \override NoteHead.color = #yellow %test
        \bowtab

        \override Beam.stencil = ##f
        \override Dots.stencil = ##f
        \override Flag.stencil = ##f
        \override Glissando.bound-details.left.padding = #0.5
        \override Glissando.bound-details.right.padding = #0.5
        \override Glissando.thickness = #2
        \override NoteHead.Y-offset = #-5
        \override NoteHead.extra-offset = #'(0.05 . 0)
		\override Rest.transparent = ##t
        \override Script.staff-padding = #2.5
        \override StaffSymbol.transparent = ##t
        \override Stem.direction = #down
        \override Stem.stencil = ##f
        \override TimeSignature.stencil = ##f
        \override TupletBracket.stencil = ##f
        \override TupletNumber.stencil = ##f
    }

    \context {
        \Staff
        \name BeamStaff
        \type Engraver_group
        \alias Staff
        \override Beam.direction = #down
        \override Beam.positions = #'(3 . 3)
        \override Clef.stencil = ##f
        \override Dots.staff-position = #-2
        \override Flag.Y-offset = #2.93
        \override NoteHead.no-ledgers = ##t
        \override NoteHead.stencil = ##f
		\override Rest.transparent = ##t
        \override Script.staff-padding = #3
        \override StaffSymbol.transparent = ##t
        \override Stem.direction = #down
        \override Stem.length = #10
        \override Stem.stem-begin-position = #15.975
        \override TimeSignature.stencil = ##f
        \override TupletBracket.positions = #'(1 . 1)
    }
    \context {
        \StaffGroup
        \accepts StringStaff
        \accepts BowStaff
        \accepts BeamStaff
    }
}

\paper {
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
