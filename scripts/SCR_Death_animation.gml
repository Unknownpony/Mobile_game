///SCR_Death_animation(obj)

test = argument0

test.sprite_index = asset_get_index("SPR_" + object_get_name(test.object_index) + "_dead")

switch (object_get_name(test.object_index))
{
    case "Squire": 
    case "Fighter":
    case "Scout":
    {
        audio_play_sound(SO_Male_death,10,false)
    }break;
    case "Apprentice": 
    case "Acolyte":    
    {
        audio_play_sound(SO_Female_death,10,false)
    }break;    
    case "Orc": 
    case "Orc_shaman": 
    {
        audio_play_sound(SO_Orcs_death,10,false)
    }break;    
}
