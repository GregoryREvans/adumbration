import evans

clef_handler_one = evans.ClefHandler(
    clef="treble", add_extended_clefs=True, add_ottavas=False
)
clef_handler_two = evans.ClefHandler(
    clef="treble", add_extended_clefs=True, add_ottavas=False
)
clef_handler_three = evans.ClefHandler(
    clef="alto", add_extended_clefs=False, add_ottavas=False
)
clef_handler_four = evans.ClefHandler(
    clef="bass", add_extended_clefs=True, add_ottavas=True
)


clef_handlers = [
    clef_handler_one,
    clef_handler_two,
    clef_handler_three,
    clef_handler_four,
]
