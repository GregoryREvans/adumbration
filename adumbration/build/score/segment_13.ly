
    \context Score = "adumbration Score"
    <<

        \context TimeSignatureContext = "Global Context"
        {
            % [Global Context measure 1]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=83
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
                    \clef "treble"
                    r1 * 5/8

                    R1 * 5/8

                    {

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "4")
                        \times 2/3 {
                            % [Voice 1 measure 2]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r4

                            gqf'''4
                            \p

                            r4

                        }

                    }

                    r4

                    {

                        \scaleDurations #'(1 . 1) {

                            af'''4.
                            \mp
                            \>
                            <>
                            \p

                            r8

                            r2

                            r8

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    \set fontSize = #-4                        %! abjad.on_beat_grace_container(1)

                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override Accidental.transparent = ##t
                                    \tweak transparent ##t
                                    \once \override Beam.grow-direction = #left
                                    \slash                                     %! abjad.on_beat_grace_container(2)
                                    \voiceOne                                  %! abjad.on_beat_grace_container(3)
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

                                    \voiceTwo                                  %! abjad.on_beat_grace_container(4)
                                    aqs'''4.
                                    \mp

                                }
                                }

                            >>

                        }

                    }

                    {

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "16")
                        \times 4/5 {
                            \oneVoice                                          %! abjad.on_beat_grace_container(5)
                            % [Voice 1 measure 3]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            f'''16
                            [

                            \revert Staff.Stem.stemlet-length
                            gqf'''16
                            ]

                            r16

                            r16

                            af'''16
                            \p

                        }

                    }

                    r2

                    {

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 10 7) "4")
                        \times 7/10 {
                            % [Voice 1 measure 4]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r1.

                            r2

                            c'2
                            \f

                        }

                    }

                    {

                        <<

                            \context Voice = "On_Beat_Grace_Container"
                            {
                                \set fontSize = #-4                            %! abjad.on_beat_grace_container(1)
                                % [Voice 1 measure 5]                          %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

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

                                \voiceTwo                                      %! abjad.on_beat_grace_container(4)
                                cs'4.
                                - \bendAfter #'-3.5

                            }
                            }

                        >>
                        \oneVoice                                              %! abjad.on_beat_grace_container(5)

                        r8

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "2")
                        \times 2/3 {

                            r1

                            d'2
                            \mf
                            \<

                        }

                    }

                    {
                        % [Voice 1 measure 6]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        ef'2
                        <>
                        \f

                        r2

                    }
                    % [Voice 1 measure 7]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 1/2

                    R1 * 1/2
                    % [Voice 1 measure 8]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/4

                    R1 * 3/4

                    {
                        % [Voice 1 measure 9]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2.

                        r4

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

                                \voiceTwo                                      %! abjad.on_beat_grace_container(4)
                                c'4
                                \mf
                                - \bendAfter #'3.5

                            }
                            }

                        >>

                    }

                    {

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 5) "4")
                        \times 5/4 {
                            \oneVoice                                          %! abjad.on_beat_grace_container(5)
                            % [Voice 1 measure 10]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            cs'2.

                            r4

                        }

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
                    \clef "treble"
                    r1 * 5/8

                    R1 * 5/8

                    {

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 14 9) "4")
                        \times 9/14 {
                            % [Voice 2 measure 2]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            aqs'''2
                            \mp

                            r1

                            r2

                            f'''2
                            \p
                            \<
                            <>
                            \mp

                            r2

                            gqf'''2
                            \p

                        }

                    }
                    % [Voice 2 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/8

                    R1 * 3/8

                    {

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 7) "4")
                        \times 7/6 {
                            % [Voice 2 measure 4]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r1

                            d'2
                            \f
                            - \bendAfter #'2.5
                            \>

                        }

                    }

                    {
                        % [Voice 2 measure 5]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        ef'4
                        \mf

                        r4

                    }

                    r4

                    {

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) "8")
                        \times 6/5 {

                            r4.

                            r8

                            c'8
                            \f

                        }

                    }

                    {
                        % [Voice 2 measure 6]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        cs'2.
                        - \bendAfter #'-3

                        r4

                    }

                    {

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "8")
                        \times 2/3 {
                            % [Voice 2 measure 7]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r4

                            d'8
                            \mf
                            \<
                            <>
                            \f

                        }

                    }

                    r2.
                    % [Voice 2 measure 8]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/4

                    R1 * 3/4
                    % [Voice 2 measure 9]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    {

                        ef'2
                        \mf
                        - \bendAfter #'-2.5

                        r2

                    }

                    {

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "16")
                        \times 4/5 {
                            % [Voice 2 measure 10]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r8.

                            r16

                            c'16
                            \f
                            \>

                        }

                        cs'2
                        \mf
                        ~

                        cs'4

                        r4

                    }

                    {
                        % [Voice 2 measure 11]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2

                        d'4
                        \f
                        - \bendAfter #'3

                    }

                    {

                        \scaleDurations #'(1 . 1) {
                            % [Voice 2 measure 12]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            ef'4
                            ~

                            ef'8

                            r8

                            r4
                            \bar "||"

                        }

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
                \tag #'voice6 {

                \context Voice = "Voice 3"
                {

                    {
                        % [Voice 3 measure 1]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \set Staff.shortInstrumentName =                       %! applying staff names and clefs
                        \markup { va. }                                        %! applying staff names and clefs
                        \set Staff.instrumentName =                            %! applying staff names and clefs
                        "Viola"                                                %! applying staff names and clefs
                        \clef "varC"
                        r2.

                        r4

                        c'4
                        \mf
                        - \bendAfter #'3.5
                        \<

                    }

                    {
                        % [Voice 3 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        cs'2.
                        <>
                        \f

                        r4

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) "4")
                        \times 5/6 {

                            r1

                            d'2
                            \mf

                        }

                    }

                    {

                        \scaleDurations #'(1 . 1) {
                            % [Voice 3 measure 3]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            ef'4
                            ~

                            ef'8
                            - \bendAfter #'-3.5

                            r8

                            r4

                        }

                    }

                    {

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "8")
                        \times 4/5 {
                            % [Voice 3 measure 4]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r4.

                            r8

                            c'8
                            \f

                        }

                    }

                    {

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) "4")
                        \times 5/6 {

                            af'''4
                            \mp

                            r4

                            aqs'''4
                            \p

                            f'''4

                            gqf'''4

                            r4

                        }

                    }
                    % [Voice 3 measure 5]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2

                    {

                        cs'2.
                        \mf
                        - \bendAfter #'-3

                        r4

                    }

                    {

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "2")
                        \times 2/3 {
                            % [Voice 3 measure 6]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r1

                            d'2
                            \f
                            \>

                        }

                    }

                    {
                        % [Voice 3 measure 7]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        ef'8
                        <>
                        \mf

                        r8

                    }

                    r2.
                    % [Voice 3 measure 8]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/4

                    R1 * 3/4
                    % [Voice 3 measure 9]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    {

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "4")
                        \times 4/5 {

                            r2.

                            r4

                            c'4
                            \f
                            - \bendAfter #'2.5

                        }

                    }

                    {
                        % [Voice 3 measure 10]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        cs'8.

                        r16

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "2")
                        \times 2/3 {

                            r1

                            d'2
                            \mf
                            - \bendAfter #'3
                            \<

                        }

                    }

                    {

                        \scaleDurations #'(1 . 1) {
                            % [Voice 3 measure 11]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            ef'4
                            \f
                            ~

                            ef'8

                            r8

                            r4

                        }

                    }

                    {

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "8")
                        \times 4/5 {
                            % [Voice 3 measure 12]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r4.

                            r8

                            c'8
                            \mf

                        }

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
                \tag #'voice7 {

                \context Voice = "Voice 4"
                {

                    {

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 3) "4")
                        \times 3/4 {
                            % [Voice 4 measure 1]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \set Staff.shortInstrumentName =                   %! applying staff names and clefs
                            \markup { vc. }                                    %! applying staff names and clefs
                            \set Staff.instrumentName =                        %! applying staff names and clefs
                            "Violoncello"                                      %! applying staff names and clefs
                            \clef "bass"
                            cs'2.
                            \f
                            - \bendAfter #'-2.5
                            \>
                            <>
                            \mf

                            r4

                        }

                    }

                    r2
                    % [Voice 4 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    {

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "4")
                        \times 2/3 {

                            r2

                            d'4
                            \f

                        }

                    }

                    r4

                    {

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) "4")
                        \times 5/6 {

                            r2

                            \ottava 1
                            \clef "treble"
                            af'''2
                            \mp
                            \>
                            <>
                            \p

                            \ottava 0
                            r2

                        }

                    }

                    {
                        % [Voice 4 measure 3]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \ottava 1
                        aqs'''8
                        \mp

                        \ottava 0
                        r4

                        \ottava 1
                        f'''8
                        \p

                    }

                    \ottava 0
                    r4
                    % [Voice 4 measure 4]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    {

                        \scaleDurations #'(1 . 1) {

                            ef'2
                            \mf
                            ~

                            ef'4
                            - \bendAfter #'-3.5

                            r4

                            r2

                        }

                    }

                    {

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) "8")
                        \times 6/5 {
                            % [Voice 4 measure 5]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r4.

                            r8

                            c'8
                            \f

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 3) "4")
                        \times 3/4 {

                            cs'2.

                            r4

                        }

                    }

                    {

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "8")
                        \times 2/3 {
                            % [Voice 4 measure 6]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r4

                            d'8
                            \mf
                            - \bendAfter #'3.5
                            \<
                            <>
                            \f

                        }

                    }

                    r2.

                    {
                        % [Voice 4 measure 7]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        ef'2
                        \mf

                        r2

                    }
                    % [Voice 4 measure 8]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    {

                        r2.

                        r4

                        c'4
                        \f
                        - \bendAfter #'2.5
                        \>

                    }

                    {

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 5) "4")
                        \times 5/4 {
                            % [Voice 4 measure 9]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            cs'2.
                            \mf

                            r4

                        }

                    }
                    % [Voice 4 measure 10]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    {

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "2")
                        \times 2/3 {

                            r1

                            d'2
                            \f

                        }

                    }

                    {

                        \scaleDurations #'(1 . 1) {
                            % [Voice 4 measure 11]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            ef'4
                            ~

                            ef'8
                            - \bendAfter #'-3

                            r8

                            r4

                        }

                    }

                    {

                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "8")
                        \times 4/5 {
                            % [Voice 4 measure 12]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r4.

                            r8

                            c'8
                            \mf
                            \<
                            <>
                            \f

                        }

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
