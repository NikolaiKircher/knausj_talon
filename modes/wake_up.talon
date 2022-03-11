#defines the commands that sleep/wake Talon
mode: all
-
^welcome back$:
    # user.mouse_wake()
    # user.history_enable()
    user.mouse_toggle_control_mouse()
    user.talon_mode()
^sleep all [<phrase>]$:
    user.switcher_hide_running()
    user.history_disable()
    user.homophones_hide()
    user.help_hide()
    user.mouse_sleep()
    speech.disable()
    user.engine_sleep()
^talon sleep [<phrase>]$: speech.disable()
^talon wake$: speech.enable()

^snore$:
    user.mouse_sleep()
    speech.disable()

key(ctrl-f8):
    speech.toggle()
