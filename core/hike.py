from talon import Context, actions, Module

mod = Module()
ctx = Context()

ctx.matches = r"""
os: windows
and app: /hike/i
"""

@ctx.action_class("edit")
class EditActions:
    # step
    def word_right():
        actions.user.move_direction()
