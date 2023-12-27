app: chrome
-
tag(): browser
tag(): user.tabs

profile switch: user.chrome_mod("shift-m")

tab search: user.chrome_mod("shift-a")

tab search <user.text>$:
    user.chrome_mod("shift-a")
    sleep(200ms)
    insert("{text}")
    key(down)

hunt this: key("ctrl-f")

hunt flaky:
    key(shift:down)
    mouse_click(0)
    key(shift:up)
    edit.copy()
    key("ctrl-f")
    edit.paste()

set next version:
    key(.)
    sleep(0.2)
    insert("version")
    key(enter)
    sleep(0.2)
    insert("next_version")
    sleep(0.2)
    key(enter enter)
