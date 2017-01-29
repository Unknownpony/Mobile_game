///SCR_Death_animation(obj)

test = argument0

test.sprite_index = asset_get_index("SPR_" + object_get_name(test.object_index) + "_dead")

switch (object_get_name(test.object_index))
{
    //Warriors
    case "Squire": 
    case "Knight": 
    case "Young_hero":
    case "Hero":
    case "Paladin":
    case "Holy_avenger":
    case "Gladiator":
    case "Wall":
    //Fighters
    case "Fighter":
    case "Rouge":
    case "Kung_Fu_Fighter":
    case "Assassin":
    case "Shaolin_monk":
    case "Shadow_ninja":  
    case "Ogre": 
    //Mages
    case "Mage":
    case "Wizard":
    case "Necromancer":
    case "Great_white_wizard":
    case "Pandemoniues":
    //Rangers
    case "Scout":
    case "Thief": 
    case "Archer":
    case "Bandit":
    case "Outlaw":
    case "Destroyer":
    {
        audio_play_sound(SO_Male_death,10,false)
    }break;
    //Warriors
    case "Warrior":
    case "Elementalist_warrior":
    case "Nymph":
    case "Dragon_slayer":
    case "Sylph":
    //Fighters
    case "Shaolin_nun":
    case "Rebel":
    case "Enlightened_one":
    //mages
    case "Apprentice": 
    case "Enchantress":
    case "Sorceress":
    case "Ancient_one":
    //healers
    case "Acolyte":  
    case "Oracle":
    case "Cleric": 
    case "Druid": 
    case "Priest": 
    case "Archdruid": 
    case "Bless_one":
    //Rangers 
    case "Guner":
    case "Hunter":
    case "Marksman":
    case "Duelist":
    case "Sniper":
    case "Sharpshooter":  
    {
        audio_play_sound(SO_Female_death,10,false)
    }break;  
    //Green skin
    //Goblins  
    case "Gremlin":
    {
        audio_play_sound(SO_Gremlin_death,10,false)
    }break;
    case "Orc": 
    case "Orc_shaman": 
    case "Lich":
    case "Blue_dragon":
    {
        audio_play_sound(SO_Orcs_death,10,false)
    }break;    
}
