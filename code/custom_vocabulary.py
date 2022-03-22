from talon import Context, Module

mod = Module()
mod.list("custom_vocabulary", desc="My custom list of words which are diffult to pronounce")

ctx = Context()
ctx.lists["user.custom_vocabulary"] = [
    'raise',
    'rescue',
    'rubocup',
    'ruby',
    'sharepoint',
    'vscode',
    'where',
]
