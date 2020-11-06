
    \context Score = "adumbration Score"
    <<

        \context TimeSignatureContext = "Global Context"
        {
            % [Global Context measure 1]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=115
            \time 3/4                                                          %! scaling time signatures
            \mark \markup {
                \bold
                    {
                    }
                }
            s1 * 3/4
            ^ \markup {
                \override
                    #'(font-name . "STIXGeneral Bold")
                    fluxes/phylums
                }
            % [Global Context measure 2]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 3]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 4]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 5]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 6]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 7]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 8]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 9]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 10]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 11]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 12]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 13]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 14]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 15]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 16]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 17]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 18]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 19]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 20]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 21]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 22]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 23]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

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
                    \clef "treble"
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    c'4
                    \p
                    - \downbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    es'4
                    - \upbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    as'4
                    - \downbow
                    % [Voice 1 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 1/2

                    R1 * 1/2

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) "4")
                    \times 5/6 {
                        % [Voice 1 measure 3]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        ds''4
                        \mp
                        - \upbow
                        \>
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        gs''4
                        - \downbow
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        ds''4
                        - \upbow
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        as'4
                        - \downbow
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        es'4
                        - \upbow
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        c'4
                        - \downbow
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                    }

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "4")
                    \times 2/3 {
                        % [Voice 1 measure 4]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        es'4
                        - \upbow
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        as'4
                        - \downbow
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        ds''4
                        \p
                        - \upbow

                    }

                    r2.
                    % [Voice 1 measure 5]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/8

                    R1 * 3/8
                    % [Voice 1 measure 6]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2.

                    r16

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    cs'16
                    :32
                    \f
                    - \accent
                    ~
                    [

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    cs'16

                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    d'16
                    :32
                    - \accent
                    ~
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    d'16
                    [

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    cs'16
                    :32
                    - \accent

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    d'16
                    :32
                    - \accent

                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    d'16
                    :32
                    - \accent
                    ~
                    ]

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) "16")
                    \times 8/9 {
                        % [Voice 1 measure 7]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d'16
                        :32
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d'8
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        ds'8
                        :32
                        - \accent
                        ]

                        r4

                    }

                    r4
                    % [Voice 1 measure 8]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/8

                    R1 * 3/8
                    % [Voice 1 measure 9]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    gs''4
                    \mp
                    - \downbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    ds''4
                    - \upbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    as'4
                    - \downbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    es'4
                    - \upbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    c'4
                    - \downbow
                    % [Voice 1 measure 10]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 1/2

                    R1 * 1/2
                    % [Voice 1 measure 11]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/8

                    R1 * 3/8
                    % [Voice 1 measure 12]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 1/2

                    R1 * 1/2
                    % [Voice 1 measure 13]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "8")
                    \times 4/5 {

                        r8

                        r8

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d'16
                        :32
                        \ff
                        - \accent
                        \>
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d'16
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d'8
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        cs'8
                        :32
                        - \accent
                        ]

                    }

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 8) "16")
                    \times 8/11 {
                        % [Voice 1 measure 14]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d'8
                        :32
                        - \accent
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d'16
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d'16
                        :32
                        - \accent
                        ]
                        <>
                        \f

                        r8

                        r16

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d'4
                        :32
                        \ff
                        - \accent

                    }

                    r2
                    % [Voice 1 measure 15]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/8

                    R1 * 3/8
                    % [Voice 1 measure 16]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/8

                    R1 * 3/8

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) "4")
                    \times 5/6 {
                        % [Voice 1 measure 17]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        es'4
                        \p
                        - \upbow
                        \<
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        as'4
                        - \downbow
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        ds''4
                        - \upbow
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        gs''4
                        - \downbow
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        ds''4
                        - \upbow
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        as'4
                        - \downbow
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                    }
                    % [Voice 1 measure 18]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    es'4
                    \mp
                    - \upbow

                    r2.
                    % [Voice 1 measure 19]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "8")
                    \times 4/5 {

                        r16

                        r8

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        cs'8
                        :32
                        \f
                        - \accent
                        \<
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d'8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d'16
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        ds'16
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        ds'16
                        :32
                        - \accent
                        ~
                        ]

                    }

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 21 20) "16")
                    \times 20/21 {
                        % [Voice 1 measure 20]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        ds'16
                        :32
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        ds'8
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d'8
                        :32
                        \ff
                        - \accent
                        ]

                        r16

                        r16

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d'8
                        :32
                        \f
                        - \accent
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        cs'8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d'8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d'16
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d'16
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        ds'8
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d'8
                        :32
                        - \accent
                        ]

                        r8

                    }
                    % [Voice 1 measure 21]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r16

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    d'16
                    :32
                    \ff
                    - \accent
                    \>
                    [

                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    cs'8
                    :32
                    - \accent
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    d'8
                    :32
                    - \accent
                    [

                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    d'8
                    :32
                    - \accent
                    ]

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    d'4
                    :32
                    \f
                    - \accent
                    % [Voice 1 measure 22]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 1/2

                    R1 * 1/2
                    \bar "||"
                    % [Voice 1 measure 23]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

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
                \tag #'voice2 {

                \context Voice = "Voice 2"
                {
                    % [Voice 2 measure 1]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \set Staff.shortInstrumentName =                           %! applying staff names and clefs
                    \markup { "vn. II" }                                       %! applying staff names and clefs
                    \set Staff.instrumentName =                                %! applying staff names and clefs
                    "Violin II"                                                %! applying staff names and clefs
                    \clef "treble"
                    af4
                    \p
                    - \downbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    cs'4
                    - \upbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    fs'4
                    - \downbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)
                    % [Voice 2 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    b'4
                    - \upbow

                    r2.
                    % [Voice 2 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 5/8

                    R1 * 5/8
                    % [Voice 2 measure 4]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 5/8

                    R1 * 5/8
                    % [Voice 2 measure 5]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/8

                    R1 * 3/8

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 21 20) "16")
                    \times 20/21 {
                        % [Voice 2 measure 6]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r8

                        r8

                        \override Staff.Stem.stemlet-length = 0.75
                        a16
                        :32
                        \ff
                        - \accent
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \two-thirds-flat-markup
                        bf16
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \five-sixths-flat-markup
                        bf8
                        :32
                        - \accent

                        bf8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-third-flat-markup
                        b8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \two-thirds-flat-markup
                        bf16
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        bf16
                        :32
                        - \accent
                        ]

                        r8

                        r8

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-sixth-flat-markup
                        b8
                        :32
                        \f
                        - \accent
                        \<
                        [

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-third-flat-markup
                        b16
                        :32
                        - \accent
                        ]

                    }

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) "8")
                    \times 6/7 {
                        % [Voice 2 measure 7]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        b16
                        :32
                        - \accent
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-third-flat-markup
                        c'8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-sixth-flat-markup
                        b8
                        :32
                        - \accent

                        b8
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-sixth-flat-markup
                        c'16
                        :32
                        \ff
                        - \accent
                        ]

                        r16

                        r16

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-third-flat-markup
                        c'4
                        :32
                        \f
                        - \accent

                    }
                    % [Voice 2 measure 8]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/8

                    R1 * 3/8
                    % [Voice 2 measure 9]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 5/8

                    R1 * 5/8
                    % [Voice 2 measure 10]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 1/2

                    R1 * 1/2
                    % [Voice 2 measure 11]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    e''4
                    \mp
                    - \downbow
                    \>
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    b'4
                    - \upbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    fs'4
                    - \downbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)
                    % [Voice 2 measure 12]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    cs'4
                    \p
                    - \upbow

                    r2.
                    % [Voice 2 measure 13]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/8

                    R1 * 3/8
                    % [Voice 2 measure 14]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 8) "16")
                    \times 8/11 {

                        r16

                        r16

                        \override Staff.Stem.stemlet-length = 0.75
                        c'16
                        :32
                        \ff
                        - \accent
                        \>
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-sixth-flat-markup
                        c'8
                        :32
                        - \accent

                        b8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-third-flat-markup
                        c'8
                        :32
                        - \accent

                        c'16
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-sixth-flat-markup
                        c'16
                        :32
                        - \accent
                        ]

                    }

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) "8")
                    \times 6/7 {
                        % [Voice 2 measure 15]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        b8
                        :32
                        - \accent
                        <>
                        \f

                        r8

                        r8

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-sixth-flat-markup
                        b16
                        :32
                        \ff
                        - \accent
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-third-flat-markup
                        c'16
                        :32
                        - \accent

                        b8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-third-flat-markup
                        b8
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        bf8
                        :32
                        - \accent
                        ]

                    }

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 12) "16")
                    \times 12/13 {
                        % [Voice 2 measure 16]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \five-sixths-flat-markup
                        bf16
                        :32
                        - \accent
                        [

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \two-thirds-flat-markup
                        bf16
                        :32
                        - \accent
                        ]

                        r8

                        r8

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-third-flat-markup
                        b8
                        :32
                        \f
                        - \accent
                        \<
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-sixth-flat-markup
                        b16
                        :32
                        - \accent

                        bf16
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \two-thirds-flat-markup
                        bf8
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-third-flat-markup
                        b16
                        :32
                        - \accent
                        ~
                        ]

                    }
                    % [Voice 2 measure 17]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-third-flat-markup
                    b16
                    :32
                    [

                    bf16
                    :32
                    - \accent
                    ~

                    bf16

                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \five-sixths-flat-markup
                    bf16
                    :32
                    \ff
                    - \accent
                    ]

                    r1
                    % [Voice 2 measure 18]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    af4
                    \mp
                    - \downbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    cs'4
                    - \upbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    fs'4
                    - \downbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)
                    % [Voice 2 measure 19]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    b'8.
                    - \upbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)
                    [

                    \revert Staff.Stem.stemlet-length
                    e''16
                    - \downbow
                    - \tweak style #'solid-line
                    \glissando
                    ~
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    e''8
                    [

                    \revert Staff.Stem.stemlet-length
                    b'8
                    - \upbow
                    - \tweak style #'solid-line
                    \glissando
                    ~
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    b'16
                    [

                    \revert Staff.Stem.stemlet-length
                    fs'8.
                    - \downbow
                    ]

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 21 20) "16")
                    \times 20/21 {
                        % [Voice 2 measure 20]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r16

                        r8

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \two-thirds-flat-markup
                        bf16
                        :32
                        \f
                        - \accent
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-third-flat-markup
                        b16
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-sixth-flat-markup
                        b8
                        :32
                        - \accent

                        bf8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \two-thirds-flat-markup
                        bf8
                        :32
                        - \accent

                        a16
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \five-sixths-flat-markup
                        bf16
                        :32
                        - \accent
                        ]

                        r8

                        r8

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \five-sixths-flat-markup
                        bf4
                        :32
                        \ff
                        - \accent
                        \>
                        <>
                        \f

                    }
                    % [Voice 2 measure 21]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/8

                    R1 * 3/8
                    % [Voice 2 measure 22]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 1/2

                    R1 * 1/2
                    \bar "||"
                    % [Voice 2 measure 23]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

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
                \tag #'voice3 {

                \context Voice = "Voice 3"
                {
                    % [Voice 3 measure 1]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \set Staff.shortInstrumentName =                           %! applying staff names and clefs
                    \markup { va. }                                            %! applying staff names and clefs
                    \set Staff.instrumentName =                                %! applying staff names and clefs
                    "Viola"                                                    %! applying staff names and clefs
                    \clef "varC"
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    gs4
                    \p
                    - \upbow
                    \<
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-flat-markup
                    ef4
                    - \downbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    gs4
                    - \upbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)
                    % [Voice 3 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    cs'4
                    - \downbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    fs'4
                    - \upbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    b'4
                    - \downbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    fs'4
                    - \upbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "4")
                    \times 2/3 {
                        % [Voice 3 measure 3]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        cs'4
                        - \downbow
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        gs4
                        - \upbow
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        ef4
                        \mp
                        - \downbow

                    }

                    r2.
                    % [Voice 3 measure 4]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 5/8

                    R1 * 5/8
                    % [Voice 3 measure 5]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/8

                    R1 * 3/8
                    % [Voice 3 measure 6]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 5/8

                    R1 * 5/8
                    % [Voice 3 measure 7]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/8

                    R1 * 3/8
                    % [Voice 3 measure 8]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "8")
                    \times 4/5 {

                        r8

                        r8

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        e8
                        :32
                        \ff
                        - \accent
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f16
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f16
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f8
                        :32
                        - \accent
                        ]

                    }

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 23 20) "16")
                    \times 20/23 {
                        % [Voice 3 measure 9]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f8
                        :32
                        - \accent
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        fs8
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f16
                        :32
                        - \accent
                        ]

                        r16

                        r8

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f8
                        :32
                        \f
                        - \accent
                        \<
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        e8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f16
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f16
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        e8
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f8
                        :32
                        \ff
                        - \accent
                        ]

                        r16

                        r16

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f16
                        :32
                        \f
                        - \accent
                        ~

                    }

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "8")
                    \times 4/5 {
                        % [Voice 3 measure 10]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f16
                        :32
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        e8
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f16
                        :32
                        - \accent
                        ]

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f4
                        :32
                        - \accent

                    }

                    r2
                    % [Voice 3 measure 11]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/8

                    R1 * 3/8
                    % [Voice 3 measure 12]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 1/2

                    R1 * 1/2
                    % [Voice 3 measure 13]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/8

                    R1 * 3/8
                    % [Voice 3 measure 14]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 1/2

                    R1 * 1/2
                    % [Voice 3 measure 15]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    gs4
                    \p
                    - \upbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    cs'4
                    - \downbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    fs'4
                    - \upbow
                    % [Voice 3 measure 16]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/8

                    R1 * 3/8
                    % [Voice 3 measure 17]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 5/8

                    R1 * 5/8
                    % [Voice 3 measure 18]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 1/2

                    R1 * 1/2

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 12) "16")
                    \times 12/13 {
                        % [Voice 3 measure 19]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r16

                        r8

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f16
                        :32
                        \ff
                        - \accent
                        \>
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f16
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        fs8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f16
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        fs16
                        :32
                        - \accent
                        ]
                        <>
                        \f

                    }
                    % [Voice 3 measure 20]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    f4
                    :32
                    \ff
                    - \accent

                    r2.
                    % [Voice 3 measure 21]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/8

                    R1 * 3/8
                    % [Voice 3 measure 22]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) "16")
                    \times 8/9 {

                        r8

                        r8

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f16
                        :32
                        \f
                        - \accent
                        \<

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f4
                        :32
                        \ff
                        - \accent
                        \bar "||"

                    }
                    % [Voice 3 measure 23]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

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
                \tag #'voice4 {

                \context Voice = "Voice 4"
                {
                    % [Voice 4 measure 1]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \set Staff.shortInstrumentName =                           %! applying staff names and clefs
                    \markup { vc. }                                            %! applying staff names and clefs
                    \set Staff.instrumentName =                                %! applying staff names and clefs
                    "Violoncello"                                              %! applying staff names and clefs
                    \clef "bass"
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    gs4
                    \mp
                    - \downbow
                    \>
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    ds4
                    - \upbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    as,4
                    - \downbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)
                    % [Voice 4 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    es,4
                    - \upbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    c,4
                    \p
                    - \downbow

                    r2
                    % [Voice 4 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) "8")
                    \times 6/5 {

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        es,8
                        \mp
                        - \upbow
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        as,8
                        - \downbow
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        ds8
                        - \upbow
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        gs8
                        - \downbow
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        ds8
                        - \upbow
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)
                        ]

                    }

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "4")
                    \times 2/3 {
                        % [Voice 4 measure 4]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        as,4
                        - \downbow
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        es,4
                        - \upbow
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        c,4
                        - \downbow

                    }

                    r2.
                    % [Voice 4 measure 5]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "8")
                    \times 4/5 {

                        r16

                        r8

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        ds,8
                        :32
                        \f
                        - \accent
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        ds,16
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        e,16
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        ds,8
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        ds,16
                        :32
                        - \accent
                        ~
                        ]

                    }

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 8) "16")
                    \times 8/11 {
                        % [Voice 4 measure 6]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        ds,16
                        :32
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        ds,8
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d,16
                        :32
                        - \accent
                        ]

                        r16

                        r8

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d,8
                        :32
                        \ff
                        - \accent
                        \>
                        [

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        cs,8
                        :32
                        - \accent
                        ]

                    }

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) "8")
                    \times 6/7 {

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d,16
                        :32
                        - \accent
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d,16
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d,8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        ds,8
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        ds,8
                        :32
                        - \accent
                        ]
                        <>
                        \f

                        r16

                        r16

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d,8
                        :32
                        \ff
                        - \accent
                        [

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        ds,8
                        :32
                        - \accent
                        ]

                    }

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 12) "16")
                    \times 12/13 {
                        % [Voice 4 measure 7]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d,8
                        :32
                        - \accent
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d,16
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d,16
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        ds,8
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        ds,8
                        :32
                        - \accent
                        ]

                        r16

                        r4

                    }
                    % [Voice 4 measure 8]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/8

                    R1 * 3/8
                    % [Voice 4 measure 9]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 5/8

                    R1 * 5/8
                    % [Voice 4 measure 10]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r8.

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    ds,16
                    :32
                    \f
                    - \accent
                    ~

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    ds,16
                    \<
                    [

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    e,16
                    :32
                    - \accent

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    e,16
                    :32
                    - \accent

                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    ds,16
                    :32
                    - \accent
                    ~
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    ds,16
                    [

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    e,16
                    :32
                    - \accent
                    ~

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    e,16

                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    e,16
                    :32
                    - \accent
                    ~
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    e,16
                    [

                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    e,16
                    :32
                    \ff
                    - \accent
                    ]

                    r8

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 12) "16")
                    \times 12/13 {
                        % [Voice 4 measure 11]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r16

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        e,8
                        :32
                        \f
                        - \accent
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        e,8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        e,16
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        e,16
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        e,8
                        :32
                        - \accent
                        ]

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        e,4
                        :32
                        - \accent

                    }
                    % [Voice 4 measure 12]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 1/2

                    R1 * 1/2
                    % [Voice 4 measure 13]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    es,4
                    \p
                    - \upbow
                    \<
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    as,4
                    - \downbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    ds4
                    - \upbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)
                    % [Voice 4 measure 14]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    gs4
                    - \downbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    ds4
                    - \upbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    as,4
                    - \downbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    es,4
                    \mp
                    - \upbow
                    % [Voice 4 measure 15]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/8

                    R1 * 3/8
                    % [Voice 4 measure 16]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/8

                    R1 * 3/8
                    % [Voice 4 measure 17]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 5/8

                    R1 * 5/8
                    % [Voice 4 measure 18]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) "8")
                    \times 6/7 {

                        r16

                        r16

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        ds,8
                        :32
                        \ff
                        - \accent
                        \>
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        ds,8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d,8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d,16
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d,16
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        cs,8
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d,8
                        :32
                        - \accent
                        ]
                        <>
                        \f

                    }

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "8.")
                    \times 4/5 {
                        % [Voice 4 measure 19]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r8

                        r16

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d,16
                        :32
                        \ff
                        - \accent
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d,8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        cs,8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d,8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d,16
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        ds,16
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        ds,8
                        :32
                        - \accent
                        ]

                        r16

                    }

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "8")
                    \times 4/5 {
                        % [Voice 4 measure 20]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r16

                        r8

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d,16
                        :32
                        \f
                        - \accent
                        \<
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d,16
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d,16
                        :32
                        - \accent
                        ]

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        cs,4
                        :32
                        \ff
                        - \accent

                    }

                    r2.
                    % [Voice 4 measure 21]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/8

                    R1 * 3/8
                    % [Voice 4 measure 22]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 1/2

                    R1 * 1/2
                    \bar "||"
                    % [Voice 4 measure 23]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

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
