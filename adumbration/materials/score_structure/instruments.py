import abjad

instrument_one = abjad.Violin()
instrument_one_range = instrument_one.pitch_range
instrument_one_range_lowest = abjad.NumberedPitch(instrument_one_range.start_pitch)
instrument_one_range_highest = abjad.NumberedPitch(instrument_one_range.stop_pitch)

instrument_two = abjad.Violin()
instrument_two_range = instrument_two.pitch_range
instrument_two_range_lowest = abjad.NumberedPitch(instrument_two_range.start_pitch)
instrument_two_range_highest = abjad.NumberedPitch(instrument_two_range.stop_pitch)

instrument_three = abjad.Viola()
instrument_three_range = instrument_three.pitch_range
instrument_three_range_lowest = abjad.NumberedPitch(instrument_three_range.start_pitch)
instrument_three_range_highest = abjad.NumberedPitch(instrument_three_range.stop_pitch)

instrument_four = abjad.Cello()
instrument_four_range = instrument_four.pitch_range
instrument_four_range_lowest = abjad.NumberedPitch(instrument_four_range.start_pitch)
instrument_four_range_highest = abjad.NumberedPitch(instrument_four_range.stop_pitch)

instruments = [
    instrument_one,
    instrument_two,
    instrument_three,
    instrument_four,
]
voices = len(instruments)

voice_to_name_dict = {
    "Voice 1": "violin_I",
    "Voice 3": "violin_II",
    "Voice 4": "viola",
    "Voice 5": "violoncello",
}
