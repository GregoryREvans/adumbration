import abjad

# from adumbration.materials.timespans.segment_01.make_timespans import (
#     rhythm_timespan_list,
# )

# offset_counter = abjad.OffsetCounter(rhythm_timespan_list)

# permitted_meters = abjad.MeterList(
#     [
#         (5, 4),
#         (9, 8),
#         (4, 4),
#         (7, 8),
#         (3, 4),
#         (5, 8),
#         (2, 4),
#         (3, 8),
#         (1, 4),
#         (5, 16),
#         (1, 8),
#     ]
# )

# fitted_meters = abjad.Meter.fit_meters(
#     argument=offset_counter,
#     meters=permitted_meters,
#     maximum_run_length=1,
# )

fitted_meter_pairs = (
    (4, 4),
    (3, 4),
    (5, 4),
    (3, 4),
    (4, 4),
    (3, 4),
    (5, 4),
    (3, 4),
    (4, 4),
    (2, 4),
)
fitted_meters = [abjad.Meter(_) for _ in fitted_meter_pairs]
time_signatures = [abjad.TimeSignature(_) for _ in fitted_meters]

time_signatures.append(abjad.TimeSignature((3, 16)))  # for ending skip

bounds = abjad.mathx.cumulative_sums([_.duration for _ in time_signatures])
