
    \context Score = "adumbration Score"
    <<

        \context TimeSignatureContext = "Global Context"
        {
            % [Global Context measure 1]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=153
            \time 4/4                                                          %! scaling time signatures
            \mark \markup {
                \bold
                    {
                        x3
                    }
                }
            s1 * 1
            ^ \markup {
                \box
                    \override
                        #'(font-name . "STIXGeneral Bold")
                        \caps
                            "Crocodiles (ii)"
                }
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-mixed-number-markup #2 #0 #1 #"153" #"1" #"3"
                  \hspace #1
                  \upright [
                  \abjad-metric-modulation-tuplet-lhs #2 #0 #2 #3 #2 #0 #'(0.6 . 0.6)
                  \hspace #0.5
                  \upright ]
              }
            }
            % [Global Context measure 2]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 2/4                                                          %! scaling time signatures
            s1 * 1/2
            % [Global Context measure 3]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 4]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \once \override TimeSignature.color = #white                       %! applying ending skips
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
                        \markup { "vn. I" }                                    %! applying staff names and clefs
                        \set Staff.instrumentName =                            %! applying staff names and clefs
                        "Violin I"                                             %! applying staff names and clefs
                        \bar ".|:"
                        \clef "treble"
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        e''16
                        \f
                        [
                        (

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        fs''16

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        cs'''16

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        c'''16
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        ds'''16
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        gs''16

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        b''16

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f''16
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        e'''16
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d'''16

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        g'''16

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        b''16
                        )
                        ]

                        r4
                        % [Voice 1 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2
                        % [Voice 1 measure 3]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r4

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        cs'''16
                        [
                        (

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d'''16

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        cs'''16

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d'''16
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        ds'''16
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        e'''16

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f'''16

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        fs'''16
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        g''16
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        gs''16

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        fs''16

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a''16
                        )
                        ]
                        \bar ":|."
                        % [Voice 1 measure 4]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                        \once \override Rest.color = #white                    %! applying ending skips
                        r1 * 3/32

                        \once \override MultiMeasureRest.color = #white        %! applying ending skips
                        R1 * 3/32
                        ^ \markup {                                            %! applying ending skips
                            \musicglyph                                        %! applying ending skips
                                #"scripts.ufermata"                            %! applying ending skips
                            }                                                  %! applying ending skips
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
                        \markup { "vn. II" }                                   %! applying staff names and clefs
                        \set Staff.instrumentName =                            %! applying staff names and clefs
                        "Violin II"                                            %! applying staff names and clefs
                        \bar ".|:"
                        \clef "treble"
                        r1
                        % [Voice 2 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        fs'16
                        \f
                        [
                        (

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        e''16
                        )

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        e''16
                        (

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f''16
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        cs''16
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        c''16

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        b'16

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        as'16
                        ]
                        % [Voice 2 measure 3]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        b'16
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        c''16

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        gs'16
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        g'16
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        fs'16

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        c''16

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        b'16
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        as'16
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        gs'16

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        g'16
                        )
                        ]

                        r4
                        \bar ":|."
                        % [Voice 2 measure 4]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                        \once \override Rest.color = #white                    %! applying ending skips
                        r1 * 3/32

                        \once \override MultiMeasureRest.color = #white        %! applying ending skips
                        R1 * 3/32
                        ^ \markup {                                            %! applying ending skips
                            \musicglyph                                        %! applying ending skips
                                #"scripts.ufermata"                            %! applying ending skips
                            }                                                  %! applying ending skips
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
                        \markup { va. }                                        %! applying staff names and clefs
                        \set Staff.instrumentName =                            %! applying staff names and clefs
                        "Viola"                                                %! applying staff names and clefs
                        \bar ".|:"
                        \clef "varC"
                        r2

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        ds'16
                        \f
                        [
                        (

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        fs'16

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        c'16

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a'16
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        as16
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        gs16

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        g16
                        ]
                        % [Voice 3 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        ds'16
                        )
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        ds'16
                        (

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        e'16

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d'16
                        )
                        ]

                        r4
                        % [Voice 3 measure 3]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r1
                        \bar ":|."
                        % [Voice 3 measure 4]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                        \once \override Rest.color = #white                    %! applying ending skips
                        r1 * 3/32

                        \once \override MultiMeasureRest.color = #white        %! applying ending skips
                        R1 * 3/32
                        ^ \markup {                                            %! applying ending skips
                            \musicglyph                                        %! applying ending skips
                                #"scripts.ufermata"                            %! applying ending skips
                            }                                                  %! applying ending skips
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
                        \markup { vc. }                                        %! applying staff names and clefs
                        \set Staff.instrumentName =                            %! applying staff names and clefs
                        "Violoncello"                                          %! applying staff names and clefs
                        \bar ".|:"
                        \clef "bass"
                        r4

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        g,16
                        \f
                        [
                        (

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d16

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a,16

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        as,16
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f16
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        cs16

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        gs16

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        as,16
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        b,16
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        c16

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        cs16

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        d16
                        ]
                        % [Voice 4 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f,16
                        )
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        f,16
                        (

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        ds16

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        fs16
                        ]

                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        g16
                        [

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        gs16

                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-natural-markup
                        a16

                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \abjad-sharp-markup
                        as,16
                        )
                        ]
                        % [Voice 4 measure 3]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r1
                        \bar ":|."
                        % [Voice 4 measure 4]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                        \once \override Rest.color = #white                    %! applying ending skips
                        r1 * 3/32

                        \once \override MultiMeasureRest.color = #white        %! applying ending skips
                        R1 * 3/32
                        ^ \markup {                                            %! applying ending skips
                            \musicglyph                                        %! applying ending skips
                                #"scripts.ufermata"                            %! applying ending skips
                            }                                                  %! applying ending skips
                        \stopStaff \startStaff                                 %! applying ending skips

                    }

                }

            }

        >>

    >>
