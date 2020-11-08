\version "2.19.84"
\language "english"
#(set-default-paper-size "letterportrait")
#(set-global-staff-size 13)
\include "/Users/evansdsg2/evans/lilypond/evans-markups.ily"
\include "/Users/evansdsg2/evans/lilypond/evans-spanners.ily"
\include "/Users/evansdsg2/baca/lilypond/baca.ily"
\include "/Users/evansdsg2/abjad/docs/source/_stylesheets/ekmelos-ji-accidental-markups.ily"
\header {
	tagline = ##f
	breakbefore = ##t
	dedication = \markup \override #'(font-name . "STIXGeneral") \fontsize #1 \center-column {\line{"t o   t h e   J A C K   q u a r t e t"} \fontsize #3 \with-color #white \line{"."} }
	title = \markup \override #'(font-name . "STIXGeneral") \fontsize #12 \center-column {"A d u m b r a t i o n"}
	subtitle = \markup \override #'(font-name . "STIXGeneral") \fontsize #4 \center-column {\with-color #white \line{"."} \fontsize #2 \with-color #black \line{"f r o m   t h e   m u s e u m s   o f   s l e e p"} } % f o r   s t r i n g   q u a r t e t
	subsubtitle = \markup \override #'(font-name . "STIXGeneral") \fontsize #3 \center-column {\with-color #white \line{"."} \fontsize #1 \with-color #black \line{"f o r   s t r i n g   q u a r t e t"} } % from the museums of sleep
	composer = \markup \override #'(font-name . "STIXGeneral") \center-column {\line{\fontsize #1 {"G r e g o r y  R o w l a n d  E v a n s (*1995)"}} \line{ \vspace #4 }}
}

\layout {
    %{ \accidentalStyle forget %}
	%{ \accidentalStyle modern %}
	%{ \accidentalStyle modern-cautionary %}
	\accidentalStyle dodecaphonic
    indent = #15
	ragged-last = ##t
    ragged-right = ##t
    %left-margin = #15
	\context {
        \name TimeSignatureContext
        \type Engraver_group
        \numericTimeSignature
        \consists Axis_group_engraver
		\consists Bar_number_engraver
        \consists Time_signature_engraver
		\consists Mark_engraver
		\consists Metronome_mark_engraver
		\consists Text_engraver
		\consists Text_spanner_engraver
		\override BarNumber.Y-extent = #'(0 . 0)
		\override BarNumber.Y-offset = 0
		\override BarNumber.extra-offset = #'(-4 . 0)
		\override BarNumber.font-name = "STIXGeneral"
		%{ \override BarNumber.stencil = #(make-stencil-circler 0.1 0.7 ly:text-interface::print) %}
		\override BarNumber.font-size = 3
		\override BarNumber.padding = 4
		\override MetronomeMark.X-extent = #'(0 . 0)
		\override MetronomeMark.Y-extent = #'(0 . 0)
		\override MetronomeMark.break-align-symbols = #'(left-edge)
		\override MetronomeMark.extra-offset = #'(0 . 1)
		\override MetronomeMark.stencil = ##f
		%\override RehearsalMark.stencil = #(make-stencil-circler 0.1 0.7 ly:text-interface::print)
		%{ \override RehearsalMark.stencil = #(make-stencil-circler 0.1 0.7 ly:text-interface::print) %}
		\override RehearsalMark.X-extent = #'(0 . 0)
		\override RehearsalMark.X-offset = 6
		\override RehearsalMark.Y-offset = -2.5
		\override RehearsalMark.break-align-symbols = #'(time-signature)
		\override RehearsalMark.break-visibility = #end-of-line-invisible
		\override RehearsalMark.font-name = "STIXGeneral"
		\override RehearsalMark.font-size = 3
		\override RehearsalMark.outside-staff-priority = 500
		\override RehearsalMark.self-alignment-X = #center
        \override TimeSignature.X-extent = #'(0 . 0)
		%{ \override TimeSignature.right-padding = #3 %}
		%{ \override TimeSignature.X-extent = ##f %}
        \override TimeSignature.X-offset = #ly:self-alignment-interface::x-aligned-on-self
        \override TimeSignature.Y-extent = #'(0 . 0)
        \override TimeSignature.break-align-symbol = ##f
        \override TimeSignature.break-visibility = #end-of-line-invisible
        \override TimeSignature.font-size = #4 % was 5
		%{ \override TimeSignature.font-size = #2 %}
		\override TimeSignature.font-name = "STIXGeneral"
        \override TimeSignature.self-alignment-X = #center
		\override TimeSignature.whiteout-style = #'outline
		\override TimeSignature.whiteout = ##t
        \override VerticalAxisGroup.default-staff-staff-spacing = #'((basic-distance . 9) (minimum-distance . 9) (padding . 4) (stretchability . 0))
    }
    \context {
        \Score
		\numericTimeSignature
		\remove Metronome_mark_engraver
        \remove Bar_number_engraver
		\remove Mark_engraver
        \accepts TimeSignatureContext
		%{ \override Accidental.X-extent = #'(5 . 5) %}
		\override BarLine.bar-extent = #'(-2 . 2)
		\override BarLine.hair-thickness = #0.9
		\override BarLine.thick-thickness = #8
        \override Beam.breakable = ##t
		\override Beam.concaveness = #10000
		%{ \override Beam.beam-thickness = #0.6 %}
        %{ \override Beam.length-fraction = #1.3 %}
		\override Clef.whiteout-style = #'outline
  		\override Clef.whiteout = 1
		\override DynamicText.font-size = #-2
		%{ \override DynamicLineSpanner.staff-padding = 4.5 %}
		\override DynamicLineSpanner.staff-padding = 4 % was 5
		\override DynamicLineSpanner.padding = 2
        %{ \override DynamicLineSpanner.Y-extent = #'(-1.5 . 1.5) %}
		\override Hairpin.bound-padding = #1
		\override Hairpin.padding = #2
		\override Glissando.breakable = ##t
		\override Glissando.thickness = #2
		\override Stem.thickness = #0.5
		\override Staff.thickness = #0.5
		\override MetronomeMark.font-size = 3
		\override NoteColumn.ignore-collision = ##t %
        \override SpacingSpanner.strict-grace-spacing = ##t
		%{ \override GraceSpacing.spacing-increment = #2.0 %}
        %{ \override SpacingSpanner.strict-note-spacing = ##t %}
        %{ \override SpacingSpanner.uniform-stretching = ##t %}
        \override StaffGrouper.staff-staff-spacing = #'((basic-distance . 15) (minimum-distance . 15) (padding . 2))
		\override StemTremolo.beam-width = 1
		\override StemTremolo.beam-thickness = #0.3
        \override StemTremolo.flag-count = 4
        \override StemTremolo.slope = 0.5
		\override StemTremolo.slope = #0.3
		%{ \override StemTremolo.shape = #'rectangle %}
		\override StemTremolo.shape = #'beam-like
		\override TupletBracket.bracket-visibility = ##t
        \override TupletBracket.minimum-length = #3
        \override TupletBracket.padding = #1.5 % was 2
		%{ \override TupletBracket.staff-padding = #1.5 %}
		\override TupletBracket.staff-padding = #1.3
        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
		\override TupletBracket.direction = #down % occasionally tweak up
		\override TupletNumber.font-size = #1
        \override TupletNumber.text = #tuplet-number::calc-fraction-text
		autoBeaming = ##f
		proportionalNotationDuration = #(ly:make-moment 1 12)
        tupletFullLength = ##t
    }
	\context {
        \Voice
        \remove Forbid_line_break_engraver
    }
    \context {
        \Staff
		%{ \override TimeSignature.X-extent = #'(0.75 . 0.75)
        \override TimeSignature.X-offset = #-0.75
        \override TimeSignature.break-visibility = #end-of-line-invisible
        \override TimeSignature.font-size = #1
		\override TimeSignature.whiteout-style = #'outline
		\override TimeSignature.whiteout = 0.25
		\numericTimeSignature %}
		\remove Time_signature_engraver
		fontSize = #-1
    }
    \context {
        \RhythmicStaff
        \remove Time_signature_engraver
    }
       \context {
        \StaffGroup
    }
}

\paper {
	system-separator-markup = \markup { \slashSeparator }
	system-system-spacing = #'((basic-distance . 13) (minimum-distance . 13) (padding . 4))

	indent = 20\mm
    short-indent = 15\mm
    bottom-margin = 8\mm
    left-margin = 8\mm
    right-margin = 8\mm
    top-margin = 8\mm

	%{ top-margin = 1\cm
	bottom-margin = 1\cm
	left-margin = 2\cm
	right-margin = 1\cm %}

	%top-margin = .90\in
	oddHeaderMarkup = \markup ""
	evenHeaderMarkup = \markup ""
	oddFooterMarkup = \markup \fill-line {
	\override #'(font-name . "STIXGeneral")
	\bold \fontsize #2
    \concat {
      "Adumbration -"
	  \fromproperty #'page:page-number-string "- GR Evans"
     }
  }
  evenFooterMarkup = \markup \fill-line {
	\override #'(font-name . "STIXGeneral")
	\bold \fontsize #2
	\concat { "Adumbration -"
	\fromproperty #'page:page-number-string
	"- GR Evans"
    }
  }
}
