os: windows
and app.name: Microsoft Outlook
-
# archive: key(alt h o 1)
# new e-mail: key(ctrl-n)
calendar: key(ctrl-2)
inbox: key(ctrl-1)
Reply: key(ctrl-r)
Reply all: key(ctrl-shift-r)
Forward: key(ctrl-f)
# accept: key(shift-f10 c c enter)
meeting accept: key(shift-f10 s s enter)

remind later: key(alt-n)

message done: key(ctrl-shift-1)
message unread: key(ctrl-u)
message read: key(ctrl-q)

new messages:
  mouse_move(59, 237)
  mouse_click()

first message:
  mouse_move(490, 267)
  mouse_click()

copy login:
  mouse_move(932, 327)
  mouse_click()
  mouse_click()
  sleep(100ms)
  edit.copy()
  sleep(100ms)
  key(delete)
  sleep(100ms)
  key(super-4)
  sleep(300ms)
  key(tab)
  sleep(100ms)
  edit.paste()
  sleep(100ms)
  key(backspace)
  # key(enter)

copy login old:
  #mimic("first message")
  mouse_move(893, 367)
  mouse_click()
  mouse_click()
  sleep(100ms)
  edit.copy()
  sleep(100ms)
  key(delete)
  sleep(100ms)
  key(super-4)
  sleep(300ms)
  key(tab)
  sleep(100ms)
  edit.paste()


# documentation
# https://support.microsoft.com/en-us/office/keyboard-shortcuts-for-outlook-3cdeb221-7ae5-4c1d-8c1d-9e63216c1efd

# https://support.office.com/en-us/article/keyboard-shortcuts-for-outlook-3cdeb221-7ae5-4c1d-8c1d-9e63216c1efd#PickTab=Web
