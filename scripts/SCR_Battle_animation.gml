///SCR_Battle_animation(active obj, target obj)

active = argument0
target = argument1

active.sprite_index = asset_get_index("SPR_" + object_get_name(active.object_index) + "_attack")
target.sprite_index = asset_get_index("SPR_" + object_get_name(target.object_index) + "_get_dmg")
animation = instance_create(target.x, target.y, Test_animation)

//sound
switch (object_get_name(active.object_index))
{
    case "Squire": 
    case "Fighter":
    {
        audio_play_sound(SO_Slash,10,false)
        animation.sprite_index = SPR_Slash        
    }break;
    case "Scout":
    {
        audio_play_sound(SO_Fire_gun,10,false)
        animation.sprite_index = SPR_Shot
    }break;
    case "Apprentice": 
    case "Orc_shaman": 
    {
        audio_play_sound(SO_Fire,10,false)
        animation.sprite_index = SPR_Fire
    }break;    
    case "Orc": 
    {
        audio_play_sound(SO_Mace,10,false)
        animation.sprite_index = SPR_Smash
    }break;    
}

Battle_progress.animation = 1   
       

