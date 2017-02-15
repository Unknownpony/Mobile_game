///SCR_Battle_animation(active obj, target obj)

active = argument0
target = argument1
animation = 0

if(is_array(target) == 1)
    for(ba_i=0; ba_i<array_length_1d(target); ba_i+=1)
    {
        target[ba_i].sprite_index = asset_get_index("SPR_" + object_get_name(target[ba_i].object_index) + "_get_dmg")
        switch (object_get_name(target[ba_i].object_index))
        {
            case "Gremlin": 
                animation[ba_i] = instance_create(target[ba_i].x+108, target[ba_i].y+108, Test_animation); 
                animation[ba_i].image_xscale = 0.5
                animation[ba_i].image_yscale = 0.5
                break;
            case "Goblin":
            case "Goblin_chief":
            case "Goblin_champion":
            case "Kobold":
            case "Kobold_warrior": 
            case "Giant_bee":
                animation[ba_i] = instance_create(target[ba_i].x+54, target[ba_i].y+54, Test_animation);
                animation[ba_i].image_xscale = 0.75
                animation[ba_i].image_yscale = 0.75
                break;
            default: 
            animation[ba_i] = instance_create(target[ba_i].x, target[ba_i].y, Test_animation);
        }
    }
else
{
    target.sprite_index = asset_get_index("SPR_" + object_get_name(target.object_index) + "_get_dmg")
    switch (object_get_name(target.object_index))
        {
            case "Gremlin": 
                animation = instance_create(target.x+108, target.y+108, Test_animation); 
                animation.image_xscale = 0.5
                animation.image_yscale = 0.5
                break;
            case "Goblin":
            case "Goblin_chief":
            case "Goblin_champion":
            case "Kobold":
            case "Kobold_warrior": 
            case "Giant_bee":
                animation = instance_create(target.x+54, target.y+54, Test_animation);
                animation.image_xscale = 0.75
                animation.image_yscale = 0.75
                break;
            default: 
            animation = instance_create(target.x, target.y, Test_animation);
        }
}

//sound
switch (object_get_name(active.object_index))
{
    case "Squire": 
    {
        switch (active.type_of_attack)
        {
            case 0: 
                active.sprite_index = asset_get_index("SPR_" + object_get_name(active.object_index) + "_attack")
                active.attack_scale = 1
                audio_play_sound(SO_Slash,10,false)
                animation.sprite_index = SPR_Slash
            break;
            case 1: 
                active.sprite_index = asset_get_index("SPR_" + object_get_name(active.object_index) + "_special_attack")
                active.attack_scale = 0.4
                audio_play_sound(SO_Shield_bash,10,false)
                animation.sprite_index = SPR_Smash
            break;
        }        
    }break;
    case "Knight":
    case "Warrior":
    case "Adventurer":
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
        active.sprite_index = asset_get_index("SPR_" + object_get_name(active.object_index) + "_attack")
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
    case "Gremlin":
    case "Goblin":
    case "Giant_bee":
    {
        active.sprite_index = asset_get_index("SPR_" + object_get_name(active.object_index) + "_attack")
        audio_play_sound(SO_Mace,10,false)
        animation.sprite_index = SPR_Smash
    }break; 
}

Battle_progress.animation = 1   
       

