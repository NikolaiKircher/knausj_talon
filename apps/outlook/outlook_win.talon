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
  mouse_move(147, 272)
  mouse_click()

first message:
  mouse_move(367, 272)
  mouse_click()

copy login:
  key(enter)
  sleep(100ms)
  key(tab)
  key(ctrl-right ctrl-right ctrl-shift-right shift-left)
  edit.copy()
  sleep(100ms)
  key(alt-f4)
  sleep(200ms)
  key(delete)
  sleep(200ms)
  key(super-4)
  sleep(300ms)
  key(tab)
  sleep(100ms)
  edit.paste()
  sleep(100ms)
  key(enter)

# documentation
# https://support.microsoft.com/en-us/office/keyboard-shortcuts-for-outlook-3cdeb221-7ae5-4c1d-8c1d-9e63216c1efd

# https://support.office.com/en-us/article/keyboard-shortcuts-for-outlook-3cdeb221-7ae5-4c1d-8c1d-9e63216c1efd#PickTab=Web
