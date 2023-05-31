from talon import Module, actions, ctrl
import time

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

    def wake_or_repeat_phrase():
        """Wakeup or repeat phrase"""
        if actions.speech.enabled():
            actions.core.repeat_phrase()
        else:
            actions.user.talon_wake()

    def talon_wake():
        """Wake talon and discard previously recognized speech"""
        # this is only working with delay. maybe maybe try out abort_current_phrase
        # active_microphone = actions.sound.active_microphone()
        # actions.sound.set_microphone("None")
        # actions.sound.set_microphone(active_microphone)
        # actions.user.abort_current_phrase()
        actions.speech.enable()
        actions.user.notify("talon wake")

    def talon_sleep():
        """Put talon to sleep"""
        if actions.speech.enabled():
            actions.user.notify("talon sleep")
        actions.speech.disable()

    def toggle_sleep():
        """Toggle between wake and sleep"""
        if actions.speech.enabled():
            actions.user.talon_sleep()
        else:
            actions.user.talon_wake()
