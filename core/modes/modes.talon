not mode: sleep
-
^dictation mode$:
    mode.disable("sleep")
    mode.disable("command")
    mode.enable("dictation")
    user.code_clear_language_mode()
    mode.disable("user.gdb")

^command mode$:
    user.command_mode()
    # mode.disable("sleep")
    # mode.disable("dictation")
    # mode.disable("user.single_application")
    # mode.enable("command")

^single application mode$:
    mode.disable("sleep")
    mode.disable("command")
    mode.enable("user.single_application")

# ^mixed mode$:
#     mode.disable("sleep")
#     mode.enable("dictation")
#     mode.enable("command")

# Switch to dictation mode and insert a phrase
dictate [<phrase>]$:        user.dictation_mode(phrase or "")

# Switch to german dictation
inkling [<phrase>]$:        user.german_mode(phrase or "")

# Switch to mixed mode and insert a phrase
# mixed mode [<phrase>]$:     user.mixed_mode(phrase or "")
