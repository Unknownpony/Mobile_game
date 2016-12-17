///SCR_Heal_animation(active obj)

active = argument0

active.sprite_index = asset_get_index("SPR_" + object_get_name(active.object_index) + "_attack")
animation = instance_create(target.x, target.y, Test_animation)

switch (object_get_name(active.object_index))
{
    case "Acolyte":
        {
            audio_play_sound(SO_Heal,10,false)
            animation.sprite_index = SPR_Heal
        }break;
}
Battle_progress.animation = 1  


