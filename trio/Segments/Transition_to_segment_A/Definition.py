import abjad

##################### imports
violin_string_staff = abjad.Staff()
violin_bow_staff = abjad.Staff()
violin_lh_staff = abjad.Staff()

viola_string_staff = abjad.Staff()
viola_bow_staff = abjad.Staff()
viola_lh_staff = abjad.Staff()

cello_string_staff = abjad.Staff()
cello_bow_staff = abjad.Staff()
cello_lh_staff = abjad.Staff()
##################### staves

violin_string_staff.extend(r" \times 2/3 {c'4 c'4 c'4}")
violin_bow_staff.extend(r"c'4 c'4")
violin_lh_staff.extend(r"c'2")

viola_string_staff.extend(r" \times 2/3 {c'4 c'4 c'4}")
viola_bow_staff.extend(r"c'4 c'4")
viola_lh_staff.extend(r"c'2")

cello_string_staff.extend(r" \times 2/3 {c'4 c'4 c'4}")
cello_bow_staff.extend(r"c'4 c'4")
cello_lh_staff.extend(r"c'2")
##################### measures/notes

violin_string_staff_leaves = abjad.select(violin_string_staff).by_leaf()
abjad.attach(abjad.BowContactPoint((0, 5)), violin_string_staff_leaves[0])
abjad.attach(abjad.BowContactPoint((5, 5)), violin_string_staff_leaves[1])
abjad.attach(abjad.BowContactPoint((2, 5)), violin_string_staff_leaves[2])
abjad.attach(abjad.Clef("percussion"), violin_string_staff)
abjad.override(violin_string_staff).bar_line.transparent = True
abjad.override(violin_string_staff).dots.staff_position = -8
abjad.override(violin_string_staff).flag.Y_offset = -8.5
abjad.override(violin_string_staff).glissando.bound_details__left__padding = 1.5
abjad.override(violin_string_staff).glissando.bound_details__right__padding = 1.5
abjad.override(violin_string_staff).glissando.thickness = 2
abjad.override(violin_string_staff).script.staff_padding = 3
abjad.override(violin_string_staff).staff_symbol.transparent = True
abjad.override(violin_string_staff).stem.direction = abjad.Down
abjad.override(violin_string_staff).stem.length = 8
abjad.override(violin_string_staff).stem.stem_begin_position = -9
abjad.override(violin_string_staff).time_signature.stencil = False
abjad.attach(abjad.BowContactSpanner(), violin_string_staff_leaves)

violin_bow_staff_leaves = abjad.select(violin_bow_staff).by_leaf()
abjad.attach(abjad.BowContactPoint((0, 4)), violin_bow_staff_leaves[0])
abjad.attach(abjad.BowMotionTechnique("jete"), violin_bow_staff_leaves[0])
abjad.attach(abjad.BowContactPoint((4, 4)), violin_bow_staff_leaves[1])
abjad.attach(abjad.Clef("percussion"), violin_bow_staff)
abjad.override(violin_bow_staff).bar_line.transparent = True
abjad.override(violin_bow_staff).dots.staff_position = -8
abjad.override(violin_bow_staff).flag.Y_offset = -8.5
abjad.override(violin_bow_staff).glissando.bound_details__left__padding = 1.5
abjad.override(violin_bow_staff).glissando.bound_details__right__padding = 1.5
abjad.override(violin_bow_staff).glissando.thickness = 2
abjad.override(violin_bow_staff).script.staff_padding = 3
abjad.override(violin_bow_staff).staff_symbol.transparent = True
abjad.override(violin_bow_staff).stem.direction = abjad.Down
abjad.override(violin_bow_staff).stem.length = 8
abjad.override(violin_bow_staff).stem.stem_begin_position = -9
abjad.override(violin_bow_staff).time_signature.stencil = False
abjad.attach(abjad.BowContactSpanner(), violin_bow_staff_leaves)

abjad.attach(abjad.Clef("treble"), violin_lh_staff)
abjad.attach(abjad.Violin(), violin_lh_staff[0])
abjad.attach(abjad.TimeSignature((2, 4)), violin_lh_staff[0])
###################### violin

viola_string_staff_leaves = abjad.select(viola_string_staff).by_leaf()
abjad.attach(abjad.BowContactPoint((0, 5)), viola_string_staff_leaves[0])
abjad.attach(abjad.BowContactPoint((4, 5)), viola_string_staff_leaves[1])
abjad.attach(abjad.BowContactPoint((3, 5)), viola_string_staff_leaves[2])
abjad.attach(abjad.Clef("percussion"), viola_string_staff)
abjad.override(viola_string_staff).bar_line.transparent = True
abjad.override(viola_string_staff).dots.staff_position = -8
abjad.override(viola_string_staff).flag.Y_offset = -8.5
abjad.override(viola_string_staff).glissando.bound_details__left__padding = 1.5
abjad.override(viola_string_staff).glissando.bound_details__right__padding = 1.5
abjad.override(viola_string_staff).glissando.thickness = 2
abjad.override(viola_string_staff).script.staff_padding = 3
abjad.override(viola_string_staff).staff_symbol.transparent = True
abjad.override(viola_string_staff).stem.direction = abjad.Down
abjad.override(viola_string_staff).stem.length = 8
abjad.override(viola_string_staff).stem.stem_begin_position = -9
abjad.override(viola_string_staff).time_signature.stencil = False
abjad.attach(abjad.BowContactSpanner(), viola_string_staff_leaves)

viola_bow_staff_leaves = abjad.select(viola_bow_staff).by_leaf()
abjad.attach(abjad.BowContactPoint((0, 4)), viola_bow_staff_leaves[0])
abjad.attach(abjad.BowMotionTechnique("jete"), viola_bow_staff_leaves[0])
abjad.attach(abjad.BowContactPoint((4, 4)), violin_bow_staff_leaves[1])
abjad.attach(abjad.Clef("percussion"), viola_bow_staff)
abjad.override(viola_bow_staff).bar_line.transparent = True
abjad.override(viola_bow_staff).dots.staff_position = -8
abjad.override(viola_bow_staff).flag.Y_offset = -8.5
abjad.override(viola_bow_staff).glissando.bound_details__left__padding = 1.5
abjad.override(viola_bow_staff).glissando.bound_details__right__padding = 1.5
abjad.override(viola_bow_staff).glissando.thickness = 2
abjad.override(viola_bow_staff).script.staff_padding = 3
abjad.override(viola_bow_staff).staff_symbol.transparent = True
abjad.override(viola_bow_staff).stem.direction = abjad.Down
abjad.override(viola_bow_staff).stem.length = 8
abjad.override(viola_bow_staff).stem.stem_begin_position = -9
abjad.override(viola_bow_staff).time_signature.stencil = False
abjad.attach(abjad.BowContactSpanner(), viola_bow_staff_leaves)

abjad.attach(abjad.Clef("alto"), viola_lh_staff)
abjad.attach(abjad.Viola(), viola_lh_staff[0])
abjad.attach(abjad.TimeSignature((2, 4)), viola_lh_staff[0])
###################### viola

cello_string_staff_leaves = abjad.select(cello_string_staff).by_leaf()
abjad.attach(abjad.BowContactPoint((0, 5)), cello_string_staff_leaves[0])
abjad.attach(abjad.BowContactPoint((4, 5)), cello_string_staff_leaves[1])
abjad.attach(abjad.BowContactPoint((3, 5)), cello_string_staff_leaves[2])
abjad.attach(abjad.Clef("percussion"), cello_string_staff)
abjad.override(cello_string_staff).bar_line.transparent = True
abjad.override(cello_string_staff).dots.staff_position = -8
abjad.override(cello_string_staff).flag.Y_offset = -8.5
abjad.override(cello_string_staff).glissando.bound_details__left__padding = 1.5
abjad.override(cello_string_staff).glissando.bound_details__right__padding = 1.5
abjad.override(cello_string_staff).glissando.thickness = 2
abjad.override(cello_string_staff).script.staff_padding = 3
abjad.override(cello_string_staff).staff_symbol.transparent = True
abjad.override(cello_string_staff).stem.direction = abjad.Down
abjad.override(cello_string_staff).stem.length = 8
abjad.override(cello_string_staff).stem.stem_begin_position = -9
abjad.override(cello_string_staff).time_signature.stencil = False
abjad.attach(abjad.BowContactSpanner(), cello_string_staff_leaves)

cello_bow_staff_leaves = abjad.select(cello_bow_staff).by_leaf()
abjad.attach(abjad.BowContactPoint((0, 4)), cello_bow_staff_leaves[0])
abjad.attach(abjad.BowMotionTechnique("jete"), cello_bow_staff_leaves[0])
abjad.attach(abjad.BowContactPoint((4, 4)), cello_bow_staff_leaves[1])
abjad.attach(abjad.Clef("percussion"), cello_bow_staff)
abjad.override(cello_bow_staff).bar_line.transparent = True
abjad.override(cello_bow_staff).dots.staff_position = -8
abjad.override(cello_bow_staff).flag.Y_offset = -8.5
abjad.override(cello_bow_staff).glissando.bound_details__left__padding = 1.5
abjad.override(cello_bow_staff).glissando.bound_details__right__padding = 1.5
abjad.override(cello_bow_staff).glissando.thickness = 2
abjad.override(cello_bow_staff).script.staff_padding = 3
abjad.override(cello_bow_staff).staff_symbol.transparent = True
abjad.override(cello_bow_staff).stem.direction = abjad.Down
abjad.override(cello_bow_staff).stem.length = 8
abjad.override(cello_bow_staff).stem.stem_begin_position = -9
abjad.override(cello_bow_staff).time_signature.stencil = False
abjad.attach(abjad.BowContactSpanner(), cello_bow_staff_leaves)

abjad.attach(abjad.Clef("bass"), cello_lh_staff)
abjad.attach(abjad.Cello(), cello_lh_staff[0])
abjad.attach(abjad.TimeSignature((2, 4)), cello_lh_staff[0])
###################### cello

violin = abjad.StaffGroup([violin_string_staff, violin_bow_staff, violin_lh_staff])
viola = abjad.StaffGroup([viola_string_staff, viola_bow_staff, viola_lh_staff])
cello = abjad.StaffGroup([cello_string_staff, cello_bow_staff, cello_lh_staff])
trio = abjad.StaffGroup([violin, viola, cello])
abjad.show(trio)
