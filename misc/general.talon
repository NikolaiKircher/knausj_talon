nope: key(ctrl-z)

sup: user.mouse_scroll_up()
clown: user.mouse_scroll_down()

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
  mouse_move(1783, 983)
  mouse_click(0)
  user.mouse_sleep()
  speech.disable()

indicator toggle:
  user.indicator_toggle()

# for dropdowns
pick <number_small>: key("down:{number_small-1} enter")
pick up <number_small>: key("up:{number_small} enter")

# parrot(dental_click):
#     user.mouse_drag(0)

parrot(palatal_click):
    user.wake_or_repeat_phrase()
