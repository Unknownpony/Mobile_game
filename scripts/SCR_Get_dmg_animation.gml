///SCR_Get_dmg_animation(obj)

target = argument0

switch(object_get_name(target.object_index))
{
    case "Orc": 
    {
        target.sprite_index = SPR_Orc_get_dmg
    }break;
}
