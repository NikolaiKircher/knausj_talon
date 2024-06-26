# defines the default app actions for windows

from talon import Context, actions
from talon import ui
import time

ctx = Context()
ctx.matches = r"""
os: windows
"""

# copied from andreas arvidsson
def focus_window(window: ui.Window):
    """Focus window and wait until finished"""
    window.focus()
    t1 = time.monotonic()
    while ui.active_window() != window:
        if time.monotonic() - t1 > 1:
            raise RuntimeError(f"Can't focus window: {window.title}")
        actions.sleep("50ms")

def cycle_windows(app: ui.App, diff: int):
    active = ui.active_window()
    windows = list(
        filter(lambda w: w == active or (not w.hidden and w.title != "" and w.title != "Chrome Legacy Window"), app.windows())
    )
    current = windows.index(active)
    max = len(windows) - 1
    i = actions.user.cycle(current + diff, 0, max)
    while i != current:
        try:
            focus_window(windows[i])
            break
        except:
            i = actions.user.cycle(i + diff, 0, max)

@ctx.action_class('app')
class AppActions:
    # app.preferences()

    def tab_close():
        actions.key("ctrl-w")

    def tab_next():
        actions.key("ctrl-tab")

    def tab_open():
        actions.key("ctrl-t")

    def tab_previous():
        actions.key("ctrl-shift-tab")

    def tab_reopen():
        actions.key("ctrl-shift-t")

    def window_close():
        actions.key("alt-f4")

    def window_hide():
        actions.key("alt-space n")

    def window_hide_others():
        actions.key("win-d alt-tab")
        # requires easy window switcher or equivalent (built into most Linux)

    def window_next():
        cycle_windows(ui.active_app(), -1)
    def window_open():
        actions.key("ctrl-n")
        # requires easy window switcher or equivalent (built into most Linux)

    def window_previous():
        cycle_windows(ui.active_app(), 1)
