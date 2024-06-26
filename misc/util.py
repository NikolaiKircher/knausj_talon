from talon import Module

mod = Module()

@mod.action_class
class Actions:
    def cycle(value: int, min: int, max: int) -> int:
        """Cycle value between minimum and maximum"""
        if value < min:
            return max
        if value > max:
            return min
        return value
