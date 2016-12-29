///SCR_Battle_animation(active obj, target obj)

active = argument0
target = argument1
animation = 0
active.sprite_index = asset_get_index("SPR_" + object_get_name(active.object_index) + "_attack")
if(is_array(target) == 1)
    for(ba_i=0; ba_i<array_length_1d(target); ba_i+=1)
    {
        target[ba_i].sprite_index = asset_get_index("SPR_" + object_get_name(target[ba_i].object_index) + "_get_dmg")
        animation[ba_i] = instance_create(target[ba_i].x, target[ba_i].y, Test_animation)
    }
else
{
    target.sprite_index = asset_get_index("SPR_" + object_get_name(target.object_index) + "_get_dmg")
    animation = instance_create(target.x, target.y, Test_animation)
}

//sound
switch (object_get_name(active.object_index))
{
    //Sword
    case "Squire": 
    case "Knight":
    case "Warrior":
    case "Young_hero":
    case "Elementalist_warrior":
    case "Hero":
    case "Paladin":
    case "Nymph":
    case "Dragon_slayer":
    case "Sylph":
    case "Holy_avenger":
    case "Fighter":
    case "Shadow_ninja":
    case "Rebel":
    {
        audio_play_sound(SO_Slash,10,false)
        animation.sprite_index = SPR_Slash        
    }break;
    //Shoot
    case "Scout":
    case "Guner":
    case "Hunter":
    case "Marksman":
    case "Duelist":
    case "Sniper":
    case "Sharpshooter":  
    case "Archer":
    case "Bandit":
    case "Outlaw":
    case "Destroyer":
    {
        audio_play_sound(SO_Fire_gun,10,false)
        animation.sprite_index = SPR_Shot
    }break;
    //Fire magic
    case "Apprentice": 
    case "Mage":
    case "Wizard":
    case "Necromancer":
    case "Great_white_wizard":
    case "Pandemoniues":
    case "Enchantress":
    case "Sorceress":
    case "Ancient_one":
    case "Orc_shaman": 
    case "Lich":
    {
        for(ba_i=0; ba_i<array_length_1d(target); ba_i+=1)
        {
            audio_play_sound(SO_Fire,10,false)
            animation[ba_i].sprite_index = SPR_Fire
        }
    }break;  
    //Mace  
    case "Gladiator":
    case "Wall":
    case "Thief": 
    case "Orc": 
    case "Blue_dragon":
    {
        audio_play_sound(SO_Mace,10,false)
        animation.sprite_index = SPR_Smash
    }break;    
    //Spear
    case "Rouge":
    case "Assassin":
    {
        audio_play_sound(SO_Mace,10,false)
        animation.sprite_index = SPR_Smash
    }break; 
    //Matrial art
    case "Kung_Fu_Fighter":
    case "Shaolin_monk":
    case "Ogre": 
    case "Enlightened_one":
    case "Shaolin_nun":
    {
        audio_play_sound(SO_Mace,10,false)
        animation.sprite_index = SPR_Smash
    }break; 
}

Battle_progress.animation = 1   
       

