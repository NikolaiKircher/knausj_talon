
# toggle pop: user.pop_repeat_toggle()

pop repeat: user.pop_repeat_activate()
pop click: user.pop_repeat_deactivate()

popper:
    core.repeat_command(1)
    user.pop_repeat_activate()

clicky:
    mouse_click(0)
    user.pop_repeat_deactivate()

# toggle hiss: user.hiss_activate()
# hissen | hiss enable: user.hiss_activate()
# hissable | hiss able: user.hiss_deactivate()
