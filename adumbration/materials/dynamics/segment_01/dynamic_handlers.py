import evans

dynamic_handler_one = evans.DynamicHandler(
    dynamic_list=["f", "p", "niente", "mf"],  # niente + leak is weird
    flare_boolean_vector=[1, 0, 0, 1],
    flare_forget=False,
    hold_first_boolean_vector=[1, 0, 0],
    hold_first_forget=False,
    hold_last_boolean_vector=[0, 1],
    hold_last_forget=False,
    effort_boolean_vector=[1, 0],
    effort_forget=False,
    forget=False,
)

dynamic_handler_two = evans.DynamicHandler(
    dynamic_list=["sfp", "ff", "ppppp", "mp", "mf", "f"],
    flare_boolean_vector=[0, 1, 1, 0],
    flare_forget=False,
    hold_first_boolean_vector=[0, 1, 0],
    hold_first_forget=True,
    hold_last_boolean_vector=[1, 0],
    hold_last_forget=False,
    effort_boolean_vector=[0, 0, 0, 1],
    effort_forget=True,
    forget=False,
)
