\version "2.19.84"                                                             %! abjad.LilyPondFile._get_format_pieces()
\language "english"                                                            %! abjad.LilyPondFile._get_format_pieces()

\include "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily"           %! abjad.LilyPondFile._get_formatted_includes()
\include "/Users/evansdsg2/Scores/adumbration/adumbration/build/first_stylesheet.ily" %! abjad.LilyPondFile._get_formatted_includes()

\header {                                                                      %! abjad.LilyPondFile._get_formatted_blocks()
    tagline = ##f
}                                                                              %! abjad.LilyPondFile._get_formatted_blocks()

\layout {}

\paper {}

\score {                                                                       %! abjad.LilyPondFile._get_formatted_blocks()

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
              \huge
              \concat {
                  \abjad-metronome-mark-mixed-number-markup #2 #0 #1 #"153" #"1" #"3"
                  \hspace #1
                  \upright [
                  \abjad-metric-modulation #2 #0 #1 #0 #'(0.6 . 0.6)
                  \hspace #0.5
                  \upright ]
              }
            }
            % [Global Context measure 2]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 3]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 4]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 5]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 6]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 6/4                                                          %! scaling time signatures
            s1 * 3/2
            % [Global Context measure 7]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 8]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 9]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 10]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 11]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 12]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 6/4                                                          %! scaling time signatures
            s1 * 3/2
            % [Global Context measure 13]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 14]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 15]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 6/4                                                          %! scaling time signatures
            s1 * 3/2
            % [Global Context measure 16]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 17]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 18]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 19]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 20]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 21]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 22]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 23]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 24]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 6/4                                                          %! scaling time signatures
            s1 * 3/2
            % [Global Context measure 25]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 26]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 27]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 6/4                                                          %! scaling time signatures
            s1 * 3/2
            % [Global Context measure 28]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 29]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 30]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 31]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 32]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 33]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1

        }

        \context StaffGroup = "Staff Group"
        <<

            \context Staff = "Staff 1"
            {
                \tag #'voice1 {

                \context Voice = "Voice 1"
                {

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 12) "16")
                    \times 12/11 {
                        % [Voice 1 measure 1]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \set Staff.shortInstrumentName =                       %! applying staff names and clefs
                        \markup { "vn. I" }                                    %! applying staff names and clefs
                        \set Staff.instrumentName =                            %! applying staff names and clefs
                        "Violin I"                                             %! applying staff names and clefs
                        \clef "treble"
                        \override Staff.Stem.stemlet-length = 0.75
                        g'16
                        \f
                        \<
                        [

                        ef'16

                        e'16

                        a'16

                        af'16

                        g'16

                        b'16

                        cs''16

                        f'16

                        bf'16

                        \revert Staff.Stem.stemlet-length
                        af'16
                        \ff
                        ]

                    }
                    % [Voice 1 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    \override Staff.Stem.stemlet-length = 0.75
                    e'16
                    \f
                    _ \markup {
                        \override
                            #'(style . "box")
                            \override
                                #'(box-padding . 0.5)
                                \italic
                                    \box
                                        \whiteout
                                            \small
                                                "dim. a mf"
                        }
                    \>
                    [

                    cs''16

                    ef''16

                    \revert Staff.Stem.stemlet-length
                    bf'16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    a'16
                    [

                    af'16

                    e'16

                    \revert Staff.Stem.stemlet-length
                    f'16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    bf'16
                    [

                    a'16

                    af'16

                    \revert Staff.Stem.stemlet-length
                    c''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    d''16
                    [

                    fs'16

                    b'16

                    \revert Staff.Stem.stemlet-length
                    a'16
                    ]
                    % [Voice 1 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    f'16
                    [

                    d''16

                    e''16

                    \revert Staff.Stem.stemlet-length
                    b'16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    bf'16
                    [

                    a'16

                    f'16

                    \revert Staff.Stem.stemlet-length
                    fs'16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    b'16
                    [

                    bf'16

                    a'16

                    \revert Staff.Stem.stemlet-length
                    cs''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    ef''16
                    [

                    g'16

                    c''16

                    \revert Staff.Stem.stemlet-length
                    bf'16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    fs'16
                    [

                    ef''16

                    f''16

                    \revert Staff.Stem.stemlet-length
                    c''16
                    ]

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 15 16) "16")
                    \times 16/15 {
                        % [Voice 1 measure 4]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        b'16
                        [

                        bf'16

                        fs'16

                        g'16

                        c''16

                        b'16

                        bf'16

                        d''16

                        e''16

                        af'16

                        cs''16

                        b'16

                        g'16

                        e''16

                        \revert Staff.Stem.stemlet-length
                        fs''16
                        ]

                    }

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 4) "16")
                    \times 4/3 {
                        % [Voice 1 measure 5]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        cs''16
                        [

                        c''16

                        \revert Staff.Stem.stemlet-length
                        b'16
                        \mf
                        ]

                    }

                    r2

                    \override Staff.Stem.stemlet-length = 0.75
                    g'16
                    \mp
                    \>
                    [

                    af'16

                    cs''16

                    \revert Staff.Stem.stemlet-length
                    c''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    b'16
                    [

                    ef''16

                    f''16

                    \revert Staff.Stem.stemlet-length
                    a'16
                    \p
                    ]
                    % [Voice 1 measure 6]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) "8")
                    \times 6/7 {

                        \override Staff.Stem.stemlet-length = 0.75
                        a'8
                        - \tweak circled-tip ##t
                        \<
                        [

                        a'8

                        a'8

                        a'8

                        a'8

                        a'8

                        \revert Staff.Stem.stemlet-length
                        a'8
                        \fff
                        ]

                    }

                    r4

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 12) "16")
                    \times 12/11 {
                        % [Voice 1 measure 7]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        d''16
                        \mf
                        \<
                        [

                        c''16

                        af'16

                        f''16

                        g''16

                        d''16

                        cs''16

                        c''16

                        af'16

                        a'16

                        \revert Staff.Stem.stemlet-length
                        d''16
                        \f
                        ]

                    }
                    % [Voice 1 measure 8]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    ef'1
                    \mp
                    _ \markup {
                        \override
                            #'(style . "box")
                            \override
                                #'(box-padding . 0.5)
                                \italic
                                    \box
                                        \whiteout
                                            \small
                                                "cresc. a f"
                        }
                    \<
                    ~
                    % [Voice 1 measure 9]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    ef'1

                    d'4
                    ~
                    % [Voice 1 measure 10]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    d'2.

                    e'4
                    ~
                    % [Voice 1 measure 11]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    e'4
                    \f

                    r2

                    \override Staff.Stem.stemlet-length = 0.75
                    cs''16
                    \ff
                    \>
                    [

                    c''16

                    e''16

                    \revert Staff.Stem.stemlet-length
                    fs''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    bf'16
                    [

                    ef''16

                    cs''16

                    \revert Staff.Stem.stemlet-length
                    a'16
                    \f
                    ]
                    % [Voice 1 measure 12]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 12) "16")
                    \times 12/11 {

                        \override Staff.Stem.stemlet-length = 0.75
                        fs''16
                        \mf
                        \>
                        [

                        af''16

                        ef''16

                        d''16

                        cs''16

                        a'16

                        bf'16

                        ef''16

                        d''16

                        cs''16

                        \revert Staff.Stem.stemlet-length
                        f''16
                        \mp
                        ]

                    }

                    r4

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "4.")
                    \times 6/9 {
                        % [Voice 1 measure 13]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        a'8
                        - \tweak circled-tip ##t
                        \<
                        [

                        a'8

                        a'8

                        bf'8

                        bf'8

                        bf'8

                        bf'8

                        bf'8

                        \revert Staff.Stem.stemlet-length
                        bf'8
                        \fff
                        ]

                    }
                    % [Voice 1 measure 14]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    \override Staff.Stem.stemlet-length = 0.75
                    g''16
                    \p
                    _ \markup {
                        \override
                            #'(style . "box")
                            \override
                                #'(box-padding . 0.5)
                                \italic
                                    \box
                                        \whiteout
                                            \small
                                                "cresc. a mf"
                        }
                    \<
                    [

                    b'16

                    e''16

                    \revert Staff.Stem.stemlet-length
                    d''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    bf'16
                    [

                    g''16

                    a''16

                    \revert Staff.Stem.stemlet-length
                    e''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    ef''16
                    [

                    d''16

                    bf'16

                    \revert Staff.Stem.stemlet-length
                    b'16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    e''16
                    [

                    ef''16

                    d''16

                    \revert Staff.Stem.stemlet-length
                    fs''16
                    ]
                    % [Voice 1 measure 15]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    af''16
                    [

                    c''16

                    f''16

                    \revert Staff.Stem.stemlet-length
                    ef''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    b'16
                    [

                    af''16

                    bf''16

                    \revert Staff.Stem.stemlet-length
                    f''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    e''16
                    [

                    ef''16

                    b'16

                    \revert Staff.Stem.stemlet-length
                    c''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    f''16
                    [

                    e''16

                    ef''16

                    \revert Staff.Stem.stemlet-length
                    g''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    a''16
                    [

                    cs''16

                    fs''16

                    \revert Staff.Stem.stemlet-length
                    e''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    c''16
                    [

                    a''16

                    b''16

                    \revert Staff.Stem.stemlet-length
                    fs''16
                    ]
                    % [Voice 1 measure 16]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    f''16
                    [

                    e''16

                    c''16

                    \revert Staff.Stem.stemlet-length
                    cs''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    fs''16
                    [

                    f''16

                    e''16

                    \revert Staff.Stem.stemlet-length
                    af''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    bf''16
                    [

                    d''16

                    g''16

                    \revert Staff.Stem.stemlet-length
                    f''16
                    ]
                    % [Voice 1 measure 17]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    cs''16
                    [

                    bf''16

                    c'''16

                    \revert Staff.Stem.stemlet-length
                    g''16
                    \mf
                    ]

                    r2

                    \override Staff.Stem.stemlet-length = 0.75
                    fs''16
                    \f
                    \<
                    [

                    f''16

                    cs''16

                    \revert Staff.Stem.stemlet-length
                    d''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    g''16
                    [

                    fs''16

                    f''16

                    \revert Staff.Stem.stemlet-length
                    a''16
                    \ff
                    ]
                    % [Voice 1 measure 18]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "4.")
                    \times 6/9 {

                        \override Staff.Stem.stemlet-length = 0.75
                        bf'8
                        - \tweak circled-tip ##t
                        \<
                        [

                        ef''8

                        ef''8

                        ef''8

                        ef''8

                        ef''8

                        ef''8

                        ef''8

                        \revert Staff.Stem.stemlet-length
                        ef''8
                        \fff
                        ]

                    }
                    % [Voice 1 measure 19]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) "8")
                    \times 6/7 {

                        \override Staff.Stem.stemlet-length = 0.75
                        ef''8
                        - \tweak circled-tip ##t
                        \<
                        [

                        c''8

                        c''8

                        c''8

                        c''8

                        c''8

                        \revert Staff.Stem.stemlet-length
                        c''8
                        \fff
                        ]

                    }
                    % [Voice 1 measure 20]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    fs'4
                    \ff
                    _ \markup {
                        \override
                            #'(style . "box")
                            \override
                                #'(box-padding . 0.5)
                                \italic
                                    \box
                                        \whiteout
                                            \small
                                                "dim. a p"
                        }
                    \>

                    g'4
                    ~

                    g'4

                    f'4
                    ~
                    % [Voice 1 measure 21]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    f'1

                    fs'4
                    ~
                    % [Voice 1 measure 22]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    fs'1
                    ~
                    % [Voice 1 measure 23]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    fs'4
                    \p

                    r2

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "8")
                    \times 4/5 {

                        \override Staff.Stem.stemlet-length = 0.75
                        c''8
                        - \tweak circled-tip ##t
                        \<
                        [

                        c''8

                        c''8

                        c''8

                        \revert Staff.Stem.stemlet-length
                        c''8
                        \fff
                        ]

                    }
                    % [Voice 1 measure 24]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 12) "16")
                    \times 12/11 {

                        \override Staff.Stem.stemlet-length = 0.75
                        b''16
                        \f
                        \>
                        [

                        ef''16

                        af''16

                        fs''16

                        d''16

                        b''16

                        cs'''16

                        af''16

                        g''16

                        fs''16

                        \revert Staff.Stem.stemlet-length
                        d''16
                        \mf
                        ]

                    }

                    r4
                    % [Voice 1 measure 25]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    ef''16
                    \mp
                    \>
                    [

                    af''16

                    g''16

                    \revert Staff.Stem.stemlet-length
                    fs''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    bf''16
                    [

                    c'''16

                    e''16

                    \revert Staff.Stem.stemlet-length
                    a''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    g''16
                    [

                    ef''16

                    c'''16

                    \revert Staff.Stem.stemlet-length
                    d'''16
                    \p
                    ]
                    % [Voice 1 measure 26]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    \override Staff.Stem.stemlet-length = 0.75
                    a''16
                    \mf
                    _ \markup {
                        \override
                            #'(style . "box")
                            \override
                                #'(box-padding . 0.5)
                                \italic
                                    \box
                                        \whiteout
                                            \small
                                                "cresc. a f"
                        }
                    \<
                    [

                    af''16

                    g''16

                    \revert Staff.Stem.stemlet-length
                    ef''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    e''16
                    [

                    a''16

                    af''16

                    \revert Staff.Stem.stemlet-length
                    g''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    b''16
                    [

                    cs'''16

                    f''16

                    \revert Staff.Stem.stemlet-length
                    bf''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    af''16
                    [

                    e''16

                    cs'''16

                    \revert Staff.Stem.stemlet-length
                    ef'''16
                    ]

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 23 24) "16")
                    \times 24/23 {
                        % [Voice 1 measure 27]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        bf''16
                        [

                        a''16

                        af''16

                        e''16

                        f''16

                        bf''16

                        a''16

                        af''16

                        c'''16

                        d'''16

                        fs''16

                        b''16

                        a''16

                        f''16

                        d'''16

                        e'''16

                        b''16

                        bf''16

                        a''16

                        f''16

                        fs''16

                        b''16

                        \revert Staff.Stem.stemlet-length
                        bf''16
                        ]

                    }

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 12) "16")
                    \times 12/11 {
                        % [Voice 1 measure 28]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        a''16
                        [

                        cs'''16

                        ef'''16

                        g''16

                        c'''16

                        bf''16

                        fs''16

                        ef'''16

                        f'''16

                        c'''16

                        \revert Staff.Stem.stemlet-length
                        b''16
                        ]

                    }

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 4) "16")
                    \times 4/3 {
                        % [Voice 1 measure 29]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        bf''16
                        [

                        fs''16

                        \revert Staff.Stem.stemlet-length
                        g''16
                        \f
                        ]

                    }

                    r2

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "8")
                    \times 4/5 {

                        \override Staff.Stem.stemlet-length = 0.75
                        af'8
                        - \tweak circled-tip ##t
                        \<
                        [

                        af'8

                        af'8

                        af'8

                        \revert Staff.Stem.stemlet-length
                        af'8
                        \fff
                        ]

                    }
                    % [Voice 1 measure 30]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 12) "16")
                    \times 12/11 {

                        \override Staff.Stem.stemlet-length = 0.75
                        c'''16
                        \ff
                        \>
                        [

                        b''16

                        bf''16

                        d'''16

                        e'''16

                        af''16

                        cs'''16

                        b''16

                        g''16

                        e'''16

                        \revert Staff.Stem.stemlet-length
                        fs'''16
                        \f
                        ]

                    }
                    % [Voice 1 measure 31]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    \override Staff.Stem.stemlet-length = 0.75
                    cs'''16
                    \mf
                    \>
                    [

                    c'''16

                    b''16

                    \revert Staff.Stem.stemlet-length
                    g''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    af''16
                    [

                    cs'''16

                    c'''16

                    \revert Staff.Stem.stemlet-length
                    b''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    ef'''16
                    [

                    f'''16

                    a''16

                    \revert Staff.Stem.stemlet-length
                    d'''16
                    \mp
                    ]
                    % [Voice 1 measure 32]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    a'2
                    \mp
                    _ \markup {
                        \override
                            #'(style . "box")
                            \override
                                #'(box-padding . 0.5)
                                \italic
                                    \box
                                        \whiteout
                                            \small
                                                "cresc. a f"
                        }
                    \<

                    fs'2
                    ~
                    % [Voice 1 measure 33]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    fs'2

                    af'4
                    \f

                    r4
                    \bar "||"

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
                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    \clef "treble"
                    r1 * 3/8

                    R1 * 3/8
                    % [Voice 2 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    d'2
                    \ff
                    _ \markup {
                        \override
                            #'(style . "box")
                            \override
                                #'(box-padding . 0.5)
                                \italic
                                    \box
                                        \whiteout
                                            \small
                                                "dim. a p"
                        }
                    \>

                    e'4
                    ~

                    e'4

                    fs'4
                    ~
                    % [Voice 2 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    fs'1

                    g'4
                    ~
                    % [Voice 2 measure 4]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    g'1
                    ~
                    % [Voice 2 measure 5]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    g'2.

                    f'2
                    ~
                    % [Voice 2 measure 6]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    f'8
                    \p

                    r8

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 10) "16")
                    \times 10/9 {

                        \override Staff.Stem.stemlet-length = 0.75
                        ef'16
                        \p
                        \<
                        [

                        e'16

                        a'16

                        af'16

                        g'16

                        b'16

                        cs''16

                        f'16

                        \revert Staff.Stem.stemlet-length
                        bf'16
                        \mf
                        ]

                    }

                    r8

                    r4

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "8")
                    \times 2/3 {

                        \override Staff.Stem.stemlet-length = 0.75
                        a'8
                        - \tweak circled-tip ##t
                        \<
                        [

                        a'8

                        \revert Staff.Stem.stemlet-length
                        a'8
                        ]

                    }
                    % [Voice 2 measure 7]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    a'8
                    [

                    \revert Staff.Stem.stemlet-length
                    a'8
                    ]

                    a'8
                    \fff

                    r8

                    r4
                    % [Voice 2 measure 8]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    fs'1
                    \mp
                    _ \markup {
                        \override
                            #'(style . "box")
                            \override
                                #'(box-padding . 0.5)
                                \italic
                                    \box
                                        \whiteout
                                            \small
                                                "cresc. a f"
                        }
                    \<

                    a'4
                    ~
                    % [Voice 2 measure 9]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    a'2

                    fs'4
                    ~

                    fs'4

                    af'4
                    ~
                    % [Voice 2 measure 10]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    af'1
                    % [Voice 2 measure 11]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    f'2.
                    ~

                    f'2
                    ~
                    % [Voice 2 measure 12]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    f'8
                    \f

                    r8

                    \override Staff.Stem.stemlet-length = 0.75
                    af'16
                    \f
                    \<
                    [

                    e'16

                    cs''16

                    \revert Staff.Stem.stemlet-length
                    ef''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    bf'16
                    [

                    a'16

                    af'16

                    \revert Staff.Stem.stemlet-length
                    e'16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    f'16
                    [

                    \revert Staff.Stem.stemlet-length
                    bf'16
                    \ff
                    ]

                    r8

                    r4

                    \override Staff.Stem.stemlet-length = 0.75
                    a'16
                    \f
                    \>
                    [

                    af'16

                    c''16

                    \revert Staff.Stem.stemlet-length
                    d''16
                    ]

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) "16")
                    \times 6/5 {
                        % [Voice 2 measure 13]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        fs'16
                        [

                        b'16

                        a'16

                        f'16

                        \revert Staff.Stem.stemlet-length
                        d''16
                        \mf
                        ]

                    }

                    r8

                    r4

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 19 20) "16")
                    \times 20/19 {
                        % [Voice 2 measure 14]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        e''16
                        \mp
                        _ \markup {
                            \override
                                #'(style . "box")
                                \override
                                    #'(box-padding . 0.5)
                                    \italic
                                        \box
                                            \whiteout
                                                \small
                                                    "dim. a p"
                            }
                        \>
                        [

                        b'16

                        bf'16

                        a'16

                        f'16

                        fs'16

                        b'16

                        bf'16

                        a'16

                        cs''16

                        ef''16

                        g'16

                        c''16

                        bf'16

                        fs'16

                        ef''16

                        f''16

                        c''16

                        \revert Staff.Stem.stemlet-length
                        b'16
                        ]

                    }
                    % [Voice 2 measure 15]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    bf'16
                    [

                    fs'16

                    g'16

                    \revert Staff.Stem.stemlet-length
                    c''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    b'16
                    [

                    bf'16

                    d''16

                    \revert Staff.Stem.stemlet-length
                    e''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    af'16
                    [

                    cs''16

                    b'16

                    \revert Staff.Stem.stemlet-length
                    g'16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    e''16
                    [

                    fs''16

                    cs''16

                    \revert Staff.Stem.stemlet-length
                    c''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    b'16
                    [

                    g'16

                    af'16

                    \revert Staff.Stem.stemlet-length
                    cs''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    c''16
                    [

                    b'16

                    ef''16

                    \revert Staff.Stem.stemlet-length
                    f''16
                    ]

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 12) "16")
                    \times 12/11 {
                        % [Voice 2 measure 16]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        a'16
                        [

                        d''16

                        c''16

                        af'16

                        f''16

                        g''16

                        d''16

                        cs''16

                        c''16

                        af'16

                        \revert Staff.Stem.stemlet-length
                        a'16
                        ]

                    }
                    % [Voice 2 measure 17]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    d''16
                    [

                    cs''16

                    c''16

                    \revert Staff.Stem.stemlet-length
                    e''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    fs''16
                    [

                    bf'16

                    ef''16

                    \revert Staff.Stem.stemlet-length
                    cs''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    a'16
                    [

                    fs''16

                    af''16

                    \revert Staff.Stem.stemlet-length
                    ef''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    d''16
                    [

                    cs''16

                    a'16

                    \revert Staff.Stem.stemlet-length
                    bf'16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    ef''16
                    [

                    d''16

                    cs''16

                    \revert Staff.Stem.stemlet-length
                    f''16
                    ]
                    % [Voice 2 measure 18]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    g''16
                    [

                    \revert Staff.Stem.stemlet-length
                    b'16
                    \p
                    ]

                    r8

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 5) "8")
                    \times 5/4 {

                        \override Staff.Stem.stemlet-length = 0.75
                        a'16
                        - \tweak circled-tip ##t
                        \<
                        [

                        a'16

                        a'16

                        bf'16

                        bf'16

                        bf'16

                        bf'16

                        \revert Staff.Stem.stemlet-length
                        bf'16
                        \fff
                        ]

                    }

                    r8

                    r4
                    % [Voice 2 measure 19]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    e''16
                    \mf
                    \<
                    [

                    d''16

                    bf'16

                    \revert Staff.Stem.stemlet-length
                    g''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    a''16
                    [

                    e''16

                    ef''16

                    \revert Staff.Stem.stemlet-length
                    d''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    bf'16
                    [

                    \revert Staff.Stem.stemlet-length
                    b'16
                    \f
                    ]

                    r8

                    r4
                    % [Voice 2 measure 20]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    e''16
                    \ff
                    _ \markup {
                        \override
                            #'(style . "box")
                            \override
                                #'(box-padding . 0.5)
                                \italic
                                    \box
                                        \whiteout
                                            \small
                                                "dim. a f"
                        }
                    \>
                    [

                    ef''16

                    d''16

                    \revert Staff.Stem.stemlet-length
                    fs''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    af''16
                    [

                    c''16

                    f''16

                    \revert Staff.Stem.stemlet-length
                    ef''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    b'16
                    [

                    af''16

                    bf''16

                    \revert Staff.Stem.stemlet-length
                    f''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    e''16
                    [

                    ef''16

                    b'16

                    \revert Staff.Stem.stemlet-length
                    c''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    f''16
                    [

                    e''16

                    ef''16

                    \revert Staff.Stem.stemlet-length
                    g''16
                    ]
                    % [Voice 2 measure 21]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    a''16
                    [

                    cs''16

                    fs''16

                    \revert Staff.Stem.stemlet-length
                    e''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    c''16
                    [

                    a''16

                    b''16

                    \revert Staff.Stem.stemlet-length
                    fs''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    f''16
                    [

                    e''16

                    c''16

                    \revert Staff.Stem.stemlet-length
                    cs''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    fs''16
                    [

                    f''16

                    e''16

                    \revert Staff.Stem.stemlet-length
                    af''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    bf''16
                    [

                    d''16

                    g''16

                    \revert Staff.Stem.stemlet-length
                    f''16
                    ]
                    % [Voice 2 measure 22]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    cs''16
                    [

                    bf''16

                    c'''16

                    \revert Staff.Stem.stemlet-length
                    g''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    fs''16
                    [

                    f''16

                    cs''16

                    \revert Staff.Stem.stemlet-length
                    d''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    g''16
                    [

                    fs''16

                    f''16

                    \revert Staff.Stem.stemlet-length
                    a''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    b''16
                    [

                    ef''16

                    af''16

                    \revert Staff.Stem.stemlet-length
                    fs''16
                    ]
                    % [Voice 2 measure 23]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    d''16
                    [

                    b''16

                    cs'''16

                    \revert Staff.Stem.stemlet-length
                    af''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    g''16
                    [

                    fs''16

                    d''16

                    \revert Staff.Stem.stemlet-length
                    ef''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    af''16
                    [

                    g''16

                    fs''16

                    \revert Staff.Stem.stemlet-length
                    bf''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    c'''16
                    [

                    e''16

                    a''16

                    \revert Staff.Stem.stemlet-length
                    g''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    ef''16
                    [

                    c'''16

                    d'''16

                    \revert Staff.Stem.stemlet-length
                    a''16
                    ]
                    % [Voice 2 measure 24]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    af''16
                    [

                    \revert Staff.Stem.stemlet-length
                    g''16
                    \f
                    ]

                    r8

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 5) "8")
                    \times 5/4 {

                        \override Staff.Stem.stemlet-length = 0.75
                        bf'16
                        - \tweak circled-tip ##t
                        \<
                        [

                        bf'16

                        ef''16

                        ef''16

                        ef''16

                        ef''16

                        ef''16

                        \revert Staff.Stem.stemlet-length
                        ef''16
                        \fff
                        ]

                    }

                    r8

                    r4

                    e'4
                    \ff
                    \>
                    ~
                    % [Voice 2 measure 25]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    e'4
                    ~

                    e'8
                    \p

                    r8

                    r4
                    % [Voice 2 measure 26]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    g'1
                    \mp
                    _ \markup {
                        \override
                            #'(style . "box")
                            \override
                                #'(box-padding . 0.5)
                                \italic
                                    \box
                                        \whiteout
                                            \small
                                                "cresc. a f"
                        }
                    \<

                    bf'4
                    ~
                    % [Voice 2 measure 27]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    bf'2

                    af'4
                    ~

                    af'4

                    fs'2
                    ~
                    % [Voice 2 measure 28]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    fs'2.
                    % [Voice 2 measure 29]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    a'2.
                    ~

                    a'2
                    ~
                    % [Voice 2 measure 30]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    a'8
                    \f

                    r8

                    \override Staff.Stem.stemlet-length = 0.75
                    ef''16
                    \mf
                    \>
                    [

                    e''16

                    a''16

                    \revert Staff.Stem.stemlet-length
                    af''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    g''16
                    [

                    b''16

                    cs'''16

                    \revert Staff.Stem.stemlet-length
                    f''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    bf''16
                    [

                    \revert Staff.Stem.stemlet-length
                    af''16
                    \mp
                    ]

                    r8

                    r4

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) "8")
                    \times 5/6 {
                        % [Voice 2 measure 31]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        ef''8
                        - \tweak circled-tip ##t
                        \<
                        [

                        ef''8

                        ef''8

                        c''8

                        c''8

                        \revert Staff.Stem.stemlet-length
                        c''8
                        \fff
                        ]

                    }

                    r8

                    r4
                    % [Voice 2 measure 32]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    e''16
                    \p
                    _ \markup {
                        \override
                            #'(style . "box")
                            \override
                                #'(box-padding . 0.5)
                                \italic
                                    \box
                                        \whiteout
                                            \small
                                                "cresc. a mf"
                        }
                    \<
                    [

                    cs'''16

                    ef'''16

                    \revert Staff.Stem.stemlet-length
                    bf''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    a''16
                    [

                    af''16

                    e''16

                    \revert Staff.Stem.stemlet-length
                    f''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    bf''16
                    [

                    a''16

                    af''16

                    \revert Staff.Stem.stemlet-length
                    c'''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    d'''16
                    [

                    fs''16

                    b''16

                    \revert Staff.Stem.stemlet-length
                    a''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    f''16
                    [

                    d'''16

                    e'''16

                    \revert Staff.Stem.stemlet-length
                    b''16
                    ]

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 15 16) "16")
                    \times 16/15 {
                        % [Voice 2 measure 33]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        bf''16
                        [

                        a''16

                        f''16

                        fs''16

                        b''16

                        bf''16

                        a''16

                        cs'''16

                        ef'''16

                        g''16

                        c'''16

                        bf''16

                        fs''16

                        ef'''16

                        \revert Staff.Stem.stemlet-length
                        f'''16
                        \mf
                        ]
                        \bar "||"

                    }

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
                    r2

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 4) "16")
                    \times 4/3 {

                        \override Staff.Stem.stemlet-length = 0.75
                        e16
                        \f
                        \<
                        [

                        a16

                        \revert Staff.Stem.stemlet-length
                        af16
                        ]

                    }

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 4) "16")
                    \times 4/3 {
                        % [Voice 3 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        g16
                        [

                        b16

                        \revert Staff.Stem.stemlet-length
                        cs'16
                        \ff
                        ]

                    }

                    r2

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) "16")
                    \times 8/7 {

                        \override Staff.Stem.stemlet-length = 0.75
                        f16
                        \f
                        \>
                        [

                        bf16

                        af16

                        e16

                        cs'16

                        ef'16

                        \revert Staff.Stem.stemlet-length
                        bf16
                        \mf
                        ]

                    }
                    % [Voice 3 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2

                    \override Staff.Stem.stemlet-length = 0.75
                    a16
                    \mp
                    \>
                    [

                    af16

                    e16

                    \revert Staff.Stem.stemlet-length
                    f16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    bf16
                    [

                    a16

                    af16

                    \revert Staff.Stem.stemlet-length
                    c'16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    d'16
                    [

                    fs16

                    b16

                    \revert Staff.Stem.stemlet-length
                    a16
                    \p
                    ]
                    % [Voice 3 measure 4]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 12) "16")
                    \times 12/11 {

                        \override Staff.Stem.stemlet-length = 0.75
                        f16
                        \mf
                        \<
                        [

                        d'16

                        e'16

                        b16

                        bf16

                        a16

                        f16

                        fs16

                        b16

                        bf16

                        \revert Staff.Stem.stemlet-length
                        a16
                        \f
                        ]

                    }
                    % [Voice 3 measure 5]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    e1
                    \ff
                    _ \markup {
                        \override
                            #'(style . "box")
                            \override
                                #'(box-padding . 0.5)
                                \italic
                                    \box
                                        \whiteout
                                            \small
                                                "dim. a p"
                        }
                    \>
                    ~
                    % [Voice 3 measure 6]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    e4

                    fs2
                    ~

                    fs2

                    g4
                    ~
                    % [Voice 3 measure 7]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    g2

                    f4
                    ~
                    % [Voice 3 measure 8]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    f4
                    \p

                    r2

                    \override Staff.Stem.stemlet-length = 0.75
                    cs'16
                    \ff
                    \>
                    [

                    ef'16

                    g16

                    \revert Staff.Stem.stemlet-length
                    c'16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    bf16
                    [

                    fs16

                    ef'16

                    \revert Staff.Stem.stemlet-length
                    f'16
                    \f
                    ]
                    % [Voice 3 measure 9]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) "8")
                    \times 6/7 {

                        \override Staff.Stem.stemlet-length = 0.75
                        a8
                        - \tweak circled-tip ##t
                        \<
                        [

                        a8

                        a8

                        a8

                        a8

                        a8

                        \revert Staff.Stem.stemlet-length
                        a8
                        \fff
                        ]

                    }
                    % [Voice 3 measure 10]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    \override Staff.Stem.stemlet-length = 0.75
                    c'16
                    \mf
                    \>
                    [

                    b16

                    bf16

                    \revert Staff.Stem.stemlet-length
                    fs16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    g16
                    [

                    c'16

                    b16

                    \revert Staff.Stem.stemlet-length
                    bf16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    d'16
                    [

                    e'16

                    af16

                    \revert Staff.Stem.stemlet-length
                    cs'16
                    \mp
                    ]
                    % [Voice 3 measure 11]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    fs1
                    \mp
                    _ \markup {
                        \override
                            #'(style . "box")
                            \override
                                #'(box-padding . 0.5)
                                \italic
                                    \box
                                        \whiteout
                                            \small
                                                "cresc. a f"
                        }
                    \<
                    ~
                    % [Voice 3 measure 12]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    fs4

                    a2
                    ~

                    a2.
                    ~
                    % [Voice 3 measure 13]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    a2.
                    % [Voice 3 measure 14]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    fs4
                    \f

                    r2

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) "16")
                    \times 8/7 {

                        \override Staff.Stem.stemlet-length = 0.75
                        a16
                        - \tweak circled-tip ##t
                        \<
                        [

                        bf16

                        bf16

                        bf16

                        bf16

                        bf16

                        \revert Staff.Stem.stemlet-length
                        bf16
                        \fff
                        ]

                    }
                    % [Voice 3 measure 15]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) "8")
                    \times 6/7 {

                        \override Staff.Stem.stemlet-length = 0.75
                        bf8
                        - \tweak circled-tip ##t
                        \<
                        [

                        ef'8

                        ef'8

                        ef'8

                        ef'8

                        ef'8

                        \revert Staff.Stem.stemlet-length
                        ef'8
                        \fff
                        ]

                    }

                    r4

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 12) "16")
                    \times 12/11 {
                        % [Voice 3 measure 16]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        b16
                        \p
                        \<
                        [

                        g16

                        e'16

                        fs'16

                        cs'16

                        c'16

                        b16

                        g16

                        af16

                        cs'16

                        \revert Staff.Stem.stemlet-length
                        c'16
                        \mf
                        ]

                    }
                    % [Voice 3 measure 17]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    af2
                    \ff
                    _ \markup {
                        \override
                            #'(style . "box")
                            \override
                                #'(box-padding . 0.5)
                                \italic
                                    \box
                                        \whiteout
                                            \small
                                                "dim. a p"
                        }
                    \>
                    ~

                    af4

                    f4
                    ~
                    % [Voice 3 measure 18]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    f2

                    e4
                    ~

                    e4

                    g4
                    ~
                    % [Voice 3 measure 19]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    g1
                    % [Voice 3 measure 20]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    bf4
                    \p

                    r2

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "8")
                    \times 4/5 {

                        \override Staff.Stem.stemlet-length = 0.75
                        ef'8
                        - \tweak circled-tip ##t
                        \<
                        [

                        ef'8

                        ef'8

                        c'8

                        \revert Staff.Stem.stemlet-length
                        c'8
                        \fff
                        ]

                    }
                    % [Voice 3 measure 21]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) "8")
                    \times 6/7 {

                        \override Staff.Stem.stemlet-length = 0.75
                        c'8
                        - \tweak circled-tip ##t
                        \<
                        [

                        c'8

                        c'8

                        c'8

                        c'8

                        c'8

                        \revert Staff.Stem.stemlet-length
                        c'8
                        \fff
                        ]

                    }
                    % [Voice 3 measure 22]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 12) "16")
                    \times 12/11 {

                        \override Staff.Stem.stemlet-length = 0.75
                        b16
                        \f
                        \<
                        [

                        ef'16

                        f'16

                        a16

                        d'16

                        c'16

                        af16

                        f'16

                        g'16

                        d'16

                        \revert Staff.Stem.stemlet-length
                        cs'16
                        \ff
                        ]

                    }
                    % [Voice 3 measure 23]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    \override Staff.Stem.stemlet-length = 0.75
                    c'16
                    \f
                    _ \markup {
                        \override
                            #'(style . "box")
                            \override
                                #'(box-padding . 0.5)
                                \italic
                                    \box
                                        \whiteout
                                            \small
                                                "dim. a mf"
                        }
                    \>
                    [

                    af16

                    a16

                    \revert Staff.Stem.stemlet-length
                    d'16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    cs'16
                    [

                    c'16

                    e'16

                    \revert Staff.Stem.stemlet-length
                    fs'16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    bf16
                    [

                    ef'16

                    cs'16

                    \revert Staff.Stem.stemlet-length
                    a16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    fs'16
                    [

                    af'16

                    ef'16

                    \revert Staff.Stem.stemlet-length
                    d'16
                    ]

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 23 24) "16")
                    \times 24/23 {
                        % [Voice 3 measure 24]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        cs'16
                        [

                        a16

                        bf16

                        ef'16

                        d'16

                        cs'16

                        f'16

                        g'16

                        b16

                        e'16

                        d'16

                        bf16

                        g'16

                        a'16

                        e'16

                        ef'16

                        d'16

                        bf16

                        b16

                        e'16

                        ef'16

                        d'16

                        \revert Staff.Stem.stemlet-length
                        fs'16
                        ]

                    }
                    % [Voice 3 measure 25]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    af'16
                    [

                    c'16

                    f'16

                    \revert Staff.Stem.stemlet-length
                    ef'16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    b16
                    [

                    af'16

                    bf'16

                    \revert Staff.Stem.stemlet-length
                    f'16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    e'16
                    [

                    ef'16

                    b16

                    \revert Staff.Stem.stemlet-length
                    c'16
                    ]

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 4) "16")
                    \times 4/3 {
                        % [Voice 3 measure 26]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        f'16
                        [

                        e'16

                        \revert Staff.Stem.stemlet-length
                        ef'16
                        \mf
                        ]

                    }

                    r2

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) "16")
                    \times 8/7 {

                        \override Staff.Stem.stemlet-length = 0.75
                        c'16
                        - \tweak circled-tip ##t
                        \<
                        [

                        c'16

                        af16

                        af16

                        af16

                        af16

                        \revert Staff.Stem.stemlet-length
                        af16
                        \fff
                        ]

                    }
                    % [Voice 3 measure 27]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2

                    af4
                    \mp
                    \<
                    ~

                    af2
                    \f

                    r4

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) "8")
                    \times 6/7 {
                        % [Voice 3 measure 28]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        af8
                        - \tweak circled-tip ##t
                        \<
                        [

                        af8

                        af8

                        af8

                        af8

                        e'8

                        \revert Staff.Stem.stemlet-length
                        e'8
                        \fff
                        ]

                    }
                    % [Voice 3 measure 29]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    fs1
                    \ff
                    _ \markup {
                        \override
                            #'(style . "box")
                            \override
                                #'(box-padding . 0.5)
                                \italic
                                    \box
                                        \whiteout
                                            \small
                                                "dim. a p"
                        }
                    \>
                    % [Voice 3 measure 30]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    a1

                    af4
                    ~
                    % [Voice 3 measure 31]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    af2

                    bf2
                    % [Voice 3 measure 32]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    c'4
                    \p

                    r2

                    \override Staff.Stem.stemlet-length = 0.75
                    g'16
                    \mp
                    \>
                    [

                    a'16

                    cs'16

                    \revert Staff.Stem.stemlet-length
                    fs'16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    e'16
                    [

                    c'16

                    a'16

                    \revert Staff.Stem.stemlet-length
                    b'16
                    \p
                    ]
                    % [Voice 3 measure 33]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2

                    \override Staff.Stem.stemlet-length = 0.75
                    fs'16
                    \mf
                    \<
                    [

                    f'16

                    e'16

                    \revert Staff.Stem.stemlet-length
                    c'16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    cs'16
                    [

                    \revert Staff.Stem.stemlet-length
                    fs'16
                    \f
                    ]

                    r8
                    \bar "||"

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
                    r4

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "8")
                    \times 4/5 {

                        \override Staff.Stem.stemlet-length = 0.75
                        a,8
                        - \tweak circled-tip ##t
                        \<
                        [

                        a,8

                        a,8

                        a,8

                        \revert Staff.Stem.stemlet-length
                        a,8
                        ]

                    }

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 10) "8")
                    \times 10/11 {
                        % [Voice 4 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        a,8
                        [

                        a,8

                        bf,8

                        bf,8

                        bf,8

                        bf,8

                        bf,8

                        bf,8

                        bf,8

                        ef8

                        \revert Staff.Stem.stemlet-length
                        ef8
                        ]

                    }
                    % [Voice 4 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    ef8
                    \fff

                    r8

                    \override Staff.Stem.stemlet-length = 0.75
                    a16
                    \ff
                    \>
                    [

                    af16

                    g16

                    \revert Staff.Stem.stemlet-length
                    b16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    cs'16
                    [

                    f16

                    bf16

                    \revert Staff.Stem.stemlet-length
                    af16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    e16
                    [

                    \revert Staff.Stem.stemlet-length
                    cs'16
                    \f
                    ]

                    r8

                    r4
                    % [Voice 4 measure 4]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    ef'16
                    \mf
                    \>
                    [

                    bf16

                    a16

                    \revert Staff.Stem.stemlet-length
                    af16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    e16
                    [

                    f16

                    bf16

                    \revert Staff.Stem.stemlet-length
                    a16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    af16
                    [

                    \revert Staff.Stem.stemlet-length
                    c'16
                    \mp
                    ]

                    r8

                    r4
                    % [Voice 4 measure 5]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    fs,1
                    \mp
                    _ \markup {
                        \override
                            #'(style . "box")
                            \override
                                #'(box-padding . 0.5)
                                \italic
                                    \box
                                        \whiteout
                                            \small
                                                "cresc. a f"
                        }
                    \<

                    g,4
                    ~
                    % [Voice 4 measure 6]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    g,1.
                    ~
                    % [Voice 4 measure 7]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    g,4

                    f,2
                    ~
                    % [Voice 4 measure 8]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    f,2

                    fs,2.
                    % [Voice 4 measure 9]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    a,8
                    \f

                    r8

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 5) "8")
                    \times 5/4 {

                        \override Staff.Stem.stemlet-length = 0.75
                        ef16
                        - \tweak circled-tip ##t
                        \<
                        [

                        ef16

                        ef16

                        ef16

                        ef16

                        ef16

                        c16

                        \revert Staff.Stem.stemlet-length
                        c16
                        \fff
                        ]

                    }

                    r8

                    r4

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) "8")
                    \times 5/6 {
                        % [Voice 4 measure 10]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        c8
                        - \tweak circled-tip ##t
                        \<
                        [

                        c8

                        c8

                        c8

                        c8

                        \revert Staff.Stem.stemlet-length
                        c8
                        \fff
                        ]

                    }

                    r8

                    r4
                    % [Voice 4 measure 11]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    d'16
                    \p
                    _ \markup {
                        \override
                            #'(style . "box")
                            \override
                                #'(box-padding . 0.5)
                                \italic
                                    \box
                                        \whiteout
                                            \small
                                                "cresc. a mf"
                        }
                    \<
                    [

                    fs16

                    b16

                    \revert Staff.Stem.stemlet-length
                    a16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    f16
                    [

                    d'16

                    e'16

                    \revert Staff.Stem.stemlet-length
                    b16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    bf16
                    [

                    a16

                    f16

                    \revert Staff.Stem.stemlet-length
                    fs16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    b16
                    [

                    bf16

                    a16

                    \revert Staff.Stem.stemlet-length
                    cs'16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    ef'16
                    [

                    g16

                    c'16

                    \revert Staff.Stem.stemlet-length
                    bf16
                    ]

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 23 24) "16")
                    \times 24/23 {
                        % [Voice 4 measure 12]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        fs16
                        [

                        ef'16

                        f'16

                        c'16

                        b16

                        bf16

                        fs16

                        g16

                        c'16

                        b16

                        bf16

                        d'16

                        e'16

                        af16

                        cs'16

                        b16

                        g16

                        e'16

                        fs'16

                        cs'16

                        c'16

                        b16

                        \revert Staff.Stem.stemlet-length
                        g16
                        ]

                    }
                    % [Voice 4 measure 13]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    af16
                    [

                    cs'16

                    c'16

                    \revert Staff.Stem.stemlet-length
                    b16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    ef'16
                    [

                    f'16

                    a16

                    \revert Staff.Stem.stemlet-length
                    d'16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    c'16
                    [

                    af16

                    f'16

                    \clef "tenorvarC"
                    \revert Staff.Stem.stemlet-length
                    g'16
                    ]
                    % [Voice 4 measure 14]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    d'16
                    [

                    cs'16

                    c'16

                    \revert Staff.Stem.stemlet-length
                    af16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    a16
                    [

                    d'16

                    cs'16

                    \revert Staff.Stem.stemlet-length
                    c'16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    e'16
                    [

                    fs'16

                    bf16

                    \revert Staff.Stem.stemlet-length
                    ef'16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    cs'16
                    [

                    a16

                    fs'16

                    \revert Staff.Stem.stemlet-length
                    af'16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    ef'16
                    [

                    d'16

                    cs'16

                    \revert Staff.Stem.stemlet-length
                    a16
                    ]
                    % [Voice 4 measure 15]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    bf16
                    [

                    \revert Staff.Stem.stemlet-length
                    ef'16
                    \mf
                    ]

                    r8

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) "8")
                    \times 5/6 {

                        \clef "bass"
                        \override Staff.Stem.stemlet-length = 0.75
                        c8
                        - \tweak circled-tip ##t
                        \<
                        [

                        c8

                        c8

                        af,8

                        af,8

                        \revert Staff.Stem.stemlet-length
                        af,8
                        \fff
                        ]

                    }

                    r8

                    r4

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 4) "16")
                    \times 4/3 {

                        \override Staff.Stem.stemlet-length = 0.75
                        d'16
                        \f
                        \<
                        [

                        cs'16

                        \revert Staff.Stem.stemlet-length
                        f'16
                        ]

                    }

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) "16")
                    \times 6/5 {
                        % [Voice 4 measure 16]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \clef "tenorvarC"
                        \override Staff.Stem.stemlet-length = 0.75
                        g'16
                        [

                        b16

                        e'16

                        d'16

                        \revert Staff.Stem.stemlet-length
                        bf16
                        \ff
                        ]

                    }

                    r8

                    r4

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 19 20) "16")
                    \times 20/19 {
                        % [Voice 4 measure 17]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        g'16
                        \f
                        _ \markup {
                            \override
                                #'(style . "box")
                                \override
                                    #'(box-padding . 0.5)
                                    \italic
                                        \box
                                            \whiteout
                                                \small
                                                    "dim. a mf"
                            }
                        \>
                        [

                        a'16

                        e'16

                        ef'16

                        d'16

                        bf16

                        b16

                        e'16

                        ef'16

                        d'16

                        fs'16

                        af'16

                        c'16

                        f'16

                        ef'16

                        b16

                        af'16

                        bf'16

                        \revert Staff.Stem.stemlet-length
                        f'16
                        ]

                    }
                    % [Voice 4 measure 18]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    e'16
                    [

                    ef'16

                    b16

                    \revert Staff.Stem.stemlet-length
                    c'16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    f'16
                    [

                    e'16

                    ef'16

                    \revert Staff.Stem.stemlet-length
                    g'16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    a'16
                    [

                    cs'16

                    fs'16

                    \revert Staff.Stem.stemlet-length
                    e'16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    c'16
                    [

                    a'16

                    b'16

                    \revert Staff.Stem.stemlet-length
                    fs'16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    f'16
                    [

                    e'16

                    c'16

                    \revert Staff.Stem.stemlet-length
                    cs'16
                    ]

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 15 16) "16")
                    \times 16/15 {
                        % [Voice 4 measure 19]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        fs'16
                        [

                        f'16

                        e'16

                        af'16

                        bf'16

                        d'16

                        g'16

                        f'16

                        cs'16

                        bf'16

                        c''16

                        g'16

                        fs'16

                        f'16

                        \revert Staff.Stem.stemlet-length
                        cs'16
                        ]

                    }
                    % [Voice 4 measure 20]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    d'16
                    [

                    g'16

                    fs'16

                    \revert Staff.Stem.stemlet-length
                    f'16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    a'16
                    [

                    b'16

                    ef'16

                    \revert Staff.Stem.stemlet-length
                    af'16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    fs'16
                    [

                    d'16

                    b'16

                    \clef "treble"
                    \revert Staff.Stem.stemlet-length
                    cs''16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    af'16
                    [

                    g'16

                    fs'16

                    \revert Staff.Stem.stemlet-length
                    d'16
                    ]

                    \override Staff.Stem.stemlet-length = 0.75
                    ef'16
                    [

                    af'16

                    g'16

                    \revert Staff.Stem.stemlet-length
                    fs'16
                    ]
                    % [Voice 4 measure 21]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    bf'16
                    [

                    \revert Staff.Stem.stemlet-length
                    c''16
                    \mf
                    ]

                    r8

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) "8")
                    \times 5/6 {

                        \clef "bass"
                        \override Staff.Stem.stemlet-length = 0.75
                        af,8
                        - \tweak circled-tip ##t
                        \<
                        [

                        af,8

                        af,8

                        af,8

                        af,8

                        \revert Staff.Stem.stemlet-length
                        af,8
                        \fff
                        ]

                    }

                    r8

                    r4

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 10) "16")
                    \times 10/9 {
                        % [Voice 4 measure 22]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        e'16
                        \mp
                        \>
                        [

                        \clef "tenorvarC"
                        a'16

                        g'16

                        ef'16

                        c''16

                        \clef "treble"
                        d''16

                        a'16

                        af'16

                        \revert Staff.Stem.stemlet-length
                        g'16
                        \p
                        ]

                    }

                    r8

                    r4

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 10) "8")
                    \times 10/11 {
                        % [Voice 4 measure 23]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \clef "bass"
                        \override Staff.Stem.stemlet-length = 0.75
                        af,8
                        _ \markup {
                            \override
                                #'(style . "box")
                                \override
                                    #'(box-padding . 0.5)
                                    \italic
                                        \box
                                            \whiteout
                                                \small
                                                    "cresc. a fff"
                            }
                        - \tweak circled-tip ##t
                        \<
                        [

                        e8

                        e8

                        e8

                        e8

                        e8

                        e8

                        e8

                        e8

                        e8

                        \revert Staff.Stem.stemlet-length
                        e8
                        ]

                    }

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "4.")
                    \times 12/15 {
                        % [Voice 4 measure 24]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        f8
                        [

                        f8

                        f8

                        f8

                        f8

                        f8

                        f8

                        f8

                        f8

                        a,8

                        a,8

                        a,8

                        a,8

                        a,8

                        \revert Staff.Stem.stemlet-length
                        a,8
                        ]

                    }

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "4.")
                    \times 6/9 {
                        % [Voice 4 measure 25]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        a,8
                        [

                        a,8

                        a,8

                        a,8

                        cs8

                        cs8

                        cs8

                        cs8

                        \revert Staff.Stem.stemlet-length
                        cs8
                        ]

                    }

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 10) "8")
                    \times 10/13 {
                        % [Voice 4 measure 26]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \override Staff.Stem.stemlet-length = 0.75
                        cs8
                        [

                        cs8

                        cs8

                        cs8

                        cs8

                        cs8

                        e8

                        e8

                        e8

                        e8

                        e8

                        e8

                        \revert Staff.Stem.stemlet-length
                        e8
                        ]

                    }
                    % [Voice 4 measure 27]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    e8
                    \fff

                    r8

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 10) "16")
                    \times 10/9 {

                        \override Staff.Stem.stemlet-length = 0.75
                        ef'16
                        \mf
                        \<
                        [

                        e'16

                        \clef "tenorvarC"
                        a'16

                        af'16

                        g'16

                        b'16

                        \clef "treble"
                        cs''16

                        f'16

                        \revert Staff.Stem.stemlet-length
                        bf'16
                        \f
                        ]

                    }

                    r8

                    r4

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "8")
                    \times 2/3 {

                        \clef "bass"
                        \override Staff.Stem.stemlet-length = 0.75
                        e8
                        - \tweak circled-tip ##t
                        \<
                        [

                        b,8

                        \revert Staff.Stem.stemlet-length
                        b,8
                        ]

                    }
                    % [Voice 4 measure 28]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \override Staff.Stem.stemlet-length = 0.75
                    b,8
                    [

                    \revert Staff.Stem.stemlet-length
                    b,8
                    ]

                    b,8
                    \fff

                    r8

                    r4
                    % [Voice 4 measure 29]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    fs,2
                    \ff
                    _ \markup {
                        \override
                            #'(style . "box")
                            \override
                                #'(box-padding . 0.5)
                                \italic
                                    \box
                                        \whiteout
                                            \small
                                                "dim. a p"
                        }
                    \>

                    af,4
                    ~

                    af,4

                    f,4
                    ~
                    % [Voice 4 measure 30]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    f,1

                    e,4
                    ~
                    % [Voice 4 measure 31]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    e,1
                    ~
                    % [Voice 4 measure 32]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    e,2.

                    g,2
                    ~
                    % [Voice 4 measure 33]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    g,8
                    \p

                    r8

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) "8")
                    \times 6/7 {

                        \override Staff.Stem.stemlet-length = 0.75
                        b,8
                        - \tweak circled-tip ##t
                        \<
                        [

                        b,8

                        bf,8

                        bf,8

                        bf,8

                        bf,8

                        \revert Staff.Stem.stemlet-length
                        bf,8
                        \fff
                        ]
                        \bar "||"

                    }

                }
                }

            }

        >>

    >>
}                                                                              %! abjad.LilyPondFile._get_formatted_blocks()