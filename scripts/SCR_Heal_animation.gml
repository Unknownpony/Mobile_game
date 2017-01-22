///SCR_Heal_animation(active obj)

active = argument0
target  = argument1

active.sprite_index = asset_get_index("SPR_" + object_get_name(active.object_index) + "_attack")

if(is_array(target) == 1)
{
    for(ha_i=0; ha_i<array_length_1d(target); ha_i+=1)
        animation[ha_i] = instance_create(target[ha_i].x, target[ha_i].y, Test_animation) 
}  
else
    animation = instance_create(target.x, target.y, Test_animation)

switch (object_get_name(active.object_index))
{
    case "Acolyte":  
    case "Oracle":
    case "Druid": 
    case "Archdruid": 
    {
        audio_play_sound(SO_Heal,10,false)
        animation.sprite_index = SPR_Heal
    }break;
    case "Cleric":
    case "Priest": 
    case "Bless_one":
    {
        audio_play_sound(SO_Heal,10,false)
        for(ha_i=0; ha_i<array_length_1d(target); ha_i+=1)
            animation[ha_i].sprite_index = SPR_Heal
    }break;
}
Battle_progress.animation = 1  


