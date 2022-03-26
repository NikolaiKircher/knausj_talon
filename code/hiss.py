from talon import Module, Context

mod = Module()
ctx = Context()

mod.tag("hiss_on", desc="Tag indicates whether parrot hissing is activated")

@mod.action_class
class Actions:
    def hiss_activate():
        """Activates hiss_on"""
        ctx.tags = ["user.hiss_on"]

    def hiss_deactivate():
        """Deactivates hiss_on"""
        ctx.tags = []

    # def hiss_toggle():
    #     """Toggles hiss_on"""
    #     if "user.hiss_on" in ctx.tags:
    #         print('toggle - deactivating hiss')
    #         # hiss_deactivate()
    #     else:
    #         print('toggle - activating hiss
    #         # hiss_activate()
