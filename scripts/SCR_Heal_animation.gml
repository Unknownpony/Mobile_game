///SCR_Heal_animation(active obj)

active = argument0

active.sprite_index = asset_get_index("SPR_" + object_get_name(active.object_index) + "_attack")
animation = instance_create(target_unit.x, target_unit.y, Test_animation)

switch (object_get_name(active.object_index))
{
    case "Acolyte":  
    case "Oracle":
    case "Cleric": 
    case "Druid": 
    case "Priest": 
    case "Archdruid": 
    case "Bless_one":
        {
            audio_play_sound(SO_Heal,10,false)
            animation.sprite_index = SPR_Heal
        }break;
}
Battle_progress.animation = 1  


