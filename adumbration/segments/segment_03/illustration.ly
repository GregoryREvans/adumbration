\version "2.19.84"                                                             %! abjad.LilyPondFile._get_format_pieces()
\language "english"                                                            %! abjad.LilyPondFile._get_format_pieces()

\include "/Users/gregoryevans/abjad/docs/source/_stylesheets/abjad.ily"           %! abjad.LilyPondFile._get_formatted_includes()
\include "/Users/gregoryevans/Scores/adumbration/adumbration/build/first_stylesheet.ily" %! abjad.LilyPondFile._get_formatted_includes()

\score {                                                                       %! abjad.LilyPondFile._get_formatted_blocks()

    \context Score = "adumbration Score"
    <<

        \context TimeSignatureContext = "Global Context"
        {
            % [Global Context measure 1]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=102
            \time 7/8                                                          %! scaling time signatures
            \mark \markup \bold {  }
            s1 * 7/8
            ^ \markup { \box \override #'(font-name . "STIXGeneral Bold") \caps { Extinct Anatomies } }
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-mixed-number-markup #2 #0 #1 #"102" #"2" #"9"
                  \hspace #1
                  \upright [
                  \abjad-metric-modulation-tuplet-rhs #2 #0 #2 #0 #2 #3 #'(0.6 . 0.6)
                  \hspace #0.5
                  \upright ]
              }
            }
            % [Global Context measure 2]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 3]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \break
            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 4]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/8                                                          %! scaling time signatures
            s1 * 5/8
            % [Global Context measure 5]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \once \override Score.TimeSignature.stencil = ##f                  %! applying ending skips
            \time 3/16                                                         %! scaling time signatures
            s1 * 3/16

        }

        \context StaffGroup = "Staff Group"
        <<

            \tag #'voice1
            {

                \context Staff = "Staff 1"
                {

                    \context Voice = "Voice 1"
                    {
                        % [Voice 1 measure 1]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \set Staff.shortInstrumentName =                       %! applying staff names and clefs
                        \markup { \hcenter-in #12 "vn. I" }                    %! applying staff names and clefs
                        \set Staff.instrumentName =                            %! applying staff names and clefs
                        \markup { \hcenter-in #14 "Violin I" }                 %! applying staff names and clefs
                        \clef "treble"
                        <
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                            g''
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-flat  }
                            ef'''
                        >4.
                        \sfp
                        ^ \markup \center-align \center-column { +0 -14  }
                        ^ \markup ord.
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        ~

                        <
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                            g''
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-flat  }
                            ef'''
                        >4
                        ~

                        \override Staff.Stem.stemlet-length = 0.75
                        <
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                            g''
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-flat  }
                            ef'''
                        >8
                        [

                        \revert Staff.Stem.stemlet-length
                        r8
                        \ff
                        ]
                        % [Voice 1 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        <
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-down  }
                            d'''
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-sharp  }
                            fs'''
                        >1
                        \sfp
                        ^ \markup \center-align \center-column { +4 -31  }
                        \<

                        r4
                        \fff
                        % [Voice 1 measure 3]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        <
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                            g''
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-flat  }
                            ef'''
                        >2
                        \p
                        - \accent
                        ^ \markup \center-align \center-column { +0 -14  }

                        r2
                        % [Voice 1 measure 4]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        <
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-down  }
                            d'''
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-sharp  }
                            fs'''
                        >4
                        \f
                        - \tenuto
                        ^ \markup \center-align \center-column { +4 -31  }
                        ^ \markup sp.

                        r8

                        <<

                            \context Voice = "On_Beat_Grace_Container"
                            {
                                \set fontSize = #-4                            %! abjad.on_beat_grace_container(1)

                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.transparent = ##t
                                \tweak transparent ##t
                                \once \override Beam.grow-direction = #left
                                \slash                                         %! abjad.on_beat_grace_container(2)
                                \voiceOne                                      %! abjad.on_beat_grace_container(3)
                                <
                                    \tweak font-size 0
                                    \tweak transparent ##t
                                    ef''
                                >32 * 4/3
                                ^ \markup { \hspace #1 throw (4)}
                                [

                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.transparent = ##t
                                \tweak transparent ##t
                                ef''32 * 4/3

                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.transparent = ##t
                                \tweak transparent ##t
                                ef''32 * 4/3

                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.transparent = ##t
                                \tweak transparent ##t
                                ef''32 * 4/3
                                ]

                            }

                            \context Voice = "Voice 1"
                            {

                                \voiceTwo                                      %! abjad.on_beat_grace_container(4)
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \abjad-flat  }
                                ef''4
                                \mp
                                ^ \markup \center-align { +0 }
                                \bar "||"

                            }

                        >>
                        \oneVoice                                              %! abjad.on_beat_grace_container(5)
                        % [Voice 1 measure 5]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                        \once \override Rest.color = #white                    %! applying ending skips
                        r1 * 3/32

                        \once \override MultiMeasureRest.color = #white        %! applying ending skips
                        R1 * 3/32
                        ^ \markup \center-align \musicglyph #"scripts.ulongfermata" %! applying ending skips
                        \stopStaff \startStaff                                 %! applying ending skips

                    }

                }

            }

            \tag #'voice2
            {

                \context Staff = "Staff 2"
                {

                    \context Voice = "Voice 2"
                    {
                        % [Voice 2 measure 1]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \set Staff.shortInstrumentName =                       %! applying staff names and clefs
                        \markup { \hcenter-in #12 "vn. II" }                   %! applying staff names and clefs
                        \set Staff.instrumentName =                            %! applying staff names and clefs
                        \markup { \hcenter-in #14 "Violin II" }                %! applying staff names and clefs
                        \clef "treble"
                        <
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-flat  }
                            ef'
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                            c''
                        >4.
                        \sfp
                        ^ \markup \center-align \center-column { B+41 +0  }
                        ^ \markup ord.
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        ~

                        <
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-flat  }
                            ef'
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                            c''
                        >4
                        ~

                        \override Staff.Stem.stemlet-length = 0.75
                        <
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-flat  }
                            ef'
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                            c''
                        >8
                        [

                        \revert Staff.Stem.stemlet-length
                        r8
                        \ff
                        ]
                        % [Voice 2 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        <
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                            gs''
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-natural  }
                            b''
                        >1
                        \sfp
                        ^ \markup \center-align \center-column { +2 -14  }
                        \<

                        r4
                        \fff
                        % [Voice 2 measure 3]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        <
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-flat  }
                            ef'
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                            c''
                        >2
                        \p
                        - \accent
                        ^ \markup \center-align \center-column { B+41 +0  }

                        r2
                        % [Voice 2 measure 4]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        <
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                            gs''
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-natural  }
                            b''
                        >4
                        \f
                        - \tenuto
                        ^ \markup \center-align \center-column { +2 -14  }
                        ^ \markup sp.

                        r8

                        <<

                            \context Voice = "On_Beat_Grace_Container"
                            {
                                \set fontSize = #-4                            %! abjad.on_beat_grace_container(1)

                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.transparent = ##t
                                \tweak transparent ##t
                                \once \override Beam.grow-direction = #right
                                \slash                                         %! abjad.on_beat_grace_container(2)
                                \voiceOne                                      %! abjad.on_beat_grace_container(3)
                                <
                                    \tweak font-size 0
                                    \tweak transparent ##t
                                    f'
                                >32 * 4/3
                                ^ \markup { \hspace #1 drop (5)}
                                [

                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.transparent = ##t
                                \tweak transparent ##t
                                f'32 * 4/3

                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.transparent = ##t
                                \tweak transparent ##t
                                f'32 * 4/3

                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.transparent = ##t
                                \tweak transparent ##t
                                f'32 * 4/3

                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.transparent = ##t
                                \tweak transparent ##t
                                f'32 * 4/3
                                ]

                            }

                            \context Voice = "Voice 2"
                            {

                                \voiceTwo                                      %! abjad.on_beat_grace_container(4)
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \abjad-natural  }
                                f'4
                                \mp
                                ^ \markup \center-align { +4 }
                                \bar "||"

                            }

                        >>
                        \oneVoice                                              %! abjad.on_beat_grace_container(5)
                        % [Voice 2 measure 5]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                        \once \override Rest.color = #white                    %! applying ending skips
                        r1 * 3/32

                        \once \override MultiMeasureRest.color = #white        %! applying ending skips
                        R1 * 3/32
                        ^ \markup \center-align \musicglyph #"scripts.ulongfermata" %! applying ending skips
                        \stopStaff \startStaff                                 %! applying ending skips

                    }

                }

            }

            \tag #'voice3
            {

                \context Staff = "Staff 3"
                {

                    \context Voice = "Voice 3"
                    {
                        % [Voice 3 measure 1]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \set Staff.shortInstrumentName =                       %! applying staff names and clefs
                        \markup { \hcenter-in #12 "va." }                      %! applying staff names and clefs
                        \set Staff.instrumentName =                            %! applying staff names and clefs
                        \markup { \hcenter-in #14 "Viola" }                    %! applying staff names and clefs
                        \clef "varC"
                        <
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-flat  }
                            bf
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                            g'
                        >4.
                        \sfp
                        ^ \markup \center-align \center-column { -14 +2  }
                        ^ \markup ord.
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        ~

                        <
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-flat  }
                            bf
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                            g'
                        >4
                        ~

                        \override Staff.Stem.stemlet-length = 0.75
                        <
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-flat  }
                            bf
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                            g'
                        >8
                        [

                        \revert Staff.Stem.stemlet-length
                        r8
                        \ff
                        ]
                        % [Voice 3 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-natural  }
                        e'1
                        \sfp
                        ^ \markup \center-align { +0 }
                        \<

                        r4
                        \fff
                        % [Voice 3 measure 3]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        <
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-flat  }
                            bf
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                            g'
                        >2
                        \p
                        - \accent
                        ^ \markup \center-align \center-column { -14 +2  }

                        r2
                        % [Voice 3 measure 4]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-natural  }
                        e'4
                        \f
                        - \tenuto
                        ^ \markup \center-align { +0 }
                        ^ \markup sp.

                        r8

                        <<

                            \context Voice = "On_Beat_Grace_Container"
                            {
                                \set fontSize = #-4                            %! abjad.on_beat_grace_container(1)

                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.transparent = ##t
                                \tweak transparent ##t
                                \once \override Beam.grow-direction = #left
                                \slash                                         %! abjad.on_beat_grace_container(2)
                                \voiceOne                                      %! abjad.on_beat_grace_container(3)
                                <
                                    \tweak font-size 0
                                    \tweak transparent ##t
                                    ef
                                >32 * 4/3
                                ^ \markup { \hspace #1 throw (6)}
                                [

                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.transparent = ##t
                                \tweak transparent ##t
                                ef32 * 4/3

                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.transparent = ##t
                                \tweak transparent ##t
                                ef32 * 4/3

                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.transparent = ##t
                                \tweak transparent ##t
                                ef32 * 4/3

                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.transparent = ##t
                                \tweak transparent ##t
                                ef32 * 4/3

                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.transparent = ##t
                                \tweak transparent ##t
                                ef32 * 4/3
                                ]

                            }

                            \context Voice = "Voice 3"
                            {

                                \voiceTwo                                      %! abjad.on_beat_grace_container(4)
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \abjad-flat  }
                                ef4
                                \mp
                                ^ \markup \center-align { +0 }
                                \bar "||"

                            }

                        >>
                        \oneVoice                                              %! abjad.on_beat_grace_container(5)
                        % [Voice 3 measure 5]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                        \once \override Rest.color = #white                    %! applying ending skips
                        r1 * 3/32

                        \once \override MultiMeasureRest.color = #white        %! applying ending skips
                        R1 * 3/32
                        ^ \markup \center-align \musicglyph #"scripts.ulongfermata" %! applying ending skips
                        \stopStaff \startStaff                                 %! applying ending skips

                    }

                }

            }

            \tag #'voice4
            {

                \context Staff = "Staff 4"
                {

                    \context Voice = "Voice 4"
                    {
                        % [Voice 4 measure 1]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \set Staff.shortInstrumentName =                       %! applying staff names and clefs
                        \markup { \hcenter-in #12 "vc." }                      %! applying staff names and clefs
                        \set Staff.instrumentName =                            %! applying staff names and clefs
                        \markup { \hcenter-in #14 "Violoncello" }              %! applying staff names and clefs
                        \clef "bass"
                        <
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-flat  }
                            ef,
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-flat  }
                            ef
                        >4.
                        \sfp
                        ^ \markup \center-align \center-column { +0 +0  }
                        ^ \markup ord.
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        ~

                        <
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-flat  }
                            ef,
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-flat  }
                            ef
                        >4
                        ~

                        \override Staff.Stem.stemlet-length = 0.75
                        <
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-flat  }
                            ef,
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-flat  }
                            ef
                        >8
                        [

                        \revert Staff.Stem.stemlet-length
                        r8
                        \ff
                        ]
                        % [Voice 4 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-natural  }
                        e1
                        \sfp
                        ^ \markup \center-align { +0 }
                        \<

                        r4
                        \fff
                        % [Voice 4 measure 3]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        <
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-flat  }
                            ef,
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-flat  }
                            ef
                        >2
                        \p
                        - \accent
                        ^ \markup \center-align \center-column { +0 +0  }

                        r2
                        % [Voice 4 measure 4]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-natural  }
                        e4
                        \f
                        - \tenuto
                        ^ \markup \center-align { +0 }
                        ^ \markup sp.

                        r8

                        <<

                            \context Voice = "On_Beat_Grace_Container"
                            {
                                \set fontSize = #-4                            %! abjad.on_beat_grace_container(1)

                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.transparent = ##t
                                \tweak transparent ##t
                                \once \override Beam.grow-direction = #right
                                \slash                                         %! abjad.on_beat_grace_container(2)
                                \voiceOne                                      %! abjad.on_beat_grace_container(3)
                                <
                                    \tweak font-size 0
                                    \tweak transparent ##t
                                    f
                                >32 * 4/3
                                ^ \markup { \hspace #1 drop (4)}
                                [

                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.transparent = ##t
                                \tweak transparent ##t
                                f32 * 4/3

                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.transparent = ##t
                                \tweak transparent ##t
                                f32 * 4/3

                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.transparent = ##t
                                \tweak transparent ##t
                                f32 * 4/3
                                ]

                            }

                            \context Voice = "Voice 4"
                            {

                                \voiceTwo                                      %! abjad.on_beat_grace_container(4)
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \abjad-natural  }
                                f4
                                \mp
                                ^ \markup \center-align { +4 }
                                \bar "||"

                            }

                        >>
                        \oneVoice                                              %! abjad.on_beat_grace_container(5)
                        % [Voice 4 measure 5]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                        \once \override Rest.color = #white                    %! applying ending skips
                        r1 * 3/32

                        \once \override MultiMeasureRest.color = #white        %! applying ending skips
                        R1 * 3/32
                        ^ \markup \center-align \musicglyph #"scripts.ulongfermata" %! applying ending skips
                        \stopStaff \startStaff                                 %! applying ending skips

                    }

                }

            }

        >>

    >>
}                                                                              %! abjad.LilyPondFile._get_formatted_blocks()