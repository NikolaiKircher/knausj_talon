#defines the commands that sleep/wake Talon
mode: all
-
^talon wake$:
    speech.enable()

^welcome back$:
    user.mouse_wake()
    speech.enable()

# parrot(palate_click):
#     print('palate_click')
#     user.mouse_wake()
#     speech.enable()

^sleep all [<phrase>]$:
    user.switcher_hide_running()
    user.history_disable()
    user.homophones_hide()
    user.help_hide()
    user.mouse_sleep()
    speech.disable()
    user.engine_sleep()

talon sleep [<phrase>]$: speech.disable()

snore [<phrase>]$:
    user.mouse_sleep()
    speech.disable()

key(ctrl-f8):
    speech.toggle()

key(ctrl-f9):
    user.mouse_toggle_control_mouse()
