nope: key(ctrl-z)

sup: user.mouse_scroll_up()
clown: user.mouse_scroll_down()

next year: "31.12.2025"

# switch
swat: key(alt-tab)

park:
  mouse_move(1863, 187)
  user.mouse_sleep()

sleep [<number_small>] [seconds]: user.macro_insert_wait(number_small or 0)

meeting join:
  mouse_click(0)
  user.mouse_sleep()
  speech.disable()

call join | call accept:
  mouse_move(1734, 909)
  mouse_click(0)
  user.mouse_sleep()
  speech.disable()

indicator toggle:
  user.indicator_toggle()

key(ctrl-alt-f7):
  user.indicator_toggle()

# for dropdowns
pick <number_small>: key("down:{number_small-1} enter")
pick up <number_small>: key("up:{number_small} enter")

# parrot(dental_click):
#     user.mouse_drag(0)

parrot(palatal_click):
    user.wake_or_repeat_phrase()

key(ctrl-f8):
  speech.toggle()

key(ctrl-f9):
  user.mouse_toggle_control_mouse()

output device:
  key(super-ctrl-v)

<user.formatters> form <user.cursorless_target>:
  user.cursorless_reformat(cursorless_target, formatters)

biggy <user.cursorless_target>:
  user.cursorless_reformat(cursorless_target, 'title')

debugger time:
  "<% debugger %>"
