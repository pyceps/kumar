move_spd = 1.5
wallTiles = layer_tilemap_get_id("Tiles_Walls")
enum PlayerDirection {
    Right,
    Left,
    Up,
    Down
}
dir = PlayerDirection.Right