import abjad

class AttachmentHandler:

    def __init__(
        self,
        starting_dynamic=None,
        ending_dynamic=None,
        hairpin_indicator=None,
        articulation=None,
        ):
        def cyc(lst):
            count = 0
            while True:
                yield lst[count%len(lst)]
                count += 1
        self.starting_dynamic = starting_dynamic
        self.ending_dynamic = ending_dynamic
        self.hairpin_indicator = hairpin_indicator
        self.articulation = articulation
        self._cyc_dynamics = cyc([starting_dynamic, ending_dynamic])

    def __call__(self, selections):
        return self.add_attachments(selections)

    def add_attachments(self, selections):
        runs = abjad.select(selections).runs()
        ties = abjad.select(selections).logical_ties(pitched=True)
        for run in runs:
            if len(run) > 1:
                leaves = abjad.select(run).leaves()
                abjad.attach(abjad.Dynamic(self.starting_dynamic), leaves[0])
                abjad.attach(abjad.HairpinIndicator(self.hairpin_indicator), leaves[0])
                abjad.attach(abjad.Dynamic(self.ending_dynamic), leaves[-1])
                abjad.attach(abjad.HairpinIndicator('--'), leaves[-1])
            else:
                leaves = abjad.select(run).leaves()
                dynamic = next(self._cyc_dynamics)
                abjad.attach(abjad.Dynamic(dynamic), leaves[0])
                abjad.attach(abjad.HairpinIndicator('--'), leaves[0])
        for tie in ties:
            if len(tie) == 1:
                abjad.attach(abjad.Articulation(self.articulation), tie[0])
        return selections
