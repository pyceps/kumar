if keyboard_check(ord("D")) {
    hor_movement += move_spd
} 

if keyboard_check(ord("A")) {
    hor_movement  -= move_spd
}

if hor_movement > 0 {
    sprite_index = spr_knight_running_right
    obj_direction = 1
    x += hor_movement
} else if hor_movement < 0 {
    sprite_index = spr_knight_running_left
    obj_direction = -1
    x += hor_movement
} else {
    if obj_direction == 1 {
        sprite_index = spr_knight_idle_right
    } else if obj_direction == -1 {
        sprite_index = spr_knight_idle_left
    }
}

if keyboard_check(ord("W")) {
    y -= move_spd
}
if keyboard_check(ord("S")) {
    y += move_spd
}

hor_movement = 0
