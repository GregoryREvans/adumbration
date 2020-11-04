
    \context Score = "adumbration Score"
    <<

        \context TimeSignatureContext = "Global Context"
        {
            % [Global Context measure 1]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=115
            \time 4/4                                                          %! scaling time signatures
            \mark \markup {
                \bold
                    {
                    }
                }
            s1 * 1
            ^ \markup {
                \override
                    #'(font-name . "STIXGeneral Bold")
                    "komm komm komm [komm (v)]"
                }
            - \abjad-dashed-line-with-arrow
            - \baca-metronome-mark-spanner-left-text 2 0 1 "115"
            - \tweak padding #0.2
            - \tweak staff-padding #0.2
            - \tweak font-size #2
            \bacaStartTextSpanMM
            % [Global Context measure 2]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 3]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 9/4                                                          %! scaling time signatures
            s1 * 9/4
            % [Global Context measure 4]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 6/4                                                          %! scaling time signatures
            s1 * 3/2
            \bacaStopTextSpanMM
            - \abjad-invisible-line
            - \baca-metronome-mark-spanner-left-text 2 0 1 "50"
            - \tweak padding #0.2
            - \tweak staff-padding #0.2
            - \tweak font-size #2
            \bacaStartTextSpanMM
            % [Global Context measure 5]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=63
            \time 6/4                                                          %! scaling time signatures
            s1 * 3/2
            \bacaStopTextSpanMM
            - \abjad-dashed-line-with-arrow
            - \baca-metronome-mark-spanner-left-text 2 0 1 "50"
            - \tweak padding #0.2
            - \tweak staff-padding #0.2
            - \tweak font-size #2
            \bacaStartTextSpanMM
            % [Global Context measure 6]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 7]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 9/4                                                          %! scaling time signatures
            s1 * 9/4
            \bacaStopTextSpanMM
            - \abjad-invisible-line
            - \baca-metronome-mark-spanner-left-text 2 0 1 "75"
            - \tweak padding #0.2
            - \tweak staff-padding #0.2
            - \tweak font-size #2
            \bacaStartTextSpanMM
            % [Global Context measure 8]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            \bacaStopTextSpanMM
            - \abjad-dashed-line-with-arrow
            - \baca-metronome-mark-spanner-left-text 2 0 1 "50"
            - \tweak padding #0.2
            - \tweak staff-padding #0.2
            - \tweak font-size #2
            \bacaStartTextSpanMM
            % [Global Context measure 9]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 10]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 11]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 12]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 9/4                                                          %! scaling time signatures
            s1 * 9/4
            % [Global Context measure 13]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            \bacaStopTextSpanMM
            - \abjad-invisible-line
            - \baca-metronome-mark-spanner-left-text 2 0 1 "75"
            - \tweak padding #0.2
            - \tweak staff-padding #0.2
            - \tweak font-size #2
            \bacaStartTextSpanMM
            % [Global Context measure 14]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 9/4                                                          %! scaling time signatures
            s1 * 9/4
            \bacaStopTextSpanMM
            - \abjad-dashed-line-with-arrow
            - \baca-metronome-mark-spanner-left-text 2 0 1 "50"
            - \tweak padding #0.2
            - \tweak staff-padding #0.2
            - \tweak font-size #2
            \bacaStartTextSpanMM
            % [Global Context measure 15]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            \break
            % [Global Context measure 16]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 17]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 18]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 19]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            \bacaStopTextSpanMM
            - \abjad-invisible-line
            - \baca-metronome-mark-spanner-left-text 2 0 1 "75"
            - \tweak padding #0.2
            - \tweak staff-padding #0.2
            - \tweak font-size #2
            \bacaStartTextSpanMM
            \break
            % [Global Context measure 20]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \once \override TimeSignature.color = #white                       %! applying ending skips
            \time 3/16                                                         %! scaling time signatures
            s1 * 3/16
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
                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    \clef "treble"
                    r1 * 1/2

                    R1 * 1/2
                    % [Voice 1 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/8

                    R1 * 3/8
                    % [Voice 1 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak NoteHead.style #'default
                    g'2
                    \p
                    ^ \markup { 1/2clt. \raise #0.75 \baca-circle-very-wide-markup }

                    r1..
                    % [Voice 1 measure 4]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/4

                    R1 * 3/4
                    % [Voice 1 measure 5]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/4

                    R1 * 3/4
                    % [Voice 1 measure 6]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    \tweak NoteHead.style #'cross
                    b4
                    \p
                    ^ \markup { finger percussion }

                    r4
                    % [Voice 1 measure 7]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 9/8

                    R1 * 9/8
                    % [Voice 1 measure 8]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 1/2

                    R1 * 1/2
                    % [Voice 1 measure 9]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 1/2

                    R1 * 1/2
                    % [Voice 1 measure 10]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    \tweak NoteHead.style #'default
                    fqs'4
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
                    af'8

                    r8
                    \!
                    % [Voice 1 measure 11]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak NoteHead.style #'default
                    f'2
                    \f
                    - \tweak stencil #constante-hairpin
                    \<

                                    - \tweak arrow-length #2
                                    - \tweak arrow-width #0.5
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #2.5
                                    \glissando


                    \tweak NoteHead.style #'harmonic-mixed
                    aqf'4

                    r2
                    \!
                    % [Voice 1 measure 12]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r1

                    \tweak NoteHead.style #'default
                    a'2
                    \f
                    \>
                    ~
                    ^ \markup { arco \raise #0.75 \baca-circle-granulation-markup }

                    \tweak NoteHead.style #'default
                    a'2.
                    ~
                    % [Voice 1 measure 13]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak NoteHead.style #'default
                    a'2.
                    \mp
                    % [Voice 1 measure 14]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 9/8

                    R1 * 9/8
                    % [Voice 1 measure 15]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 5/8

                    R1 * 5/8
                    % [Voice 1 measure 16]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/8

                    R1 * 3/8
                    % [Voice 1 measure 17]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/8

                    R1 * 3/8
                    % [Voice 1 measure 18]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak NoteHead.style #'default
                    \override Staff.Stem.stemlet-length = 0.75
                    a'8
                    \mf
                    - \tweak stencil #constante-hairpin
                    \<
                    [
                    ^ \markup { slow bow }

                                    - \tweak arrow-length #2
                                    - \tweak arrow-width #0.5
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #2.5
                                    \glissando


                    \tweak NoteHead.style #'harmonic-mixed
                    \revert Staff.Stem.stemlet-length
                    gqf'16
                    ]

                    r16
                    \!

                    \tweak NoteHead.style #'default
                    \override Staff.Stem.stemlet-length = 0.75
                    f'8.
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
                    \revert Staff.Stem.stemlet-length
                    fqs'16
                    ]

                    r2.
                    \!
                    % [Voice 1 measure 19]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/8

                    R1 * 3/8
                    \bar "||"
                    % [Voice 1 measure 20]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                    \once \override Rest.color = #white                        %! applying ending skips
                    r1 * 3/32

                    \once \override MultiMeasureRest.color = #white            %! applying ending skips
                    R1 * 3/32
                    ^ \markup {                                                %! applying ending skips
                        \musicglyph                                            %! applying ending skips
                            #"scripts.ufermata"                                %! applying ending skips
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
                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    \clef "treble"
                    r1 * 1/2

                    R1 * 1/2
                    % [Voice 2 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak NoteHead.style #'default
                    g'2.
                    \p
                    \>
                    ~
                    ^ \markup { arco \raise #0.75 \baca-circle-ext-tight-markup }
                    % [Voice 2 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak NoteHead.style #'default
                    g'2
                    \pp

                    r1..
                    % [Voice 2 measure 4]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/4

                    R1 * 3/4
                    % [Voice 2 measure 5]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2

                    \tweak NoteHead.style #'default
                    a'1
                    \p
                    \<
                    ~
                    ^ \markup { clt. \raise #0.75 \baca-circle-fast-markup }
                    % [Voice 2 measure 6]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak NoteHead.style #'default
                    a'2.
                    ~
                    % [Voice 2 measure 7]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak NoteHead.style #'default
                    a'4
                    \mf

                    r\breve
                    % [Voice 2 measure 8]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 1/2

                    R1 * 1/2
                    % [Voice 2 measure 9]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 1/2

                    R1 * 1/2
                    % [Voice 2 measure 10]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/8

                    R1 * 3/8

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 10) "8")
                    \times 10/9 {
                        % [Voice 2 measure 11]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak NoteHead.style #'default
                        af'4
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
                        f'8

                        r8
                        \!

                        \tweak NoteHead.style #'default
                        aqf'4.
                        \f
                        - \tweak stencil #constante-hairpin
                        \<

                                        - \tweak arrow-length #2
                                        - \tweak arrow-width #0.5
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #2.5
                                        \glissando


                        \tweak NoteHead.style #'harmonic-mixed
                        a'8

                        r8
                        \!

                    }
                    % [Voice 2 measure 12]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak NoteHead.style #'default
                    \override Staff.Stem.stemlet-length = 0.75
                    gqf'16
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
                    \revert Staff.Stem.stemlet-length
                    f'32
                    ]

                    r32
                    \!

                    \tweak NoteHead.style #'default
                    \override Staff.Stem.stemlet-length = 0.75
                    fqs'16
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
                    \revert Staff.Stem.stemlet-length
                    af'32
                    ]

                    r32
                    \!

                    r2

                    r1.

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "4")
                    \times 2/3 {
                        % [Voice 2 measure 13]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r4

                        \tweak NoteHead.style #'default
                        f'4
                        \mf
                        - \tweak stencil #constante-hairpin
                        \<

                                        - \tweak arrow-length #2
                                        - \tweak arrow-width #0.5
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #2.5
                                        \glissando


                        \tweak NoteHead.style #'harmonic-mixed
                        aqf'8

                        r8
                        \!

                    }

                    r4
                    % [Voice 2 measure 14]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 9/8

                    R1 * 9/8
                    % [Voice 2 measure 15]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 5/8

                    R1 * 5/8
                    % [Voice 2 measure 16]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/8

                    R1 * 3/8
                    % [Voice 2 measure 17]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/8

                    R1 * 3/8
                    % [Voice 2 measure 18]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    \tweak NoteHead.style #'cross
                    e'4
                    \pp
                    ^ \markup { finger percussion }

                    r4

                    r4

                    \tweak NoteHead.style #'cross
                    b4
                    \ff
                    \>

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) "8")
                    \times 6/5 {
                        % [Voice 2 measure 19]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak NoteHead.style #'cross
                        \override Staff.Stem.stemlet-length = 0.75
                        e'8
                        [

                        \tweak NoteHead.style #'cross
                        \revert Staff.Stem.stemlet-length
                        b8
                        \p
                        ]

                        r4

                        \tweak NoteHead.style #'cross
                        e'8
                        \mp
                        \bar "||"

                    }
                    % [Voice 2 measure 20]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                    \once \override Rest.color = #white                        %! applying ending skips
                    r1 * 3/32

                    \once \override MultiMeasureRest.color = #white            %! applying ending skips
                    R1 * 3/32
                    ^ \markup {                                                %! applying ending skips
                        \musicglyph                                            %! applying ending skips
                            #"scripts.ufermata"                                %! applying ending skips
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
                    \tweak NoteHead.style #'default
                    g'1
                    \ff
                    \>
                    ~
                    ^ \markup { 1/2clt. \raise #0.75 \baca-circle-slow-markup }
                    % [Voice 3 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak NoteHead.style #'default
                    g'2.
                    ~
                    % [Voice 3 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak NoteHead.style #'default
                    g'4
                    \mf

                    r\breve
                    % [Voice 3 measure 4]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/4

                    R1 * 3/4
                    % [Voice 3 measure 5]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r2.

                    \tweak NoteHead.style #'default
                    a'2.
                    \p
                    \<
                    ~
                    ^ \markup { arco \raise #0.75 \baca-circle-tight-poss-grind-at-talon-markup }
                    % [Voice 3 measure 6]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak NoteHead.style #'default
                    a'2
                    \f

                    r4
                    % [Voice 3 measure 7]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 9/8

                    R1 * 9/8
                    % [Voice 3 measure 8]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 1/2

                    R1 * 1/2
                    % [Voice 3 measure 9]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak NoteHead.style #'default
                    d''1
                    \mp
                    \>
                    ~
                    ^ \markup { clt. \raise #0.75 \baca-circle-wide-poss-markup }
                    % [Voice 3 measure 10]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak NoteHead.style #'default
                    d''2.
                    ~
                    % [Voice 3 measure 11]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak NoteHead.style #'default
                    d''2.
                    ~

                    \tweak NoteHead.style #'default
                    d''2
                    ~
                    % [Voice 3 measure 12]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak NoteHead.style #'default
                    d''4
                    \p

                    r\breve
                    % [Voice 3 measure 13]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    r4

                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "8")
                    \times 4/5 {

                        \tweak NoteHead.style #'default
                        a'4
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
                        gqf'8

                        r4
                        \!

                    }

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 8 9) "4")
                    \times 9/8 {
                        % [Voice 3 measure 14]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

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
                        fqs'4

                        r4
                        \!

                        \tweak NoteHead.style #'default
                        af'2.
                        \f
                        - \tweak stencil #constante-hairpin
                        \<

                                        - \tweak arrow-length #2
                                        - \tweak arrow-width #0.5
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #2.5
                                        \glissando


                        \tweak NoteHead.style #'harmonic-mixed
                        f'4

                                        - \tweak arrow-length #2
                                        - \tweak arrow-width #0.5
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #2.5
                                        \glissando


                    }

                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 10) "8")
                    \times 10/9 {
                        % [Voice 3 measure 15]                                 %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak NoteHead.style #'default
                        aqf'4

                                        - \tweak arrow-length #2
                                        - \tweak arrow-width #0.5
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #2.5
                                        \glissando


                        \tweak NoteHead.style #'harmonic-mixed
                        a'8

                        r8
                        \!

                        \tweak NoteHead.style #'default
                        gqf'4.
                        \mf
                        - \tweak stencil #constante-hairpin
                        \<

                                        - \tweak arrow-length #2
                                        - \tweak arrow-width #0.5
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #2.5
                                        \glissando


                        \tweak NoteHead.style #'harmonic-mixed
                        f'8

                        r8
                        \!

                    }
                    % [Voice 3 measure 16]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/8

                    R1 * 3/8
                    % [Voice 3 measure 17]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/8

                    R1 * 3/8
                    % [Voice 3 measure 18]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 5/8

                    R1 * 5/8
                    % [Voice 3 measure 19]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/8

                    R1 * 3/8
                    \bar "||"
                    % [Voice 3 measure 20]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                    \once \override Rest.color = #white                        %! applying ending skips
                    r1 * 3/32

                    \once \override MultiMeasureRest.color = #white            %! applying ending skips
                    R1 * 3/32
                    ^ \markup {                                                %! applying ending skips
                        \musicglyph                                            %! applying ending skips
                            #"scripts.ufermata"                                %! applying ending skips
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
                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    \clef "bass"
                    r1 * 1/2

                    R1 * 1/2
                    % [Voice 4 measure 2]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/8

                    R1 * 3/8
                    % [Voice 4 measure 3]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \clef "treble"
                    \tweak NoteHead.style #'default
                    e''1.
                    \pp
                    \<
                    ~
                    ^ \markup { 1/2clt. \raise #0.75 \baca-circle-slow-markup }

                    \tweak NoteHead.style #'default
                    e''2.
                    ~
                    % [Voice 4 measure 4]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak NoteHead.style #'default
                    e''2
                    \p

                    r1
                    % [Voice 4 measure 5]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak NoteHead.style #'default
                    g'1
                    \mf
                    \<
                    ^ \markup { arco \raise #0.75 \baca-circle-very-wide-markup }

                    \tweak NoteHead.style #'default
                    a'2
                    ~
                    % [Voice 4 measure 6]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak NoteHead.style #'default
                    a'2
                    \ff

                    r4
                    % [Voice 4 measure 7]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 9/8

                    R1 * 9/8
                    % [Voice 4 measure 8]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak NoteHead.style #'default
                    g'1
                    \mf
                    \>
                    ~
                    ^ \markup { clt. \raise #0.75 \baca-circle-fast-markup }
                    % [Voice 4 measure 9]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak NoteHead.style #'default
                    g'1
                    ~
                    % [Voice 4 measure 10]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak NoteHead.style #'default
                    g'2.
                    ~
                    % [Voice 4 measure 11]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \tweak NoteHead.style #'default
                    g'4
                    \p

                    r1
                    % [Voice 4 measure 12]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 9/8

                    R1 * 9/8
                    % [Voice 4 measure 13]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/8

                    R1 * 3/8
                    % [Voice 4 measure 14]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 9/8

                    R1 * 9/8
                    % [Voice 4 measure 15]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 5/8

                    R1 * 5/8
                    % [Voice 4 measure 16]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/8

                    R1 * 3/8
                    % [Voice 4 measure 17]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/8

                    R1 * 3/8
                    % [Voice 4 measure 18]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 5/8

                    R1 * 5/8
                    % [Voice 4 measure 19]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \once \override Rest.transparent = ##t                     %! applying invisibility
                    r1 * 3/8

                    R1 * 3/8
                    \bar "||"
                    % [Voice 4 measure 20]                                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                    \once \override Rest.color = #white                        %! applying ending skips
                    r1 * 3/32

                    \once \override MultiMeasureRest.color = #white            %! applying ending skips
                    R1 * 3/32
                    ^ \markup {                                                %! applying ending skips
                        \musicglyph                                            %! applying ending skips
                            #"scripts.ufermata"                                %! applying ending skips
                        }                                                      %! applying ending skips
                    \stopStaff \startStaff                                     %! applying ending skips

                }
                }

            }

        >>

    >>
