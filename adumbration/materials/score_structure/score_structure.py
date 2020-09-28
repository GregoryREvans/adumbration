import abjad

from adumbration.materials.score_structure.instruments import voices

voice_staff_names = [[f"Voice {i + 1}", f"Staff {i + 1}"] for i in range(voices)]

score = abjad.Score(
    [
        abjad.Staff(lilypond_type="TimeSignatureContext", name="Global Context"),
        abjad.StaffGroup(
            [
                abjad.Staff(
                    [abjad.Voice(name=voice_name)],
                    name=staff_name,
                    lilypond_type="Staff",
                )
                for voice_name, staff_name in voice_staff_names
            ],
            name="Staff Group",
        ),
    ],
    name="adumbration Score",
)
