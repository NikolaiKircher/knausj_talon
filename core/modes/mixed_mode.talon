mode: command
mode: dictation
-
# hello mixed: "hello mixed! "

# mode: command
# and mode: dictation
# -
# hello both: "hello both! "

# if your current modes are {'command'} you can say hello command or hello mixed and they will chain hello command  hello mixed will work (bearbeitet)
# if your current modes are {'dictation'} you can say hello dictation or hello mixed and they will chain hello dictation  hello mixed will work (edited)
# if your current modes are {'dictation', 'command'} you can chain commands like:
# hello command
# hello command  hello mixed
# hello command  hello mixed  hello both
# hello dictation
# hello dictation  hello mixed  hello both
# but you cannot chain from command.talon to dictation.talon, because they have a disjoint set of modes
# hello command  hello dictation won't work
