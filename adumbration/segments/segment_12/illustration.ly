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

            \tempo 4=83
            \time 3/4                                                          %! scaling time signatures
            \mark \markup {
                \bold
                    {
                    }
                }
            s1 * 3/4
            _ \markup {
                \override
                    #'(font-name . "STIXGeneral Bold")
                    \column
                        {
                            \box
                                \caps
                                    Pins
                            \caps
                                "(for Loose Geographies)"
                        }
                }
            - \abjad-dashed-line-with-arrow
            - \baca-metronome-mark-spanner-left-text 2 0 1 "60"
            - \tweak padding #0.2
            - \tweak staff-padding #0.2
            - \tweak font-size #2
            \bacaStartTextSpanMM
            % [Global Context measure 2]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 3]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            \bacaStopTextSpanMM
            - \abjad-invisible-line
            - \baca-metronome-mark-spanner-left-text 2 0 1 "90"
            - \tweak padding #0.2
            - \tweak staff-padding #0.2
            - \tweak font-size #2
            \bacaStartTextSpanMM
            % [Global Context measure 4]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            \bacaStopTextSpanMM
            % [Global Context measure 5]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 9/4                                                          %! scaling time signatures
            s1 * 9/4
            - \abjad-dashed-line-with-arrow
            - \baca-metronome-mark-spanner-left-text 2 0 1 "90"
            - \tweak padding #0.2
            - \tweak staff-padding #0.2
            - \tweak font-size #2
            \bacaStartTextSpanMM
            % [Global Context measure 6]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 7]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 7/4                                                          %! scaling time signatures
            s1 * 7/4
            \bacaStopTextSpanMM
            - \abjad-invisible-line
            - \baca-metronome-mark-spanner-left-text 2 0 1 "120"
            - \tweak padding #0.2
            - \tweak staff-padding #0.2
            - \tweak font-size #2
            \bacaStartTextSpanMM
            % [Global Context measure 8]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            \bacaStopTextSpanMM
            % [Global Context measure 9]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 9/4                                                          %! scaling time signatures
            s1 * 9/4
            % [Global Context measure 10]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            - \abjad-dashed-line-with-arrow
            - \baca-metronome-mark-spanner-left-text 2 0 1 "120"
            - \tweak padding #0.2
            - \tweak staff-padding #0.2
            - \tweak font-size #2
            \bacaStartTextSpanMM
            % [Global Context measure 11]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            \bacaStopTextSpanMM
            - \abjad-invisible-line
            - \baca-metronome-mark-spanner-left-text 2 0 1 "60"
            - \tweak padding #0.2
            - \tweak staff-padding #0.2
            - \tweak font-size #2
            \bacaStartTextSpanMM
            % [Global Context measure 12]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            \bacaStopTextSpanMM

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

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) "4")
                    \times 5/6 {
                        % [Voice 1 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2

                        \tweak NoteHead.style #'cross
                        b2
                        \p
                        ^ \markup { finger percussion }

                        r2

                    }
                    % [Voice 1 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r1
                    % [Voice 1 measure 4]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2.

                    r2
                    % [Voice 1 measure 5]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r1.

                    r2.
                    % [Voice 1 measure 6]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2.
                    % [Voice 1 measure 7]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r1..
                    % [Voice 1 measure 8]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2.

                    r2
                    % [Voice 1 measure 9]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r1.

                    r2.
                    % [Voice 1 measure 10]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2.
                    % [Voice 1 measure 11]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2.
                    % [Voice 1 measure 12]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r1
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
                    \clef "treble"
                    \tweak NoteHead.style #'default
                    g'2.
                    \p
                    \<
                    ~
                    ^ \markup { clt. \raise #0.75 \baca-circle-fast-markup }
                    % [Voice 2 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak NoteHead.style #'default
                    g'2.
                    ~

                    \tweak NoteHead.style #'default
                    g'2
                    ~
                    % [Voice 2 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak NoteHead.style #'default
                    g'1
                    ~
                    % [Voice 2 measure 4]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak NoteHead.style #'default
                    g'2.
                    ~

                    \tweak NoteHead.style #'default
                    g'2
                    ~
                    % [Voice 2 measure 5]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak NoteHead.style #'default
                    g'1.
                    ~

                    \tweak NoteHead.style #'default
                    g'2.
                    \f
                    % [Voice 2 measure 6]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2.
                    % [Voice 2 measure 7]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r1..
                    % [Voice 2 measure 8]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2.

                    r2
                    % [Voice 2 measure 9]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r1.

                    r2.
                    % [Voice 2 measure 10]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2.
                    % [Voice 2 measure 11]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    \tweak NoteHead.style #'default
                    fqs'4
                    \mf
                    - \tweak stencil #constante-hairpin
                    \<

                                    - \tweak arrow-length #2
                                    - \tweak arrow-width #0.5
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #2.5
                                    \glissando


                    \tweak NoteHead.style #'harmonic-mixed
                    \override Staff.Stem.stemlet-length = 0.75
                    af'8
                    [

                    \revert Staff.Stem.stemlet-length
                    r8
                    \!
                    ]

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "16")
                    \times 4/5 {
                        % [Voice 2 measure 12]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak NoteHead.style #'default
                        \override Staff.Stem.stemlet-length = 0.75
                        f'8
                        \f
                        - \tweak stencil #constante-hairpin
                        \<
                        [

                                        - \tweak arrow-length #2
                                        - \tweak arrow-width #0.5
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #2.5
                                        \glissando


                        \tweak NoteHead.style #'harmonic-mixed
                        aqf'16

                        \revert Staff.Stem.stemlet-length
                        r8
                        \!
                        ]

                    }

                    r2.
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
                    r2.
                    % [Voice 3 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2.

                    r2
                    % [Voice 3 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r1

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 5) "4")
                    \times 5/4 {
                        % [Voice 3 measure 4]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak NoteHead.style #'default
                        a'4
                        \mf
                        - \tweak stencil #constante-hairpin
                        \<
                        ^ \markup { slow bow }

                                        - \tweak arrow-length #2
                                        - \tweak arrow-width #0.5
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #2.5
                                        \glissando


                        \tweak NoteHead.style #'harmonic-mixed
                        \override Staff.Stem.stemlet-length = 0.75
                        gqf'8
                        [

                        \revert Staff.Stem.stemlet-length
                        r8
                        \!
                        ]

                        \tweak NoteHead.style #'default
                        f'4.
                        \f
                        - \tweak stencil #constante-hairpin
                        \<

                                        - \tweak arrow-length #2
                                        - \tweak arrow-width #0.5
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #2.5
                                        \glissando


                        \tweak NoteHead.style #'harmonic-mixed
                        fqs'8

                    }
                    % [Voice 3 measure 5]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak NoteHead.style #'default
                    af'2
                    \mf
                    - \tweak stencil #constante-hairpin
                    \<

                                    - \tweak arrow-length #2
                                    - \tweak arrow-width #0.5
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #2.5
                                    \glissando


                    \tweak NoteHead.style #'harmonic-mixed
                    f'4

                    r4
                    \!

                    \tweak NoteHead.style #'default
                    aqf'2
                    \f
                    - \tweak stencil #constante-hairpin
                    \<
                    ~

                    \tweak NoteHead.style #'default
                    aqf'4

                                    - \tweak arrow-length #2
                                    - \tweak arrow-width #0.5
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #2.5
                                    \glissando


                    \tweak NoteHead.style #'harmonic-mixed
                    a'4

                    r4
                    \!

                    \scaleDurations #'(1 . 1) {
                        % [Voice 3 measure 6]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak NoteHead.style #'default
                        \override Staff.Stem.stemlet-length = 0.75
                        gqf'8.
                        \mf
                        - \tweak stencil #constante-hairpin
                        \<
                        [

                                        - \tweak arrow-length #2
                                        - \tweak arrow-width #0.5
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #2.5
                                        \glissando


                        \tweak NoteHead.style #'harmonic-mixed
                        f'16.

                        r16.
                        \!

                        \tweak NoteHead.style #'default
                        fqs'8.
                        \f
                        - \tweak stencil #constante-hairpin
                        \<

                                        - \tweak arrow-length #2
                                        - \tweak arrow-width #0.5
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #2.5
                                        \glissando


                        \tweak NoteHead.style #'harmonic-mixed
                        af'16.

                        \revert Staff.Stem.stemlet-length
                        r16.
                        \!
                        ]

                    }
                    % [Voice 3 measure 7]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r1..
                    % [Voice 3 measure 8]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2.

                    r2
                    % [Voice 3 measure 9]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r1.

                    r2.
                    % [Voice 3 measure 10]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2.
                    % [Voice 3 measure 11]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2.

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "2")
                    \times 2/3 {
                        % [Voice 3 measure 12]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2

                        \tweak NoteHead.style #'default
                        f'2
                        \mf
                        - \tweak stencil #constante-hairpin
                        \<

                                        - \tweak arrow-length #2
                                        - \tweak arrow-width #0.5
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #2.5
                                        \glissando


                        \tweak NoteHead.style #'harmonic-mixed
                        aqf'4

                        r4
                        \!
                        \bar "||"

                    }

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
                    \clef "treble"
                    r2.
                    % [Voice 4 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2.

                    r2
                    % [Voice 4 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r1
                    % [Voice 4 measure 4]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2.

                    r2
                    % [Voice 4 measure 5]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r1.

                    r2.
                    % [Voice 4 measure 6]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2.
                    % [Voice 4 measure 7]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r1..
                    % [Voice 4 measure 8]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak NoteHead.style #'default
                    a'2
                    \f
                    - \tweak stencil #constante-hairpin
                    \<
                    ^ \markup { slow bow }

                                    - \tweak arrow-length #2
                                    - \tweak arrow-width #0.5
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #2.5
                                    \glissando


                    \tweak NoteHead.style #'harmonic-mixed
                    gqf'4

                    r2
                    \!
                    % [Voice 4 measure 9]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r1.

                    r2.
                    % [Voice 4 measure 10]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2.
                    % [Voice 4 measure 11]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2.
                    % [Voice 4 measure 12]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r1
                    \bar "||"

                }
                }

            }

        >>

    >>
}                                                                              %! abjad.LilyPondFile._get_formatted_blocks()