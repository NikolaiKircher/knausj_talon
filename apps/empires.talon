title: /Empires/
# and mode: user.single_application
# and not mode: sleep
-
<user.number_string>: "{number_string}"

build house: key(q q)
build mill: key(q w)
build mining: key(q e)
build lumber: key(q r)
build farm: key(q a)
build smith: key(q s)
build market: key(q d)
build chapel: key(q f)
build university: key(q g)

build barack: key(w q)
build range: key(w w)
build stable: key(w e)
build siege: key(w r)

take smith: key(ctrl-shift-s)
take university: key(ctrl-shift-u)

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

eh: skip()

parrot(ee):
    print('parrot_ee')
    user.mouse_drag(0)

parrot(palate_click):
    print('palate_click')
    mouse_click(1)

settings():
    #key_hold = 150

    # minimum silence time (in seconds) before speech is cut off, default 0.3
    speech.timeout = 0.1
