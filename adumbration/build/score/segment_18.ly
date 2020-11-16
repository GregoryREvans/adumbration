
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
                \box
                    \override
                        #'(font-name . "STIXGeneral Bold")
                        \caps
                            "Ghosts of Departed Quantities"
                }
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"115"
              }
            }
            % [Global Context measure 2]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 3]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4

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
                    <a' b''>2
                    \sfp
                    \<
                    <>
                    \ff

                    r4

                    <a' c'''>2
                    \sfp
                    \<
                    ~
                    % [Voice 1 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    <a' c'''>8
                    [
                    <>
                    \ff

                    \revert Staff.Stem.stemlet-length
                    r8
                    ]

                    r4

                    \override Staff.Stem.stemlet-length = 0.75
                    r8
                    [

                    \revert Staff.Stem.stemlet-length
                    <a' cs'''>8
                    \sfp
                    \<
                    ~
                    ]

                    <a' cs'''>2
                    ~
                    % [Voice 1 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    <a' cs'''>8
                    [
                    <>
                    \ff

                    \revert Staff.Stem.stemlet-length
                    r8
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    r8
                    [

                    \revert Staff.Stem.stemlet-length
                    <a' ctqs'''>8
                    \sfp
                    \<
                    ~
                    ]

                    <a' ctqs'''>2.
                    \bar "||"
                    <>
                    \ff

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
                    <e' g'>1
                    \sfp
                    \<
                    <>
                    \ff

                    r4
                    % [Voice 2 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    <e' b'>2.
                    \sfp
                    \<
                    ~

                    \override Staff.Stem.stemlet-length = 0.75
                    <e' b'>8
                    [
                    <>
                    \ff

                    \revert Staff.Stem.stemlet-length
                    r8
                    ]

                    r4
                    % [Voice 2 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    \override Staff.Stem.stemlet-length = 0.75
                    r8
                    [

                    \revert Staff.Stem.stemlet-length
                    <e' c''>8
                    \sfp
                    \<
                    ~
                    ]

                    <e' c''>4
                    ~

                    <e' c''>4
                    ~

                    \override Staff.Stem.stemlet-length = 0.75
                    <e' c''>8
                    [
                    <>
                    \ff

                    \revert Staff.Stem.stemlet-length
                    r8
                    ]
                    \bar "||"

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
                    <fs d'>2
                    \sfp
                    \<
                    ~

                    \override Staff.Stem.stemlet-length = 0.75
                    <fs d'>8
                    [
                    <>
                    \ff

                    \revert Staff.Stem.stemlet-length
                    r8
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    r8
                    [

                    \revert Staff.Stem.stemlet-length
                    <fs ds'>8
                    \sfp
                    \<
                    ~
                    ]

                    <fs ds'>4
                    ~
                    % [Voice 3 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    <fs ds'>8
                    [
                    <>
                    \ff

                    \revert Staff.Stem.stemlet-length
                    r8
                    ]

                    r4

                    \override Staff.Stem.stemlet-length = 0.75
                    r8
                    [

                    \revert Staff.Stem.stemlet-length
                    <fs dtqs'>8
                    \sfp
                    \<
                    ~
                    ]

                    <fs dtqs'>2
                    <>
                    \ff
                    % [Voice 3 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2

                    <ftqs dtqs'>2.
                    \sfp
                    \<
                    \bar "||"
                    <>
                    \ff

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
                    <d, a,>2.
                    \sfp
                    \<
                    ~

                    \override Staff.Stem.stemlet-length = 0.75
                    <d, a,>8
                    [
                    <>
                    \ff

                    \revert Staff.Stem.stemlet-length
                    r8
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    r8
                    [

                    \revert Staff.Stem.stemlet-length
                    <d, a,>8
                    \sfp
                    \<
                    ~
                    ]
                    % [Voice 4 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    <d, a,>2.
                    ~

                    \override Staff.Stem.stemlet-length = 0.75
                    <d, a,>8
                    [
                    <>
                    \ff

                    \revert Staff.Stem.stemlet-length
                    r8
                    ]

                    r4
                    % [Voice 4 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    r8
                    [

                    \revert Staff.Stem.stemlet-length
                    <d, c>8
                    \sfp
                    \<
                    ~
                    ]

                    <d, c>2
                    ~

                    <d, c>4
                    <>
                    \ff

                    r4
                    \bar "||"

                }
                }

            }

        >>

    >>
