from talon import Module, Context

mod = Module()
ctx = Context()

mod.tag("pop_repeat_on", desc="Tag indicates whether the pop sound repeats last command")

@mod.action_class
class Actions:
    def pop_repeat_activate():
        """Toggles pop_repeat"""
        ctx.tags = ["user.pop_repeat_on"]

    def pop_repeat_deactivate():
        """Toggles pop_repeat"""
        ctx.tags = []
