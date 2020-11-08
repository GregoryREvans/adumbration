
    \context Score = "adumbration Score"
    <<

        \context TimeSignatureContext = "Global Context"
        {
            % [Global Context measure 1]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=153
            \time 3/4                                                          %! scaling time signatures
            \mark \markup {
                \bold
                    {
                    }
                }
            s1 * 3/4
            ^ \markup {
                \box
                    \override
                        #'(font-name . "STIXGeneral Bold")
                        \caps
                            Fluxes/Phylums
                }
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-mixed-number-markup #2 #0 #1 #"153" #"1" #"3"
                  \hspace #1
                  \upright [
                  \abjad-metric-modulation #3 #1 #2 #0 #'(0.6 . 0.6)
                  \hspace #0.5
                  \upright ]
              }
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
                    e'4
                    \p
                    - \baca-full-downbow
                    ^ \markup { ½clt. }
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a'4
                    - \baca-full-upbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    d''4
                    - \baca-stop-on-string-full-downbow
                    % [Voice 1 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 1/2

                    R1 * 1/2

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) "4")
                    \times 5/6 {
                        % [Voice 1 measure 3]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        g''4
                        \mp
                        - \baca-full-downbow
                        ^ \markup { clt. }
                        \>
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        c'''4
                        - \baca-full-upbow
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        g''4
                        - \baca-full-downbow
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d''4
                        - \baca-full-upbow
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'4
                        - \baca-full-downbow
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        e'4
                        - \baca-full-upbow
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                    }

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "4")
                    \times 2/3 {
                        % [Voice 1 measure 4]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'4
                        - \baca-full-downbow
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d''4
                        - \baca-full-upbow
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        g''4
                        \p
                        - \baca-stop-on-string-full-downbow

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
                    \tweak Accidental.text \abjad-natural-markup
                    e'16
                    :32
                    \f
                    - \accent
                    ~
                    [

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    e'16

                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-quarter-sharp-markup
                    eqs'16
                    :32
                    - \accent
                    ~
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-quarter-sharp-markup
                    eqs'16
                    [

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    e'16
                    :32
                    - \accent

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    e'16
                    :32
                    - \accent

                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-quarter-sharp-markup
                    eqs'16
                    :32
                    - \accent
                    ~
                    ]

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) "16")
                    \times 8/9 {
                        % [Voice 1 measure 7]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-sharp-markup
                        eqs'16
                        :32
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f'8
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-sharp-markup
                        fqs'8
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
                    \tweak Accidental.text \abjad-natural-markup
                    c'''4
                    \mp
                    - \baca-full-downbow
                    ^ \markup { ½clt. }
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    g''4
                    - \baca-full-upbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    d''4
                    - \baca-full-downbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a'4
                    - \baca-full-upbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    e'4
                    - \baca-stop-on-string-full-downbow
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

                        r4

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        e'16
                        :32
                        \ff
                        - \accent
                        \>
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f'16
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-sharp-markup
                        eqs'8
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        e'8
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
                        e'8
                        :32
                        - \accent
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-sharp-markup
                        eqs'16
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f'16
                        :32
                        - \accent
                        ]
                        <>
                        \f

                        r8.

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        e'4
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
                        \tweak Accidental.text \abjad-natural-markup
                        a'4
                        \p
                        - \baca-full-downbow
                        ^ \markup { norm. }
                        \<
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d''4
                        - \baca-full-upbow
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        g''4
                        - \baca-full-downbow
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        c'''4
                        - \baca-full-upbow
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        g''4
                        - \baca-full-downbow
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d''4
                        - \baca-full-upbow
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                    }
                    % [Voice 1 measure 18]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a'4
                    \mp
                    - \baca-stop-on-string-full-downbow

                    r2.
                    % [Voice 1 measure 19]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "8")
                    \times 4/5 {

                        r8.

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        e'8
                        :32
                        \f
                        - \accent
                        \<
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-sharp-markup
                        eqs'8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f'16
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-sharp-markup
                        fqs'16
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        fs'16
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
                        fs'16
                        :32
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        fs'8
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f'8
                        :32
                        \ff
                        - \accent
                        ]

                        r8

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        e'8
                        :32
                        \f
                        - \accent
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        e'8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-sharp-markup
                        eqs'8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f'16
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        e'16
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-sharp-markup
                        fqs'8
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f'8
                        :32
                        - \accent
                        ]

                        r8

                    }
                    % [Voice 1 measure 21]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r16

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-quarter-sharp-markup
                    eqs'16
                    :32
                    \ff
                    - \accent
                    \>
                    [

                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    e'8
                    :32
                    - \accent
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    e'8
                    :32
                    - \accent
                    [

                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    f'8
                    :32
                    - \accent
                    ]

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-quarter-sharp-markup
                    eqs'4
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
                    c'4
                    \p
                    - \baca-full-downbow
                    ^ \markup { ½clt. }
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    f'4
                    - \baca-full-upbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    bf'4
                    - \baca-full-downbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)
                    % [Voice 2 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    ef''4
                    - \baca-stop-on-string-full-upbow

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

                        r4

                        \override Staff.Stem.stemlet-length = 0.75
                        c'16
                        :32
                        \ff
                        - \accent
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-third-sharp-markup
                        c'16
                        :32
                        - \accent

                        cqs'8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-third-flat-markup
                        df'8
                        :32
                        - \accent

                        dqf'8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-third-sharp-markup
                        c'16
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-third-flat-markup
                        df'16
                        :32
                        - \accent
                        ]

                        r4

                        \override Staff.Stem.stemlet-length = 0.75
                        d'8
                        :32
                        \f
                        - \accent
                        \<
                        [

                        \revert Staff.Stem.stemlet-length
                        dqf'16
                        :32
                        - \accent
                        ]

                    }

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) "8")
                    \times 6/7 {
                        % [Voice 2 measure 7]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-third-sharp-markup
                        d'16
                        :32
                        - \accent
                        [

                        d'8
                        :32
                        - \accent

                        d'8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-third-sharp-markup
                        d'8
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        dqf'16
                        :32
                        \ff
                        - \accent
                        ]

                        r8

                        d'4
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

                    af''4
                    \mp
                    - \baca-full-downbow
                    ^ \markup { clt. }
                    \>
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    ef''4
                    - \baca-full-upbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    bf'4
                    - \baca-full-downbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)
                    % [Voice 2 measure 12]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    f'4
                    \p
                    - \baca-stop-on-string-full-upbow

                    r2.
                    % [Voice 2 measure 13]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/8

                    R1 * 3/8
                    % [Voice 2 measure 14]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 8) "16")
                    \times 8/11 {

                        r8

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-third-flat-markup
                        df'16
                        :32
                        \ff
                        - \accent
                        \>
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-third-sharp-markup
                        c'8
                        :32
                        - \accent

                        c'8
                        :32
                        - \accent

                        cqs'8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-third-flat-markup
                        df'16
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-third-sharp-markup
                        c'16
                        :32
                        - \accent
                        ]

                    }

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) "8")
                    \times 6/7 {
                        % [Voice 2 measure 15]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        c'8
                        :32
                        - \accent
                        <>
                        \f

                        r4

                        \override Staff.Stem.stemlet-length = 0.75
                        cqs'16
                        :32
                        \ff
                        - \accent
                        [

                        cqs'16
                        :32
                        - \accent

                        c'8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-third-sharp-markup
                        c'8
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-third-flat-markup
                        df'8
                        :32
                        - \accent
                        ]

                    }

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 12) "16")
                    \times 12/13 {
                        % [Voice 2 measure 16]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        d'16
                        :32
                        - \accent
                        [

                        \revert Staff.Stem.stemlet-length
                        dqf'16
                        :32
                        - \accent
                        ]

                        r4

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-third-sharp-markup
                        c'8
                        :32
                        \f
                        - \accent
                        \<
                        [

                        cqs'16
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-third-flat-markup
                        df'16
                        :32
                        - \accent

                        dqf'8
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-third-sharp-markup
                        c'16
                        :32
                        - \accent
                        ~
                        ]

                    }
                    % [Voice 2 measure 17]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-third-sharp-markup
                    c'16
                    :32
                    [

                    df'16
                    :32
                    - \accent
                    ~

                    df'16

                    \revert Staff.Stem.stemlet-length
                    d'16
                    :32
                    \ff
                    - \accent
                    ]

                    r1
                    % [Voice 2 measure 18]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    c'4
                    \mp
                    - \baca-full-downbow
                    ^ \markup { ½clt. }
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    f'4
                    - \baca-full-upbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    bf'4
                    - \baca-full-downbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)
                    % [Voice 2 measure 19]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    ef''8.
                    - \baca-full-upbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)
                    [

                    \revert Staff.Stem.stemlet-length
                    af''16
                    - \baca-full-downbow
                    - \tweak style #'solid-line
                    \glissando
                    ~
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    af''8
                    [

                    \revert Staff.Stem.stemlet-length
                    ef''8
                    - \baca-full-upbow
                    - \tweak style #'solid-line
                    \glissando
                    ~
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    ef''16
                    [

                    \revert Staff.Stem.stemlet-length
                    bf'8.
                    - \baca-stop-on-string-full-downbow
                    ]

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 21 20) "16")
                    \times 20/21 {
                        % [Voice 2 measure 20]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r8.

                        \override Staff.Stem.stemlet-length = 0.75
                        dqf'16
                        :32
                        \f
                        - \accent
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-third-sharp-markup
                        c'16
                        :32
                        - \accent

                        cqs'8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-third-flat-markup
                        df'8
                        :32
                        - \accent

                        dqf'8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-third-sharp-markup
                        d'16
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        d'16
                        :32
                        - \accent
                        ]

                        r4

                        d'4
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
                    \tweak Accidental.text \abjad-natural-markup
                    d'4
                    \p
                    - \baca-full-downbow
                    ^ \markup { norm. }
                    \<
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a4
                    - \baca-full-upbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    d'4
                    - \baca-full-downbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)
                    % [Voice 3 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    g'4
                    - \baca-full-upbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    c''4
                    - \baca-full-downbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    f''4
                    - \baca-full-upbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    c''4
                    - \baca-full-downbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "4")
                    \times 2/3 {
                        % [Voice 3 measure 3]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        g'4
                        - \baca-full-upbow
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d'4
                        - \baca-full-downbow
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a4
                        \mp
                        - \baca-stop-on-string-full-upbow

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

                        r4

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        b8
                        :32
                        \ff
                        - \accent
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-flat-markup
                        bqf16
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        b16
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        bf8
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
                        \tweak Accidental.text \one-quarter-flat-markup
                        bqf8
                        :32
                        - \accent
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a8
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        bf16
                        :32
                        - \accent
                        ]

                        r8.

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        b8
                        :32
                        \f
                        - \accent
                        \<
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        b8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-flat-markup
                        bqf16
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        b16
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        b8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        b8
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-flat-markup
                        bqf8
                        :32
                        \ff
                        - \accent
                        ]

                        r8

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        bf16
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
                        \tweak Accidental.text \abjad-flat-markup
                        bf16
                        :32
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        b8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        b8
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-flat-markup
                        bqf16
                        :32
                        - \accent
                        ]

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        b4
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
                    \tweak Accidental.text \abjad-natural-markup
                    d'4
                    \p
                    - \baca-full-downbow
                    ^ \markup { ½clt. }
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    g'4
                    - \baca-full-upbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    c''4
                    - \baca-stop-on-string-full-downbow
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

                        r8.

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        bf16
                        :32
                        \ff
                        - \accent
                        \>
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-flat-markup
                        bqf16
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        bf8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        b8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-flat-markup
                        bqf16
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        :32
                        - \accent
                        ]
                        <>
                        \f

                    }
                    % [Voice 3 measure 20]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-flat-markup
                    bf4
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

                        r4

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        b16
                        :32
                        \f
                        - \accent
                        \<

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-flat-markup
                        bqf4
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
                    \tweak Accidental.text \abjad-flat-markup
                    af4
                    \mp
                    - \baca-full-downbow
                    ^ \markup { clt. }
                    \>
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-flat-markup
                    ef4
                    - \baca-full-upbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-flat-markup
                    bf,4
                    - \baca-full-downbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)
                    % [Voice 4 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    f,4
                    - \baca-full-upbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    c,4
                    \p
                    - \baca-stop-on-string-full-downbow

                    r2
                    % [Voice 4 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) "8")
                    \times 6/5 {

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f,8
                        \mp
                        - \baca-full-downbow
                        ^ \markup { ½clt. }
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        bf,8
                        - \baca-full-upbow
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        ef8
                        - \baca-full-downbow
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        af8
                        - \baca-full-upbow
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        ef8
                        - \baca-full-downbow
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)
                        ]

                    }

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "4")
                    \times 2/3 {
                        % [Voice 4 measure 4]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        bf,4
                        - \baca-full-upbow
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f,4
                        - \baca-full-downbow
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        c,4
                        - \baca-stop-on-string-full-upbow

                    }

                    r2.
                    % [Voice 4 measure 5]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "8")
                    \times 4/5 {

                        r8.

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        c,8
                        :32
                        \f
                        - \accent
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-sharp-markup
                        cqs,16
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-sharp-markup
                        cqs,16
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        c,8
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        c,16
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
                        \tweak Accidental.text \abjad-natural-markup
                        c,16
                        :32
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-sharp-markup
                        cqs,8
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        df,16
                        :32
                        - \accent
                        ]

                        r8.

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-flat-markup
                        dqf,8
                        :32
                        \ff
                        - \accent
                        \>
                        [

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d,8
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
                        \tweak Accidental.text \abjad-flat-markup
                        df,16
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-flat-markup
                        dqf,8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        c,8
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-sharp-markup
                        cqs,8
                        :32
                        - \accent
                        ]
                        <>
                        \f

                        r8

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        df,8
                        :32
                        \ff
                        - \accent
                        [

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        c,8
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
                        \tweak Accidental.text \one-quarter-flat-markup
                        dqf,8
                        :32
                        - \accent
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d,16
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        df,16
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        c,8
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        c,8
                        :32
                        - \accent
                        ]

                        r4

                        r16

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
                    \tweak Accidental.text \one-quarter-sharp-markup
                    cqs,16
                    :32
                    \f
                    - \accent
                    ~

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-quarter-sharp-markup
                    cqs,16
                    \<
                    [

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-quarter-sharp-markup
                    cqs,16
                    :32
                    - \accent

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    c,16
                    :32
                    - \accent

                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    c,16
                    :32
                    - \accent
                    ~
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    c,16
                    [

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-quarter-sharp-markup
                    cqs,16
                    :32
                    - \accent
                    ~

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-quarter-sharp-markup
                    cqs,16

                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-flat-markup
                    df,16
                    :32
                    - \accent
                    ~
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-flat-markup
                    df,16
                    [

                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    c,16
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
                        \tweak Accidental.text \one-quarter-flat-markup
                        dqf,8
                        :32
                        \f
                        - \accent
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d,8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        df,16
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        c,16
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-flat-markup
                        dqf,8
                        :32
                        - \accent
                        ]

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d,4
                        :32
                        - \accent

                    }
                    % [Voice 4 measure 12]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 1/2

                    R1 * 1/2
                    % [Voice 4 measure 13]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    f,4
                    \p
                    - \baca-full-downbow
                    ^ \markup { norm. }
                    \<
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-flat-markup
                    bf,4
                    - \baca-full-upbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-flat-markup
                    ef4
                    - \baca-full-downbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)
                    % [Voice 4 measure 14]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-flat-markup
                    af4
                    - \baca-full-upbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-flat-markup
                    ef4
                    - \baca-full-downbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-flat-markup
                    bf,4
                    - \baca-full-upbow
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    f,4
                    \mp
                    - \baca-stop-on-string-full-downbow
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

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-flat-markup
                        dqf,8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        c,8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        df,16
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-sharp-markup
                        cqs,16
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        c,8
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        c,8
                        :32
                        - \accent
                        ]
                        <>
                        \f

                    }

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "8.")
                    \times 4/5 {
                        % [Voice 4 measure 19]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r8.

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        df,16
                        :32
                        \ff
                        - \accent
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-sharp-markup
                        cqs,8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        c,8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        c,8
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        df,16
                        :32
                        - \accent

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d,16
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-flat-markup
                        dqf,8
                        :32
                        - \accent
                        ]

                        r16

                    }

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "8")
                    \times 4/5 {
                        % [Voice 4 measure 20]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r8.

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        c,16
                        :32
                        \f
                        - \accent
                        \<
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-flat-markup
                        df,16
                        :32
                        - \accent

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \one-quarter-sharp-markup
                        cqs,16
                        :32
                        - \accent
                        ]

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        c,4
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
