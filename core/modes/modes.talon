not mode: sleep
-
^dictation mode$:
    mode.disable("sleep")
    mode.disable("command")
    mode.enable("dictation")
    user.code_clear_language_mode()
    mode.disable("user.gdb")

^command mode$:
    mode.disable("sleep")
    mode.disable("dictation")
    mode.disable("user.single_application")
    mode.enable("command")

^single application mode$:
    mode.disable("sleep")
    mode.disable("command")
    mode.enable("user.single_application")

# ^mixed mode$:
#     mode.disable("sleep")
#     mode.enable("dictation")
#     mode.enable("command")
