clippy:                     user.clipboard_manager_toggle()

clippy <number_small> [and <number_small>]*:
    user.clipboard_manager_paste(number_small_list)
clippy <user.ordinals_small> [and <user.ordinals_small>]*:
    user.clipboard_manager_paste(ordinals_small_list)

paste special <number_small> [and <number_small>]*:
    user.clipboard_manager_paste(number_small_list, 1)
paste special <user.ordinals_small> [and <user.ordinals_small>]*:
    user.clipboard_manager_paste(ordinals_small_list, 1)
