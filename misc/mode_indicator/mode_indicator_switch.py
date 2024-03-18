from talon import Module, Context
mod = Module()
ctx = Context()

@mod.action_class
class Actions:
  def indicator_toggle():
    """Toggles the mode indicator circle"""
    current_setting = ctx.settings.get("user.mode_indicator_show")
    ctx.settings["user.mode_indicator_show"] = current_setting != True
