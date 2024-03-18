#defines the commands that sleep/wake Talon
mode: all
-
^(talon wake)+$:
    user.talon_wake()

^(welcome back)+$:
    user.mouse_wake()
    user.talon_wake()

^sleep all [<phrase>]$:
    user.switcher_hide_running()
    user.history_disable()
    user.homophones_hide()
    user.help_hide()
    user.mouse_sleep()
    user.talon_sleep()
    user.engine_sleep()

talon sleep [<phrase>]$:
    user.talon_sleep()

snore [<phrase>]$:
    user.mouse_sleep()
    user.talon_sleep()

key(ctrl-f8):
    user.toggle_sleep()

key(ctrl-f9):
    user.mouse_toggle_control_mouse()
