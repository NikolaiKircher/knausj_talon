title: /Empires/
and mode: user.single_application
and not mode: sleep
-
<user.number_string>: "{number_string}"

peace:
  key(shift:down)
  mouse_click(1)
  key(shift:up)


scrape: key(escape)

control mouse: user.mouse_toggle_control_mouse()
party <number_small>: key("ctrl-{number_small}")

<user.number_small>: "{number_small}"
<user.symbol_key>: key(symbol_key)
<user.letter>: key(letter)
<user.function_key>: key(function_key)
<user.special_key>: key(special_key)
<user.modifiers> <user.unmodified_key>: key("{modifiers}-{unmodified_key}")

duke:
	mouse_click()
	mouse_click()

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
make house: key(q q)
make mill: key(q w)
make mining: key(q e)
make lumber: key(q r)
make farm: key(q a)
make smith: key(q s)
make market: key(q d)
make monastery: key(q f)
make university: key(q g)

make barack: key(w q)
make range: key(w w)
make stable: key(w e)
make siege: key(w r)
make castle: key(w c)

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
