from talon import app, actions

def talon_launched():
  actions.mimic('talon wake')

app.register("ready", talon_launched)
