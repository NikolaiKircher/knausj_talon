from talon import app, actions

def talon_launched():
  actions.mimic('talon sleep')

app.register("ready", talon_launched)
