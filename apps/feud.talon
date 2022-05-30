title: Feud
mode: user.single_application
and not mode: sleep
-

{user.board_position_x} {user.board_position_y}: user.board_click(user.board_position_x, user.board_position_y)

confirm | exit:
  mouse_move(1282, 1003)
  mouse_click()

control mouse: user.mouse_toggle_control_mouse()

settings():
    key_hold = 150
