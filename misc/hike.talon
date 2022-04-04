app: /hike/
-
tag(): user.hiss_arrows_map_move

move: user.move_direction_continuous()
stop moving: user.move_direction_stop()

jump:
    key('z:down')
    sleep(1)
    key('z:up')

# implemented in python file
# step: user.move_direction()

tiny: user.move_direction(0.3)

slow: user.slow_down()
speed: user.speed_up()
