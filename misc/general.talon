nope: key(ctrl-z)

sup: user.mouse_scroll_up()
clown: user.mouse_scroll_down()

# switch
swat: key(alt-tab)

park:
  mouse_move(1863, 187)
  user.mouse_sleep()

meeting join:
  mouse_click(0)
  user.mouse_sleep()
  speech.disable()

# for dropdowns
pick <number_small>: key("down:{number_small-1} enter")
pick up <number_small>: key("up:{number_small} enter")
