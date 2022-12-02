title: /ELDEN/
# and mode: user.single_application
# and not mode: sleep

-
# tag(): user.pop_repeat_on

# up: key(up)
# down: key(down)
# left: key(left)
# right: key(right)
# nope: key(z)
# restart game: key(r)
# shock: key(enter)
# scrape: key(escape)

# control mouse: user.mouse_toggle_control_mouse()

# i -> w

# key(i): key(w)
# key(u): key(e)
# key(o): key(q)
# key(j): key(a)
# key(l): key(d)
# key(k): key(s)
# key(h): key(f)


key(1):
  key(e:down)
  key(up)
  key(e:up)

key(2):
  key(e:down)
  key(left)
  key(e:up)

key(3):
  key(e:down)
  key(down)
  key(e:up)

key(4):
  key(e:down)
  key(right)
  key(e:up)

settings():
    key_hold = 32
