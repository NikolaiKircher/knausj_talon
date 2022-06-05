from talon import Module, actions, ctrl
import time
from talon_plugins import eye_mouse, eye_zoom_mouse
from talon_plugins.eye_mouse import config, toggle_camera_overlay, toggle_control

mod = Module()
time_last_pop = 0

@mod.action_class
class Actions:
    def talon_wake_on_pop():
        """Use pop sound to wake from sleep"""
        global time_last_pop
        delta = time.time() - time_last_pop
        if delta >= 0.1 and delta <= 0.3:
            actions.user.talon_wake()
        time_last_pop = time.time()

    def talon_wake():
        """Wake talon and discard previously recognized speech"""
        # this is not working. maybe I need more RAM?
        # active_microphone = actions.sound.active_microphone()
        # actions.sound.set_microphone("None")
        # actions.sound.set_microphone(active_microphone)
        actions.speech.enable()
