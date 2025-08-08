var horMov = keyboard_check(ord("D")) - keyboard_check(ord("A"))
var verMov = keyboard_check(ord("S")) - keyboard_check(ord("W"))

if horMov != 0 or verMov != 0 {
    if horMov > 0 {
        sprite_index = spr_knight_running_right
        dir = PlayerDirection.Right
        
    } else if horMov < 0 {
        sprite_index = spr_knight_running_left
        dir = PlayerDirection.Left
    }
    if verMov > 0 {
        sprite_index = spr_knight_running_backward
        dir = PlayerDirection.Down
    } else if verMov < 0 {
        sprite_index = spr_knight_running_forward
        dir = PlayerDirection.Up
    }
} else {
    switch (dir) {
        case PlayerDirection.Right:
            sprite_index = spr_knight_idle_right
        break;
        case PlayerDirection.Left:
            sprite_index = spr_knight_idle_left
        break;
        case PlayerDirection.Up:
            sprite_index = spr_knight_idle_forward
        break;
        case PlayerDirection.Down:
            sprite_index = spr_knight_idle_backward
        break;
    }
}

move_and_collide(horMov, verMov, wallTiles)
