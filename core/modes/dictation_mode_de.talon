mode: dictation
language: de_DE
-

(kommando | over)$:
  user.command_mode()

<phrase>:
  user.insert_formatted(phrase, "NOOP")

eingabe: "\n"

zeilenumbruch:
  edit.line_insert_down()

neuer (paragraf | graf):
  edit.line_insert_down()
  edit.line_insert_down()
  user.dictation_format_reset()

leer: " "

komma: ", "

doppelpunkt: ": "

punkt: "."

anführungszeichen: '"'

kommentar: "# "

löschen: key("backspace")

weg: key("ctrl-shift-left backspace")

rückgängig: key("ctrl-z")
