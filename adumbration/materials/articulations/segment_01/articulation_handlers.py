import evans

articulation_handler_one = evans.ArticulationHandler(
    articulation_list=[
        "tenuto",
        "accent",
        "default",
        "tenuto",
        "accent",
        "espressivo",
        "tenuto",
    ],
    forget=False,
)

articulation_handler_two = evans.ArticulationHandler(
    articulation_list=[
        "espressivo",
        "tenuto",
        "tenuto",
        "accent",
        "default",
        "tenuto",
        "accent",
    ],
    forget=False,
)

articulation_handler_three = evans.ArticulationHandler(
    articulation_list=[
        "accent",
        "tenuto",
        "tenuto",
        "espressivo",
        "accent",
        "tenuto",
        "tenuto",
    ],
    forget=False,
)

articulation_handler_four = evans.ArticulationHandler(
    articulation_list=["tenuto", "tenuto", "accent", "tenuto", "espressivo"],
    forget=False,
)

articulation_handler_five = evans.ArticulationHandler(
    articulation_list=["tenuto", "tenuto", "accent", "tenuto", "espressivo"],
    forget=False,
)

articulation_handler_six = evans.ArticulationHandler(
    articulation_list=["tenuto", "tenuto", "accent", "tenuto", "espressivo"],
    forget=False,
)
