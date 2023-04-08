from typing import Dict
from talon import Module, Context, actions, app
mod = Module()
ctx = Context()

mod.list("board_position_x", desc="All characters in horizontal board")
mod.list("board_position_y", desc="All vertical positions in board")

# a4 | b4 | c4 | d4
# a3 | b3 | c3 | d3
# a2 | b2 | c2 | d2
# a1 | b1 | c1 | d1

# "copy mouse position" on the tile a4, then "paste that"
# (684, 236)
starting_position_x = 684
starting_position_y = 236
# "copy mouse position" on the tile a3, then "paste that" and calculate the difference
grid_width = 180

ctx.lists["user.board_position_x"] = {
    "air": "1",
    "bat": "2",
    "cap": "3",
    "drum": "4",
}

ctx.lists["user.board_position_y"] = {
    "one": "1",
    "two": "2",
    "three": "3",
    "four": "4",
}

@mod.action_class
class GameActions:
  def board_click(x: str, y: str):
    "Clicks on the given location on the game board"
    position_x = starting_position_x + (int(x) - 1) * grid_width
    position_y = starting_position_y + (4 - int(y)) * grid_width
    actions.mouse_move(position_x, position_y)
    actions.mouse_click()
    actions.sleep("200ms")
