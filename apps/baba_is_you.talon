title: Baba Is You
and mode: user.single_application
and not mode: sleep

-
tag(): user.pop_repeat_on

up: key(up)
down: key(down)
left: key(left)
right: key(right)
nope: key(z)
restart game: key(r)

clap: key(enter)
scrape: key(escape)

control mouse: user.mouse_toggle_control_mouse()

settings():
    key_hold = 150
