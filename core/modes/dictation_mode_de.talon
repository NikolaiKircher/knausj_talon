mode: dictation
language: de_DE
-

# Switch to command mode and insert a phrase
(kommando | over) [<phrase>]$:
  user.command_mode(phrase or "")

#<user.raw_prose>: user.dictation_insert(raw_prose)
<user.raw_prose>: user.insert_formatted(raw_prose, "NOOP")

#wort <phrase>: user.insert_formatted(phrase, "NOOP")

satz <phrase>: user.insert_formatted(phrase, "CAPITALIZE_FIRST_WORD")
titel <phrase>: user.insert_formatted(phrase, "CAPITALIZE_FIRST_WORD")

# Escape, type things that would otherwise be commands
^normal <user.text>$: user.dictation_insert(user.text)

eingabe: "\n"

zeilenumbruch:
  edit.line_insert_down()

# use 'new graph' instead
# neuer (paragraf | graf):
#   edit.line_insert_down()
#   edit.line_insert_down()
#   user.dictation_format_reset()

leer: " "

komma: ", "

doppelpunkt: ": "

punkt: "."

anführungszeichen: '"'

kommentar: "# "

löschen: key("backspace")

weg: key("ctrl-shift-left backspace")

rückgängig: key("ctrl-z")
