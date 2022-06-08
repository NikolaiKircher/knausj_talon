title: /Empires/
# and mode: user.single_application
# and not mode: sleep
-
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

offensive: key(a)
defensive: key(s)
stand ground: key(d)

parrot(palate_click):
    print('palate_click')
    mouse_click(1)

settings():
    #key_hold = 150

    # minimum silence time (in seconds) before speech is cut off, default 0.3
    speech.timeout = 0.1
