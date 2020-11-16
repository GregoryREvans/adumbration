
    \context Score = "adumbration Score"
    <<

        \context TimeSignatureContext = "Global Context"
        {
            % [Global Context measure 1]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=76
            \time 5/4                                                          %! scaling time signatures
            \mark \markup {
                \bold
                    {
                        x5
                    }
                }
            s1 * 5/4
            ^ \markup {
                \box
                    \override
                        #'(font-name . "STIXGeneral Bold")
                        \caps
                            "A Thousand Plateaus"
                }
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-mixed-number-markup #2 #0 #1 #"76" #"2" #"3"
                  \hspace #1
                  \upright [
                  \abjad-metric-modulation #1 #0 #2 #0 #'(0.6 . 0.6)
                  \hspace #0.5
                  \upright ]
              }
            }
            % [Global Context measure 2]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 3]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 4]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 5]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 6]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 7]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 8]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 9]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
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

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 14]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 15]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 16]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

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
                    r2.

                    r2
                    % [Voice 1 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2.
                    % [Voice 1 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    gs'''2.
                    \pp
                    ^ \markup { "XSB (noise poco a poco)" }
                    _ \markup {
                        \box
                            "cresc. a m.168 (ff)"
                        }
                    \<
                    ~
                    % [Voice 1 measure 4]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    gs'''2.
                    ~
                    % [Voice 1 measure 5]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    gs'''2.
                    ~
                    % [Voice 1 measure 6]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    gs'''2.
                    ~

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    gs'''2
                    ~
                    % [Voice 1 measure 7]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    gs'''2.
                    ~

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    gs'''2
                    ~
                    % [Voice 1 measure 8]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    gs'''1
                    ~
                    % [Voice 1 measure 9]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    gs'''2.
                    ~
                    % [Voice 1 measure 10]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    gs'''4
                    \!
                    \ff

                    r1
                    % [Voice 1 measure 11]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    g''2.
                    \mf
                    ^ \markup { "norm. (noise poco a poco)" }
                    ~
                    % [Voice 1 measure 12]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    g''2.
                    ~
                    % [Voice 1 measure 13]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    g''2.
                    ~
                    % [Voice 1 measure 14]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    g''2.
                    ~
                    % [Voice 1 measure 15]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    g''1
                    \bar ":|."
                    % [Voice 1 measure 16]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

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
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a'8.
                    \sfz
                    - \baca-full-downbow
                    [
                    _ \markup {
                      \column {
                           \line {(x1-3 \fontsize #-3 \musicglyph "f")}
                           \line {(x4-5 \fontsize #-3 \concat {\musicglyph "f" \musicglyph "f"})}
                       }}

                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a'16
                    - \baca-full-upbow
                    ~
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a'16
                    [

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a'16
                    - \baca-full-downbow
                    ~

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a'16

                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a'16
                    - \baca-full-upbow
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a'16
                    - \baca-full-downbow
                    [

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a'16
                    - \baca-full-upbow
                    ~

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a'16

                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a'16
                    - \baca-full-downbow
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a'16
                    - \baca-full-upbow
                    [

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a'16
                    - \baca-full-downbow
                    ~

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a'16

                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a'16
                    - \baca-full-upbow
                    ~
                    ]

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "16")
                    \times 4/5 {

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-downbow

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-upbow
                        ~
                        ]

                    }

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) "8")
                    \times 6/7 {
                        % [Voice 2 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'8
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'8
                        - \baca-full-upbow

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-downbow
                        ]

                    }

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 19 16) "16")
                    \times 16/19 {
                        % [Voice 2 measure 3]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-upbow
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'8
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'8
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'8
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-upbow

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-downbow
                        ]

                    }

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) "8")
                    \times 6/7 {
                        % [Voice 2 measure 4]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'8
                        - \baca-full-upbow
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'8
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'8
                        - \baca-full-downbow

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'8
                        - \baca-full-upbow
                        ]

                    }

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "16")
                    \times 4/5 {
                        % [Voice 2 measure 5]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-downbow
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-downbow

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'8
                        - \baca-full-upbow
                        ]

                    }

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a'8
                    - \baca-full-downbow
                    [

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a'16
                    - \baca-full-upbow

                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a'16
                    - \baca-full-downbow
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a'8
                    - \baca-full-upbow
                    [

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a'16
                    - \baca-full-downbow

                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a'16
                    - \baca-full-upbow
                    ]

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) "16")
                    \times 8/9 {
                        % [Voice 2 measure 6]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'8
                        - \baca-full-downbow
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'8
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-downbow

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'8
                        - \baca-full-upbow
                        ]

                    }

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) "8")
                    \times 6/7 {

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'8
                        - \baca-full-downbow
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'8
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'8
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-downbow

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-upbow
                        ]

                    }

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) "32")
                    \times 8/7 {
                        % [Voice 2 measure 7]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'32
                        - \baca-full-downbow
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'32
                        - \baca-full-upbow

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'32
                        - \baca-full-downbow
                        ]

                    }

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) "8")
                    \times 8/9 {

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'8
                        - \baca-full-upbow
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'8
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'8
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-downbow

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-upbow
                        ~
                        ]

                    }

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 17 16) "16")
                    \times 16/17 {
                        % [Voice 2 measure 8]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        ^ \markup { "noise poco a poco" }
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'8
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'8
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-downbow

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-upbow
                        ~
                        ]

                    }
                    % [Voice 2 measure 9]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a'16
                    [

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a'16
                    - \baca-full-downbow

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a'16
                    - \baca-full-upbow

                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a'16
                    - \baca-full-downbow
                    ~
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a'16
                    [

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a'16
                    - \baca-full-upbow
                    ~

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a'16

                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a'16
                    - \baca-full-downbow
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a'16
                    - \baca-full-upbow
                    [

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a'16
                    - \baca-full-downbow

                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a'8
                    - \baca-full-upbow
                    ]

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "16")
                    \times 4/5 {
                        % [Voice 2 measure 10]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'4
                        - \baca-stop-on-string-full-upbow

                    }

                    r1
                    % [Voice 2 measure 11]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak NoteHead.style #'harmonic-mixed
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    gs'4
                    \f
                    ^ \markup { IV. }
                    ^ \markup { "norm. (noise poco a poco)" }
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak NoteHead.style #'harmonic-mixed
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    d''4
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak NoteHead.style #'harmonic-mixed
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    gs''4
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)
                    % [Voice 2 measure 12]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak NoteHead.style #'harmonic-mixed
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    as''8.
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)
                    [

                    \revert Staff.Stem.stemlet-length
                    \tweak NoteHead.style #'harmonic-mixed
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    c'''16
                    - \tweak style #'solid-line
                    \glissando
                    ~
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak NoteHead.style #'harmonic-mixed
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    c'''8
                    [

                    \revert Staff.Stem.stemlet-length
                    \tweak NoteHead.style #'harmonic-mixed
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    cs'''8
                    - \tweak style #'solid-line
                    \glissando
                    ~
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak NoteHead.style #'harmonic-mixed
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    cs'''16
                    [

                    \revert Staff.Stem.stemlet-length
                    \tweak NoteHead.style #'harmonic-mixed
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    d'''8.
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)
                    ]
                    % [Voice 2 measure 13]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak NoteHead.style #'harmonic-mixed
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-quarter-sharp-markup
                    dqs'''4
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak NoteHead.style #'harmonic-mixed
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    ds'''4
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak NoteHead.style #'harmonic-mixed
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \three-quarters-sharp-markup
                    dtqs'''4
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)
                    % [Voice 2 measure 14]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak NoteHead.style #'harmonic-mixed
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    e'''8.
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)
                    [

                    \revert Staff.Stem.stemlet-length
                    \tweak NoteHead.style #'harmonic-mixed
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \three-quarters-sharp-markup
                    dtqs'''16
                    - \tweak style #'solid-line
                    \glissando
                    ~
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak NoteHead.style #'harmonic-mixed
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \three-quarters-sharp-markup
                    dtqs'''8
                    [

                    \revert Staff.Stem.stemlet-length
                    \tweak NoteHead.style #'harmonic-mixed
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    ds'''8
                    - \tweak style #'solid-line
                    \glissando
                    ~
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak NoteHead.style #'harmonic-mixed
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    ds'''16
                    [

                    \revert Staff.Stem.stemlet-length
                    \tweak NoteHead.style #'harmonic-mixed
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-quarter-sharp-markup
                    dqs'''8.
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)
                    ]

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "2")
                    \times 2/3 {
                        % [Voice 2 measure 15]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak NoteHead.style #'harmonic-mixed
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d'''4
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak NoteHead.style #'harmonic-mixed
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        cs'''4
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak NoteHead.style #'harmonic-mixed
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        c'''4
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak NoteHead.style #'harmonic-mixed
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        as''4
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak NoteHead.style #'harmonic-mixed
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        gs''4
                        - \tweak style #'solid-line                            %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak NoteHead.style #'harmonic-mixed
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d''4
                        \bar ":|."

                    }
                    % [Voice 2 measure 16]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

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

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 10) "8")
                    \times 10/11 {
                        % [Voice 3 measure 1]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \set Staff.shortInstrumentName =                       %! applying staff names and clefs
                        \markup { va. }                                        %! applying staff names and clefs
                        \set Staff.instrumentName =                            %! applying staff names and clefs
                        "Viola"                                                %! applying staff names and clefs
                        \clef "varC"
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        \sfz
                        - \baca-full-downbow
                        [
                        _ \markup {
                          \column {
                               \line {(x1-3 \fontsize #-3 \musicglyph "f")}
                               \line {(x4-5 \fontsize #-3 \concat {\musicglyph "f" \musicglyph "f"})}
                           }}

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a8
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a8
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-downbow

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a8
                        - \baca-full-upbow
                        ]

                    }

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) "32")
                    \times 8/7 {
                        % [Voice 3 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-downbow
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a32
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a32
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a32
                        - \baca-full-upbow

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-downbow
                        ]

                    }

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "8")
                    \times 4/5 {

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a8
                        - \baca-full-upbow
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-downbow

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a8
                        - \baca-full-upbow
                        ]

                    }

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 17 16) "16")
                    \times 16/17 {
                        % [Voice 3 measure 3]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a8
                        - \baca-full-downbow
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a8
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-downbow

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a8
                        - \baca-full-upbow
                        ]

                    }
                    % [Voice 3 measure 4]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a8
                    - \baca-full-downbow
                    [

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a16
                    - \baca-full-upbow

                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a16
                    - \baca-full-downbow
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a16
                    - \baca-full-upbow
                    [

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a16
                    - \baca-full-downbow
                    ~

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a16

                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a16
                    - \baca-full-upbow
                    ~
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a16
                    [

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a16
                    - \baca-full-downbow

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a16
                    - \baca-full-upbow

                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a16
                    - \baca-full-downbow
                    ~
                    ]

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 12) "16")
                    \times 12/13 {
                        % [Voice 3 measure 5]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a8
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a8
                        - \baca-full-downbow

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-upbow
                        ~
                        ]

                    }

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 10) "8")
                    \times 10/11 {
                        % [Voice 3 measure 6]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a8
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a8
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-upbow

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a8
                        - \baca-full-downbow
                        ]

                    }

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) "32")
                    \times 8/7 {
                        % [Voice 3 measure 7]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a32
                        - \baca-full-upbow
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a32
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-downbow

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a32
                        - \baca-full-upbow
                        ]

                    }

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) "8")
                    \times 8/9 {

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-downbow
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a8
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a8
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-upbow

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-downbow
                        ]

                    }

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) "16")
                    \times 8/9 {
                        % [Voice 3 measure 8]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-upbow
                        ^ \markup { "noise poco a poco" }
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a8
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-upbow

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a8
                        - \baca-full-downbow
                        ]

                    }

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a16
                    - \baca-full-upbow
                    [

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a16
                    - \baca-full-downbow

                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a8
                    - \baca-full-upbow
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a8
                    - \baca-full-downbow
                    [

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a16
                    - \baca-full-upbow

                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a16
                    - \baca-full-downbow
                    ]

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 12) "16")
                    \times 12/13 {
                        % [Voice 3 measure 9]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-upbow
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a8
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16
                        - \baca-full-downbow

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a8
                        - \baca-full-upbow
                        ]

                    }

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "8")
                    \times 2/3 {
                        % [Voice 3 measure 10]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a4
                        - \baca-stop-on-string-full-upbow

                    }

                    r1
                    % [Voice 3 measure 11]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak NoteHead.style #'harmonic-mixed
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    gs8.
                    \f
                    ^ \markup { III. }
                    ^ \markup { "norm. (noise poco a poco)" }
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)
                    [

                    \revert Staff.Stem.stemlet-length
                    \tweak NoteHead.style #'harmonic-mixed
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    d'16
                    - \tweak style #'solid-line
                    \glissando
                    ~
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak NoteHead.style #'harmonic-mixed
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    d'8
                    [

                    \revert Staff.Stem.stemlet-length
                    \tweak NoteHead.style #'harmonic-mixed
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    gs'8
                    - \tweak style #'solid-line
                    \glissando
                    ~
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak NoteHead.style #'harmonic-mixed
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    gs'16
                    [

                    \revert Staff.Stem.stemlet-length
                    \tweak NoteHead.style #'harmonic-mixed
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    as'8.
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)
                    ]
                    % [Voice 3 measure 12]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak NoteHead.style #'harmonic-mixed
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    c''4
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak NoteHead.style #'harmonic-mixed
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    cs''4
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak NoteHead.style #'harmonic-mixed
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    d''4
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)
                    % [Voice 3 measure 13]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak NoteHead.style #'harmonic-mixed
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-quarter-sharp-markup
                    dqs''8.
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)
                    [

                    \revert Staff.Stem.stemlet-length
                    \tweak NoteHead.style #'harmonic-mixed
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    ds''16
                    - \tweak style #'solid-line
                    \glissando
                    ~
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak NoteHead.style #'harmonic-mixed
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    ds''8
                    [

                    \revert Staff.Stem.stemlet-length
                    \tweak NoteHead.style #'harmonic-mixed
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \three-quarters-sharp-markup
                    dtqs''8
                    - \tweak style #'solid-line
                    \glissando
                    ~
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak NoteHead.style #'harmonic-mixed
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \three-quarters-sharp-markup
                    dtqs''16
                    [

                    \revert Staff.Stem.stemlet-length
                    \tweak NoteHead.style #'harmonic-mixed
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    e''8.
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)
                    ]
                    % [Voice 3 measure 14]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak NoteHead.style #'harmonic-mixed
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \three-quarters-sharp-markup
                    dtqs''4
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak NoteHead.style #'harmonic-mixed
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    ds''4
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak NoteHead.style #'harmonic-mixed
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \one-quarter-sharp-markup
                    dqs''4
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)
                    % [Voice 3 measure 15]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak NoteHead.style #'harmonic-mixed
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    d''4
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak NoteHead.style #'harmonic-mixed
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    cs''4
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak NoteHead.style #'harmonic-mixed
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    c''4
                    - \tweak style #'solid-line                                %! abjad.glissando(7)
                    \glissando                                                 %! abjad.glissando(7)

                    \tweak NoteHead.style #'harmonic-mixed
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-sharp-markup
                    as'4
                    \bar ":|."
                    % [Voice 3 measure 16]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

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

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 23 20) "16")
                    \times 20/23 {
                        % [Voice 4 measure 1]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \set Staff.shortInstrumentName =                       %! applying staff names and clefs
                        \markup { vc. }                                        %! applying staff names and clefs
                        \set Staff.instrumentName =                            %! applying staff names and clefs
                        "Violoncello"                                          %! applying staff names and clefs
                        \clef "bass"
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        \sfz
                        - \baca-full-downbow
                        [
                        _ \markup {
                          \column {
                               \line {(x1-3 \fontsize #-3 \musicglyph "f")}
                               \line {(x4-5 \fontsize #-3 \concat {\musicglyph "f" \musicglyph "f"})}
                           }}

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,8
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,8
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,8
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-upbow

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-downbow
                        ~
                        ]

                    }

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) "8")
                    \times 6/7 {
                        % [Voice 4 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,8
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,8
                        - \baca-full-downbow

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,8
                        - \baca-full-upbow
                        ]

                    }

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) "16")
                    \times 8/9 {
                        % [Voice 4 measure 3]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-downbow
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,8
                        - \baca-full-upbow

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-downbow
                        ~
                        ]

                    }

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a,16
                    [

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a,16
                    - \baca-full-upbow

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a,16
                    - \baca-full-downbow

                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a,16
                    - \baca-full-upbow
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a,8
                    - \baca-full-downbow
                    [

                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a,8
                    - \baca-full-upbow
                    ]

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 12) "16")
                    \times 12/13 {
                        % [Voice 4 measure 4]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-downbow
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,8
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-downbow

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-upbow
                        ]

                    }

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) "8")
                    \times 6/7 {
                        % [Voice 4 measure 5]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,8
                        - \baca-full-downbow
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,8
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,8
                        - \baca-full-upbow

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,8
                        - \baca-full-downbow
                        ]

                    }

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 8) "16")
                    \times 8/11 {
                        % [Voice 4 measure 6]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-upbow
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,8
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-upbow

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,8
                        - \baca-full-downbow
                        ]

                    }

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) "8")
                    \times 6/7 {

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-upbow
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,8
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,8
                        - \baca-full-upbow

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-downbow
                        ]

                    }

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) "16")
                    \times 8/9 {
                        % [Voice 4 measure 7]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-upbow
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,8
                        - \baca-full-upbow

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,8
                        - \baca-full-downbow
                        ]

                    }

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a,16
                    - \baca-full-upbow
                    [

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a,16
                    - \baca-full-downbow

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a,16
                    - \baca-full-upbow

                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a,16
                    - \baca-full-downbow
                    ~
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a,16
                    [

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a,16
                    - \baca-full-upbow
                    ~

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a,16

                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a,16
                    - \baca-full-downbow
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a,16
                    - \baca-full-upbow
                    [

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a,16
                    - \baca-full-downbow
                    ~

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a,16

                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    a,16
                    - \baca-full-upbow
                    ]

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) "16")
                    \times 8/9 {
                        % [Voice 4 measure 8]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-downbow
                        ^ \markup { "noise poco a poco" }
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,8
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-upbow

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-downbow
                        ~
                        ]

                    }

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "8")
                    \times 4/5 {

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,8
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-downbow

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-upbow
                        ~
                        ]

                    }

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "8.")
                    \times 4/5 {
                        % [Voice 4 measure 9]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,8
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,8
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-downbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-upbow

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,8
                        - \baca-full-downbow

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-upbow
                        ]

                    }

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "8")
                    \times 2/3 {
                        % [Voice 4 measure 10]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-downbow
                        [

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16
                        - \baca-full-upbow
                        ]

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,4
                        - \baca-stop-on-string-full-downbow

                    }

                    r1
                    % [Voice 4 measure 11]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    g,2.
                    \mf
                    ^ \markup { "norm. (noise poco a poco)" }
                    ~
                    % [Voice 4 measure 12]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    g,2.
                    ~
                    % [Voice 4 measure 13]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    g,2.
                    ~
                    % [Voice 4 measure 14]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    g,2.
                    ~
                    % [Voice 4 measure 15]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \abjad-natural-markup
                    g,1
                    \bar ":|."
                    % [Voice 4 measure 16]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

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
