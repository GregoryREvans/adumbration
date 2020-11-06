
    \context Score = "adumbration Score"
    <<

        \context TimeSignatureContext = "Global Context"
        {
            % [Global Context measure 1]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=115
            \time 5/4                                                          %! scaling time signatures
            \mark \markup {
                \bold
                    {
                    }
                }
            s1 * 5/4
            ^ \markup {
                \override
                    #'(font-name . "STIXGeneral Bold")
                    marigolds
                }
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"115"
              }
            }
            % [Global Context measure 2]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 9/4                                                          %! scaling time signatures
            s1 * 9/4
            % [Global Context measure 3]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 4]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 7/4                                                          %! scaling time signatures
            s1 * 7/4
            % [Global Context measure 5]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 6/4                                                          %! scaling time signatures
            s1 * 3/2
            % [Global Context measure 6]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 7]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 8]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 6/4                                                          %! scaling time signatures
            s1 * 3/2
            % [Global Context measure 9]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 10]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 11]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 12]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 13]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \once \override TimeSignature.color = #white                       %! applying ending skips
            \time 3/16                                                         %! scaling time signatures
            s1 * 3/16

        }

        \context StaffGroup = "Staff Group"
        <<

            \context Staff = "Staff 1"
            {
                \tag #'voice1 {

                \context Voice = "Voice 1"
                {
                    % [Voice 1 measure 1]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \set Staff.shortInstrumentName =                           %! applying staff names and clefs
                    \markup { "vn. I" }                                        %! applying staff names and clefs
                    \set Staff.instrumentName =                                %! applying staff names and clefs
                    "Violin I"                                                 %! applying staff names and clefs
                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    \clef "treble"                                             %! applying indicators
                    r1 * 5/8

                    R1 * 5/8

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "4")
                    \times 2/3 {
                        % [Voice 1 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r4

                        gqf'''4
                        \p
                        - \staccato

                        r4

                    }

                    r4

                    \scaleDurations #'(1 . 1) {

                        af'''4.
                        \mp
                        - \tenuto
                        \>
                        <>
                        \p

                        r2.

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
                                    \tweak font-size #0
                                    \tweak transparent ##t
                                    aqs'''
                                >32 * 4/3
                                ^ \markup {
                                    \hspace
                                        #1
                                    throw
                                    (5)
                                    }
                                [

                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.transparent = ##t
                                \tweak transparent ##t
                                aqs'''32 * 4/3

                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.transparent = ##t
                                \tweak transparent ##t
                                aqs'''32 * 4/3

                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.transparent = ##t
                                \tweak transparent ##t
                                aqs'''32 * 4/3

                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.transparent = ##t
                                \tweak transparent ##t
                                aqs'''32 * 4/3
                                ]

                            }
                            \tag #'voice2 {

                            \context Voice = "Voice 1"
                            {

                                \voiceTwo                                      %! abjad.on_beat_grace_container(4)
                                aqs'''4.
                                \mp
                                - \accent

                            }
                            }

                        >>

                    }

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "16")
                    \times 4/5 {
                        \oneVoice                                              %! abjad.on_beat_grace_container(5)
                        % [Voice 1 measure 3]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        f'''16
                        - \staccato
                        [

                        \revert Staff.Stem.stemlet-length
                        gqf'''16
                        - \staccato
                        ]

                        r8

                        af'''16
                        \p
                        - \staccato

                    }

                    r2

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 10 7) "4")
                    \times 7/10 {
                        % [Voice 1 measure 4]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r\breve

                        c'2
                        \f
                        ^ \markup { "(c.3 clicks)" }
                        ^ \markup { XSB }

                    }

                    <<

                        \context Voice = "On_Beat_Grace_Container"
                        {
                            \set fontSize = #-4                                %! abjad.on_beat_grace_container(1)
                            % [Voice 1 measure 5]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.transparent = ##t
                            \tweak transparent ##t
                            \once \override Beam.grow-direction = #left
                            \slash                                             %! abjad.on_beat_grace_container(2)
                            \voiceOne                                          %! abjad.on_beat_grace_container(3)
                            <
                                \tweak font-size #0
                                \tweak transparent ##t
                                cs'
                            >32 * 4/3
                            ^ \markup {
                                \hspace
                                    #1
                                throw
                                (7)
                                }
                            [

                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.transparent = ##t
                            \tweak transparent ##t
                            cs'32 * 4/3

                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.transparent = ##t
                            \tweak transparent ##t
                            cs'32 * 4/3

                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.transparent = ##t
                            \tweak transparent ##t
                            cs'32 * 4/3

                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.transparent = ##t
                            \tweak transparent ##t
                            cs'32 * 4/3

                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.transparent = ##t
                            \tweak transparent ##t
                            cs'32 * 4/3

                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.transparent = ##t
                            \tweak transparent ##t
                            cs'32 * 4/3
                            ]

                        }
                        \tag #'voice3 {

                        \context Voice = "Voice 1"
                        {

                            \voiceTwo                                          %! abjad.on_beat_grace_container(4)
                            cs'4
                            ~

                            cs'8
                            - \bendAfter #'-3.5

                        }
                        }

                    >>
                    \oneVoice                                                  %! abjad.on_beat_grace_container(5)

                    r8

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "2")
                    \times 2/3 {

                        r1

                        d'2
                        \mf
                        ^ \markup { XSB(c.5) }
                        \<

                    }
                    % [Voice 1 measure 6]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    ef'2
                    ^ \markup { XSB(c.7) }
                    <>
                    \f

                    r2
                    % [Voice 1 measure 7]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 1/2

                    R1 * 1/2
                    % [Voice 1 measure 8]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/4

                    R1 * 3/4
                    % [Voice 1 measure 9]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r1

                    <<

                        \context Voice = "On_Beat_Grace_Container"
                        {
                            \set fontSize = #-4                                %! abjad.on_beat_grace_container(1)

                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.transparent = ##t
                            \tweak transparent ##t
                            \once \override Beam.grow-direction = #right
                            \slash                                             %! abjad.on_beat_grace_container(2)
                            \voiceOne                                          %! abjad.on_beat_grace_container(3)
                            <
                                \tweak font-size #0
                                \tweak transparent ##t
                                c'
                            >32 * 4/3
                            ^ \markup {
                                \hspace
                                    #1
                                drop
                                (4)
                                }
                            [

                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.transparent = ##t
                            \tweak transparent ##t
                            c'32 * 4/3

                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.transparent = ##t
                            \tweak transparent ##t
                            c'32 * 4/3

                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.transparent = ##t
                            \tweak transparent ##t
                            c'32 * 4/3
                            ]

                        }
                        \tag #'voice4 {

                        \context Voice = "Voice 1"
                        {

                            \voiceTwo                                          %! abjad.on_beat_grace_container(4)
                            c'4
                            \mf
                            - \bendAfter #'3.5

                        }
                        }

                    >>

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 5) "4")
                    \times 5/4 {
                        \oneVoice                                              %! abjad.on_beat_grace_container(5)
                        % [Voice 1 measure 10]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        cs'2.
                        ^ \markup { XSB(c.11) }

                        r4

                    }
                    % [Voice 1 measure 11]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/8

                    R1 * 3/8
                    % [Voice 1 measure 12]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/8

                    R1 * 3/8
                    \bar "||"
                    % [Voice 1 measure 13]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                    \once \override Rest.color = #white                        %! applying ending skips
                    r1 * 3/32

                    \once \override MultiMeasureRest.color = #white            %! applying ending skips
                    R1 * 3/32
                    ^ \markup {                                                %! applying ending skips
                        \musicglyph                                            %! applying ending skips
                            #"scripts.ushortfermata"                           %! applying ending skips
                        }                                                      %! applying ending skips
                    \stopStaff \startStaff                                     %! applying ending skips

                }
                }

            }

            \context Staff = "Staff 2"
            {
                \tag #'voice5 {

                \context Voice = "Voice 2"
                {
                    % [Voice 2 measure 1]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \set Staff.shortInstrumentName =                           %! applying staff names and clefs
                    \markup { "vn. II" }                                       %! applying staff names and clefs
                    \set Staff.instrumentName =                                %! applying staff names and clefs
                    "Violin II"                                                %! applying staff names and clefs
                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    \clef "treble"                                             %! applying indicators
                    r1 * 5/8

                    R1 * 5/8

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 14 9) "4")
                    \times 9/14 {
                        % [Voice 2 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        aqs'''2
                        \mp
                        - \staccato

                        r1.

                        f'''2
                        \p
                        - \tenuto
                        \<
                        <>
                        \mp

                        r2

                        gqf'''2
                        \p
                        - \staccato

                    }
                    % [Voice 2 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/8

                    R1 * 3/8

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 7) "4")
                    \times 7/6 {
                        % [Voice 2 measure 4]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r1

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
                                    \tweak font-size #0
                                    \tweak transparent ##t
                                    d'
                                >32 * 8/7
                                ^ \markup {
                                    \hspace
                                        #1
                                    throw
                                    (6)
                                    }
                                [

                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.transparent = ##t
                                \tweak transparent ##t
                                d'32 * 8/7

                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.transparent = ##t
                                \tweak transparent ##t
                                d'32 * 8/7

                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.transparent = ##t
                                \tweak transparent ##t
                                d'32 * 8/7

                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.transparent = ##t
                                \tweak transparent ##t
                                d'32 * 8/7

                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.transparent = ##t
                                \tweak transparent ##t
                                d'32 * 8/7
                                ]

                            }
                            \tag #'voice6 {

                            \context Voice = "Voice 2"
                            {

                                \voiceTwo                                      %! abjad.on_beat_grace_container(4)
                                d'2
                                \f
                                - \bendAfter #'2.5
                                \>

                            }
                            }

                        >>

                    }

                    <<

                        \context Voice = "On_Beat_Grace_Container"
                        {
                            \set fontSize = #-4                                %! abjad.on_beat_grace_container(1)
                            % [Voice 2 measure 5]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.transparent = ##t
                            \tweak transparent ##t
                            \once \override Beam.grow-direction = #left
                            \slash                                             %! abjad.on_beat_grace_container(2)
                            \voiceOne                                          %! abjad.on_beat_grace_container(3)
                            <
                                \tweak font-size #0
                                \tweak transparent ##t
                                ef'
                            >32 * 4/3
                            ^ \markup {
                                \hspace
                                    #1
                                throw
                                (3)
                                }
                            [

                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.transparent = ##t
                            \tweak transparent ##t
                            ef'32 * 4/3

                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.transparent = ##t
                            \tweak transparent ##t
                            ef'32 * 4/3
                            ]

                        }
                        \tag #'voice7 {

                        \context Voice = "Voice 2"
                        {

                            \voiceTwo                                          %! abjad.on_beat_grace_container(4)
                            ef'4
                            \mf

                        }
                        }

                    >>
                    \oneVoice                                                  %! abjad.on_beat_grace_container(5)

                    r2

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) "8")
                    \times 6/5 {

                        r2

                        c'8
                        \f
                        - \staccato

                    }

                    <<

                        \context Voice = "On_Beat_Grace_Container"
                        {
                            \set fontSize = #-4                                %! abjad.on_beat_grace_container(1)
                            % [Voice 2 measure 6]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.transparent = ##t
                            \tweak transparent ##t
                            \once \override Beam.grow-direction = #right
                            \slash                                             %! abjad.on_beat_grace_container(2)
                            \voiceOne                                          %! abjad.on_beat_grace_container(3)
                            <
                                \tweak font-size #0
                                \tweak transparent ##t
                                cs'
                            >32 * 4/3
                            ^ \markup {
                                \hspace
                                    #1
                                drop
                                (5)
                                }
                            [

                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.transparent = ##t
                            \tweak transparent ##t
                            cs'32 * 4/3

                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.transparent = ##t
                            \tweak transparent ##t
                            cs'32 * 4/3

                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.transparent = ##t
                            \tweak transparent ##t
                            cs'32 * 4/3

                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.transparent = ##t
                            \tweak transparent ##t
                            cs'32 * 4/3
                            ]

                        }
                        \tag #'voice8 {

                        \context Voice = "Voice 2"
                        {

                            \voiceTwo                                          %! abjad.on_beat_grace_container(4)
                            cs'2.
                            - \bendAfter #'-3

                        }
                        }

                    >>
                    \oneVoice                                                  %! abjad.on_beat_grace_container(5)

                    r4

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "8")
                    \times 2/3 {
                        % [Voice 2 measure 7]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r4

                        d'8
                        \mf
                        ^ \markup { "XSB(c.3 clicks)" }
                        \<
                        <>
                        \f

                    }

                    r2.
                    % [Voice 2 measure 8]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/4

                    R1 * 3/4
                    % [Voice 2 measure 9]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    <<

                        \context Voice = "On_Beat_Grace_Container"
                        {
                            \set fontSize = #-4                                %! abjad.on_beat_grace_container(1)

                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.transparent = ##t
                            \tweak transparent ##t
                            \once \override Beam.grow-direction = #left
                            \slash                                             %! abjad.on_beat_grace_container(2)
                            \voiceOne                                          %! abjad.on_beat_grace_container(3)
                            <
                                \tweak font-size #0
                                \tweak transparent ##t
                                ef'
                            >32 * 4/3
                            ^ \markup {
                                \hspace
                                    #1
                                throw
                                (2)
                                }
                            [

                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.transparent = ##t
                            \tweak transparent ##t
                            ef'32 * 4/3
                            ]

                        }
                        \tag #'voice9 {

                        \context Voice = "Voice 2"
                        {

                            \voiceTwo                                          %! abjad.on_beat_grace_container(4)
                            ef'2
                            \mf
                            - \bendAfter #'-2.5

                        }
                        }

                    >>
                    \oneVoice                                                  %! abjad.on_beat_grace_container(5)

                    r2

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "16")
                    \times 4/5 {
                        % [Voice 2 measure 10]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r4

                        c'16
                        \f
                        ^ \markup { XSB(c.8) }
                        \>

                    }

                    cs'2
                    \mf
                    ~

                    cs'4

                    r4
                    % [Voice 2 measure 11]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2

                    d'4
                    \f
                    - \bendAfter #'3
                    ^ \markup { XSB(c.11) }

                    \scaleDurations #'(1 . 1) {
                        % [Voice 2 measure 12]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        ef'4.

                        r4.
                        \bar "||"

                    }
                    % [Voice 2 measure 13]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                    \once \override Rest.color = #white                        %! applying ending skips
                    r1 * 3/32

                    \once \override MultiMeasureRest.color = #white            %! applying ending skips
                    R1 * 3/32
                    ^ \markup {                                                %! applying ending skips
                        \musicglyph                                            %! applying ending skips
                            #"scripts.ushortfermata"                           %! applying ending skips
                        }                                                      %! applying ending skips
                    \stopStaff \startStaff                                     %! applying ending skips

                }
                }

            }

            \context Staff = "Staff 3"
            {
                \tag #'voice10 {

                \context Voice = "Voice 3"
                {
                    % [Voice 3 measure 1]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \set Staff.shortInstrumentName =                           %! applying staff names and clefs
                    \markup { va. }                                            %! applying staff names and clefs
                    \set Staff.instrumentName =                                %! applying staff names and clefs
                    "Viola"                                                    %! applying staff names and clefs
                    \clef "varC"
                    r1

                    c'4
                    \mf
                    - \bendAfter #'3.5
                    ^ \markup { "XSB(c.5 clicks)" }
                    \<
                    % [Voice 3 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    cs'2.
                    <>
                    \f

                    r4

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) "4")
                    \times 5/6 {

                        r1

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
                                    \tweak font-size #0
                                    \tweak transparent ##t
                                    d'
                                >32 * 8/5
                                ^ \markup {
                                    \hspace
                                        #1
                                    throw
                                    (4)
                                    }
                                [

                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.transparent = ##t
                                \tweak transparent ##t
                                d'32 * 8/5

                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.transparent = ##t
                                \tweak transparent ##t
                                d'32 * 8/5

                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.transparent = ##t
                                \tweak transparent ##t
                                d'32 * 8/5
                                ]

                            }
                            \tag #'voice11 {

                            \context Voice = "Voice 3"
                            {

                                \voiceTwo                                      %! abjad.on_beat_grace_container(4)
                                d'2
                                \mf

                            }
                            }

                        >>

                    }

                    \scaleDurations #'(1 . 1) {
                        \oneVoice                                              %! abjad.on_beat_grace_container(5)
                        % [Voice 3 measure 3]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        ef'4.
                        - \bendAfter #'-3.5
                        ^ \markup { XSB(c.6) }

                        r4.

                    }

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "8")
                    \times 4/5 {
                        % [Voice 3 measure 4]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2

                        c'8
                        \f

                    }

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) "4")
                    \times 5/6 {

                        \ottava 1
                        \clef "treble"
                        af'''4
                        \mp
                        - \staccato

                        r4

                        aqs'''4
                        \p
                        - \staccato

                        f'''4
                        - \staccato

                        gqf'''4
                        - \staccato

                        \ottava 0
                        r4

                    }
                    % [Voice 3 measure 5]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2

                    <<

                        \context Voice = "On_Beat_Grace_Container"
                        {
                            \set fontSize = #-4                                %! abjad.on_beat_grace_container(1)

                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.transparent = ##t
                            \tweak transparent ##t
                            \once \override Beam.grow-direction = #right
                            \slash                                             %! abjad.on_beat_grace_container(2)
                            \voiceOne                                          %! abjad.on_beat_grace_container(3)
                            <
                                \tweak font-size #0
                                \tweak transparent ##t
                                cs'
                            >32 * 4/3
                            ^ \markup {
                                \hspace
                                    #1
                                drop
                                (5)
                                }
                            [

                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.transparent = ##t
                            \tweak transparent ##t
                            cs'32 * 4/3

                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.transparent = ##t
                            \tweak transparent ##t
                            cs'32 * 4/3

                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.transparent = ##t
                            \tweak transparent ##t
                            cs'32 * 4/3

                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.transparent = ##t
                            \tweak transparent ##t
                            cs'32 * 4/3
                            ]

                        }
                        \tag #'voice12 {

                        \context Voice = "Voice 3"
                        {

                            \voiceTwo                                          %! abjad.on_beat_grace_container(4)
                            cs'4
                            \mf
                            ~

                            cs'2
                            - \bendAfter #'-3

                        }
                        }

                    >>
                    \oneVoice                                                  %! abjad.on_beat_grace_container(5)

                    r4

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "2")
                    \times 2/3 {
                        % [Voice 3 measure 6]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r1

                        d'2
                        \f
                        ^ \markup { XSB(c.7) }
                        \>

                    }
                    % [Voice 3 measure 7]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    ef'8
                    <>
                    \mf

                    r8

                    r2.
                    % [Voice 3 measure 8]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/4

                    R1 * 3/4
                    % [Voice 3 measure 9]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "4")
                    \times 4/5 {

                        r1

                        c'4
                        \f
                        - \bendAfter #'2.5
                        ^ \markup { XSB(c.9) }

                    }
                    % [Voice 3 measure 10]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    cs'8.

                    r16

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "2")
                    \times 2/3 {

                        r1

                        d'2
                        \mf
                        - \bendAfter #'3
                        ^ \markup { XSB(c.10) }
                        \<

                    }

                    \scaleDurations #'(1 . 1) {
                        % [Voice 3 measure 11]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        ef'4.
                        \f

                        r4.

                    }

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "8")
                    \times 4/5 {
                        % [Voice 3 measure 12]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2

                        c'8
                        \mf

                    }

                    r4
                    \bar "||"
                    % [Voice 3 measure 13]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                    \once \override Rest.color = #white                        %! applying ending skips
                    r1 * 3/32

                    \once \override MultiMeasureRest.color = #white            %! applying ending skips
                    R1 * 3/32
                    ^ \markup {                                                %! applying ending skips
                        \musicglyph                                            %! applying ending skips
                            #"scripts.ushortfermata"                           %! applying ending skips
                        }                                                      %! applying ending skips
                    \stopStaff \startStaff                                     %! applying ending skips

                }
                }

            }

            \context Staff = "Staff 4"
            {
                \tag #'voice13 {

                \context Voice = "Voice 4"
                {

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 3) "4")
                    \times 3/4 {

                        <<

                            \context Voice = "On_Beat_Grace_Container"
                            {
                                \set fontSize = #-4                            %! abjad.on_beat_grace_container(1)
                                % [Voice 4 measure 1]                          %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                \set Staff.shortInstrumentName =               %! applying staff names and clefs
                                \markup { vc. }                                %! applying staff names and clefs
                                \set Staff.instrumentName =                    %! applying staff names and clefs
                                "Violoncello"                                  %! applying staff names and clefs
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.transparent = ##t
                                \tweak transparent ##t
                                \once \override Beam.grow-direction = #left
                                \slash                                         %! abjad.on_beat_grace_container(2)
                                \voiceOne                                      %! abjad.on_beat_grace_container(3)
                                <
                                    \tweak font-size #0
                                    \tweak transparent ##t
                                    cs'
                                >32 * 16/9
                                ^ \markup {
                                    \hspace
                                        #1
                                    throw
                                    (7)
                                    }
                                [

                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.transparent = ##t
                                \tweak transparent ##t
                                cs'32 * 16/9

                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.transparent = ##t
                                \tweak transparent ##t
                                cs'32 * 16/9

                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.transparent = ##t
                                \tweak transparent ##t
                                cs'32 * 16/9

                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.transparent = ##t
                                \tweak transparent ##t
                                cs'32 * 16/9

                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.transparent = ##t
                                \tweak transparent ##t
                                cs'32 * 16/9

                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.transparent = ##t
                                \tweak transparent ##t
                                cs'32 * 16/9
                                ]

                            }
                            \tag #'voice14 {

                            \context Voice = "Voice 4"
                            {

                                \clef "treble"
                                \voiceTwo                                      %! abjad.on_beat_grace_container(4)
                                cs'2.
                                \f
                                - \bendAfter #'-2.5
                                \>
                                <>
                                \mf

                            }
                            }

                        >>
                        \oneVoice                                              %! abjad.on_beat_grace_container(5)

                        r4

                    }

                    r2
                    % [Voice 4 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "4")
                    \times 2/3 {

                        r2

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
                                    \tweak font-size #0
                                    \tweak transparent ##t
                                    d'
                                >32 * 2
                                ^ \markup {
                                    \hspace
                                        #1
                                    throw
                                    (4)
                                    }
                                [

                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.transparent = ##t
                                \tweak transparent ##t
                                d'32 * 2

                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.transparent = ##t
                                \tweak transparent ##t
                                d'32 * 2

                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.transparent = ##t
                                \tweak transparent ##t
                                d'32 * 2
                                ]

                            }
                            \tag #'voice15 {

                            \context Voice = "Voice 4"
                            {

                                \voiceTwo                                      %! abjad.on_beat_grace_container(4)
                                d'4
                                \f

                            }
                            }

                        >>

                    }
                    \oneVoice                                                  %! abjad.on_beat_grace_container(5)

                    r4

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) "4")
                    \times 5/6 {

                        r2

                        \ottava 1
                        af'''2
                        \mp
                        - \tenuto
                        \>
                        <>
                        \p

                        r2

                    }
                    % [Voice 4 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    aqs'''8
                    \mp
                    - \staccato

                    r8

                    r8

                    f'''8
                    \p
                    - \staccato

                    \ottava 0
                    r4
                    % [Voice 4 measure 4]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    \scaleDurations #'(1 . 1) {

                        ef'2.
                        \mf
                        - \bendAfter #'-3.5
                        ^ \markup { "XSB(c.5 clicks)" }

                        r2.

                    }

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) "8")
                    \times 6/5 {
                        % [Voice 4 measure 5]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2

                        c'8
                        \f
                        ^ \markup { XSB(c.8) }

                    }

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 3) "4")
                    \times 3/4 {

                        cs'2.

                        r4

                    }

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "8")
                    \times 2/3 {
                        % [Voice 4 measure 6]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r4

                        d'8
                        \mf
                        - \bendAfter #'3.5
                        ^ \markup { XSB(c.11) }
                        \<
                        <>
                        \f

                    }

                    r2.

                    <<

                        \context Voice = "On_Beat_Grace_Container"
                        {
                            \set fontSize = #-4                                %! abjad.on_beat_grace_container(1)
                            % [Voice 4 measure 7]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.transparent = ##t
                            \tweak transparent ##t
                            \once \override Beam.grow-direction = #right
                            \slash                                             %! abjad.on_beat_grace_container(2)
                            \voiceOne                                          %! abjad.on_beat_grace_container(3)
                            <
                                \tweak font-size #0
                                \tweak transparent ##t
                                ef'
                            >32 * 4/3
                            ^ \markup {
                                \hspace
                                    #1
                                drop
                                (6)
                                }
                            [

                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.transparent = ##t
                            \tweak transparent ##t
                            ef'32 * 4/3

                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.transparent = ##t
                            \tweak transparent ##t
                            ef'32 * 4/3

                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.transparent = ##t
                            \tweak transparent ##t
                            ef'32 * 4/3

                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.transparent = ##t
                            \tweak transparent ##t
                            ef'32 * 4/3

                            \once \override NoteHead.no-ledgers = ##t
                            \once \override Accidental.transparent = ##t
                            \tweak transparent ##t
                            ef'32 * 4/3
                            ]

                        }
                        \tag #'voice16 {

                        \context Voice = "Voice 4"
                        {

                            \voiceTwo                                          %! abjad.on_beat_grace_container(4)
                            ef'2
                            \mf

                        }
                        }

                    >>
                    \oneVoice                                                  %! abjad.on_beat_grace_container(5)

                    r2
                    % [Voice 4 measure 8]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2.

                    r2

                    c'4
                    \f
                    - \bendAfter #'2.5
                    ^ \markup { XSB(c.12) }
                    \>

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 5) "4")
                    \times 5/4 {
                        % [Voice 4 measure 9]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        cs'2.
                        \mf

                        r4

                    }
                    % [Voice 4 measure 10]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "2")
                    \times 2/3 {

                        r1

                        d'2
                        \f
                        ^ \markup { XSB(c.13) }

                    }

                    \scaleDurations #'(1 . 1) {
                        % [Voice 4 measure 11]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        ef'4.
                        - \bendAfter #'-3

                        r4.

                    }

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "8")
                    \times 4/5 {
                        % [Voice 4 measure 12]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2

                        c'8
                        \mf
                        \<
                        <>
                        \f

                    }

                    r4
                    \bar "||"
                    % [Voice 4 measure 13]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                    \once \override Rest.color = #white                        %! applying ending skips
                    r1 * 3/32

                    \once \override MultiMeasureRest.color = #white            %! applying ending skips
                    R1 * 3/32
                    ^ \markup {                                                %! applying ending skips
                        \musicglyph                                            %! applying ending skips
                            #"scripts.ushortfermata"                           %! applying ending skips
                        }                                                      %! applying ending skips
                    \stopStaff \startStaff                                     %! applying ending skips

                }
                }

            }

        >>

    >>
