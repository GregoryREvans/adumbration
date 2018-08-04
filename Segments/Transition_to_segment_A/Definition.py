import abjad
from abjad import *
import consort
from consort import *
##################### imports
violin_string_staff = Staff()
violin_bow_staff = Staff()
violin_lh_staff = Staff()

viola_string_staff = Staff()
viola_bow_staff = Staff()
viola_lh_staff = Staff()

cello_string_staff = Staff()
cello_bow_staff = Staff()
cello_lh_staff = Staff()
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
attach(indicatortools.BowContactPoint((0, 5)), violin_string_staff_leaves[0])
attach(indicatortools.BowContactPoint((5, 5)), violin_string_staff_leaves[1])
attach(indicatortools.BowContactPoint((2, 5)), violin_string_staff_leaves[2])
attach(Clef('percussion'), violin_string_staff)
override(violin_string_staff).bar_line.transparent = True
override(violin_string_staff).dots.staff_position = -8
override(violin_string_staff).flag.Y_offset = -8.5
override(violin_string_staff).glissando.bound_details__left__padding = 1.5
override(violin_string_staff).glissando.bound_details__right__padding = 1.5
override(violin_string_staff).glissando.thickness = 2
override(violin_string_staff).script.staff_padding = 3
override(violin_string_staff).staff_symbol.transparent = True
override(violin_string_staff).stem.direction = Down
override(violin_string_staff).stem.length = 8
override(violin_string_staff).stem.stem_begin_position = -9
override(violin_string_staff).time_signature.stencil = False
attach(spannertools.BowContactSpanner(), violin_string_staff_leaves)

violin_bow_staff_leaves = abjad.select(violin_bow_staff).by_leaf()
attach(indicatortools.BowContactPoint((0, 4)), violin_bow_staff_leaves[0])
attach(indicatortools.BowMotionTechnique('jete'), violin_bow_staff_leaves[0])
attach(indicatortools.BowContactPoint((4, 4)), violin_bow_staff_leaves[1])
attach(Clef('percussion'), violin_bow_staff)
override(violin_bow_staff).bar_line.transparent = True
override(violin_bow_staff).dots.staff_position = -8
override(violin_bow_staff).flag.Y_offset = -8.5
override(violin_bow_staff).glissando.bound_details__left__padding = 1.5
override(violin_bow_staff).glissando.bound_details__right__padding = 1.5
override(violin_bow_staff).glissando.thickness = 2
override(violin_bow_staff).script.staff_padding = 3
override(violin_bow_staff).staff_symbol.transparent = True
override(violin_bow_staff).stem.direction = Down
override(violin_bow_staff).stem.length = 8
override(violin_bow_staff).stem.stem_begin_position = -9
override(violin_bow_staff).time_signature.stencil = False
attach(spannertools.BowContactSpanner(), violin_bow_staff_leaves)

attach(Clef('treble'), violin_lh_staff)
attach(instrumenttools.Violin(), violin_lh_staff[0])
attach(TimeSignature((2, 4)), violin_lh_staff[0])
###################### violin

viola_string_staff_leaves = abjad.select(viola_string_staff).by_leaf()
attach(indicatortools.BowContactPoint((0, 5)), viola_string_staff_leaves[0])
attach(indicatortools.BowContactPoint((4, 5)), viola_string_staff_leaves[1])
attach(indicatortools.BowContactPoint((3, 5)), viola_string_staff_leaves[2])
attach(Clef('percussion'), viola_string_staff)
override(viola_string_staff).bar_line.transparent = True
override(viola_string_staff).dots.staff_position = -8
override(viola_string_staff).flag.Y_offset = -8.5
override(viola_string_staff).glissando.bound_details__left__padding = 1.5
override(viola_string_staff).glissando.bound_details__right__padding = 1.5
override(viola_string_staff).glissando.thickness = 2
override(viola_string_staff).script.staff_padding = 3
override(viola_string_staff).staff_symbol.transparent = True
override(viola_string_staff).stem.direction = Down
override(viola_string_staff).stem.length = 8
override(viola_string_staff).stem.stem_begin_position = -9
override(viola_string_staff).time_signature.stencil = False
attach(spannertools.BowContactSpanner(), viola_string_staff_leaves)

viola_bow_staff_leaves = abjad.select(viola_bow_staff).by_leaf()
attach(indicatortools.BowContactPoint((0, 4)), viola_bow_staff_leaves[0])
attach(indicatortools.BowMotionTechnique('jete'), viola_bow_staff_leaves[0])
attach(indicatortools.BowContactPoint((4, 4)), violin_bow_staff_leaves[1])
attach(Clef('percussion'), viola_bow_staff)
override(viola_bow_staff).bar_line.transparent = True
override(viola_bow_staff).dots.staff_position = -8
override(viola_bow_staff).flag.Y_offset = -8.5
override(viola_bow_staff).glissando.bound_details__left__padding = 1.5
override(viola_bow_staff).glissando.bound_details__right__padding = 1.5
override(viola_bow_staff).glissando.thickness = 2
override(viola_bow_staff).script.staff_padding = 3
override(viola_bow_staff).staff_symbol.transparent = True
override(viola_bow_staff).stem.direction = Down
override(viola_bow_staff).stem.length = 8
override(viola_bow_staff).stem.stem_begin_position = -9
override(viola_bow_staff).time_signature.stencil = False
attach(spannertools.BowContactSpanner(), viola_bow_staff_leaves)

attach(Clef('alto'), viola_lh_staff)
attach(instrumenttools.Viola(), viola_lh_staff[0])
attach(TimeSignature((2, 4)), viola_lh_staff[0])
###################### viola

cello_string_staff_leaves = abjad.select(cello_string_staff).by_leaf()
attach(indicatortools.BowContactPoint((0, 5)), cello_string_staff_leaves[0])
attach(indicatortools.BowContactPoint((4, 5)), cello_string_staff_leaves[1])
attach(indicatortools.BowContactPoint((3, 5)), cello_string_staff_leaves[2])
attach(Clef('percussion'), cello_string_staff)
override(cello_string_staff).bar_line.transparent = True
override(cello_string_staff).dots.staff_position = -8
override(cello_string_staff).flag.Y_offset = -8.5
override(cello_string_staff).glissando.bound_details__left__padding = 1.5
override(cello_string_staff).glissando.bound_details__right__padding = 1.5
override(cello_string_staff).glissando.thickness = 2
override(cello_string_staff).script.staff_padding = 3
override(cello_string_staff).staff_symbol.transparent = True
override(cello_string_staff).stem.direction = Down
override(cello_string_staff).stem.length = 8
override(cello_string_staff).stem.stem_begin_position = -9
override(cello_string_staff).time_signature.stencil = False
attach(spannertools.BowContactSpanner(), cello_string_staff_leaves)

cello_bow_staff_leaves = abjad.select(cello_bow_staff).by_leaf()
attach(indicatortools.BowContactPoint((0, 4)), cello_bow_staff_leaves[0])
attach(indicatortools.BowMotionTechnique('jete'), cello_bow_staff_leaves[0])
attach(indicatortools.BowContactPoint((4, 4)), cello_bow_staff_leaves[1])
attach(Clef('percussion'), cello_bow_staff)
override(cello_bow_staff).bar_line.transparent = True
override(cello_bow_staff).dots.staff_position = -8
override(cello_bow_staff).flag.Y_offset = -8.5
override(cello_bow_staff).glissando.bound_details__left__padding = 1.5
override(cello_bow_staff).glissando.bound_details__right__padding = 1.5
override(cello_bow_staff).glissando.thickness = 2
override(cello_bow_staff).script.staff_padding = 3
override(cello_bow_staff).staff_symbol.transparent = True
override(cello_bow_staff).stem.direction = Down
override(cello_bow_staff).stem.length = 8
override(cello_bow_staff).stem.stem_begin_position = -9
override(cello_bow_staff).time_signature.stencil = False
attach(spannertools.BowContactSpanner(), cello_bow_staff_leaves)

attach(Clef('bass'), cello_lh_staff)
attach(instrumenttools.Cello(), cello_lh_staff[0])
attach(TimeSignature((2, 4)), cello_lh_staff[0])
###################### cello

violin=StaffGroup([violin_string_staff, violin_bow_staff, violin_lh_staff])
viola=StaffGroup([viola_string_staff, viola_bow_staff, viola_lh_staff])
cello=StaffGroup([cello_string_staff, cello_bow_staff, cello_lh_staff])
trio=StaffGroup([violin, viola, cello])
show(trio)
