title: /Empires/
and mode: user.single_application
and not mode: sleep
-
<user.number_string>: "{number_string}"

peace:
  key(shift:down)
  mouse_click(1)
  key(shift:up)

# again:
#     mimic('shifter')
#     user.pop_repeat_activate()

many houses:
    key(q q)
    key(shift:down)

many farms:
    key(q a)
    key(shift:down)

over: key(shift:up)

# blank point stack;,c
# army: key(;)
build house: key(q q)
build mill: key(q w)
build mining: key(q e)
build lumber: key(q r)
build farm: key(q a)
build smith: key(q s)
build market: key(q d)
build monastery: key(q f)
build university: key(q g)

build barack: key(w q)
build range: key(w w)
build stable: key(w e)
build siege: key(w r)

take smith: key(ctrl-shift-s)
take university: key(ctrl-shift-u)
take market: key(ctrl-m)

take town: key(ctrl-shift-h)
take barack: key(ctrl-shift-b)
take range: key(ctrl-shift-a)
take stable: key(ctrl-shift-l)
take siege: key(ctrl-shift-k)
take castle: key(ctrl-shift-v)

go barack: key(ctrl-b)
go range: key(ctrl-a)
go stable: key(ctrl-l)
go siege: key(ctrl-k)
go castle: key(ctrl-v)

offensive: key(a)
defensive: key(s)
stand ground: key(d)

settings():
    #key_hold = 150

    # minimum silence time (in seconds) before speech is cut off, default 0.3
    speech.timeout = 0.1
