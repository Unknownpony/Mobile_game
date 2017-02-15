///SCR_Choice_target_system()

//Based on which active object is currently active it choses target system.
switch(object_get_name(Battle_progress.active_unit.object_index))
{
    //Warriors
    case "Squire": 
    {
        switch (Battle_progress.active_unit.type_of_attack)
        {
            case 0: 
            {
                SCR_Target_one_enemy_melee(Battle_progress.active_unit.position, Battle_progress.inst_id)
                Battle_progress.attack_range = 0
            }
            break;
            case 1: 
            {
                SCR_Target_one_enemy_melee(Battle_progress.active_unit.position, Battle_progress.inst_id)
                Battle_progress.active_unit.effect = 1
                Battle_progress.active_unit.physical_attack_scale = 0.3
                Battle_progress.attack_range = 0
            }
            break;
        }
    } break;
    case "Knight": 
    {
        switch (Battle_progress.active_unit.type_of_attack)
        {
            case 0: 
            {
                SCR_Target_one_enemy_melee(Battle_progress.active_unit.position, Battle_progress.inst_id)
                Battle_progress.attack_range = 0
            }
            break;
            case 1: 
            {
                SCR_Target_one_enemy_melee(Battle_progress.active_unit.position, Battle_progress.inst_id)
                Battle_progress.active_unit.effect = 1
                Battle_progress.active_unit.physical_attack_scale = 0.4
                Battle_progress.attack_range = 0
            }
            break;
        }
    } break;
    case "Paladin":
    {
        switch (Battle_progress.active_unit.type_of_attack)
        {
            case 0: 
            {
                SCR_Target_one_enemy_melee(Battle_progress.active_unit.position, Battle_progress.inst_id)
                Battle_progress.attack_range = 0
            }
            break;
            case 1: 
            {
                SCR_Target_one_enemy_melee(Battle_progress.active_unit.position, Battle_progress.inst_id)
                Battle_progress.active_unit.effect = 2
                Battle_progress.active_unit.physical_attack_scale = 0
                Battle_progress.active_unit.magical_attack_scale = 0
                Battle_progress.target_unit.taunted_by = Battle_progress.active_unit
                Battle_progress.attack_range = 0
            }
            break;
        }
    } break;    
    case "Gladiator":
     {
        switch (Battle_progress.active_unit.type_of_attack)
        {
            case 0: 
            {
                SCR_Target_one_enemy_melee(Battle_progress.active_unit.position, Battle_progress.inst_id)
                Battle_progress.attack_range = 0
            }
            break;
            case 1: 
            {
                SCR_Target_one_enemy_melee(Battle_progress.active_unit.position, Battle_progress.inst_id)
                Battle_progress.active_unit.effect = 1
                Battle_progress.active_unit.physical_attack_scale = 0.65
                Battle_progress.attack_range = 0
            }
            break;
        }
    } break;
    case "Wall":
    {
        switch (Battle_progress.active_unit.type_of_attack)
        {
            case 0: 
            {
                SCR_Target_one_enemy_melee(Battle_progress.active_unit.position, Battle_progress.inst_id)
                Battle_progress.attack_range = 0
            }
            break;
            case 1: 
            {
                SCR_Target_one_enemy_range(Battle_progress.inst_id)
                Battle_progress.active_unit.effect = 3
                Battle_progress.active_unit.physical_attack_scale = 0
                Battle_progress.active_unit.magical_attack_scale = 0
                Battle_progress.target_unit.taunted_by = Battle_progress.active_unit
                Battle_progress.attack_range = 0
            }
            break;
        }
    } break;
    case "Adventurer":
    {
        switch (Battle_progress.active_unit.type_of_attack)
        {
            case 0: 
            {
                SCR_Target_one_enemy_melee(Battle_progress.active_unit.position, Battle_progress.inst_id)
                Battle_progress.attack_range = 0
            }
            break;
            case 1: 
            {
                SCR_Target_one_enemy_melee(Battle_progress.active_unit.position, Battle_progress.inst_id)
                Battle_progress.active_unit.effect = 1
                Battle_progress.active_unit.physical_attack_scale = 0.75
                Battle_progress.attack_range = 0
            }
            break;
        }
    } break;
    case "Hero":
    {
        switch (Battle_progress.active_unit.type_of_attack)
        {
            case 0: 
            {
                SCR_Target_one_enemy_melee(Battle_progress.active_unit.position, Battle_progress.inst_id)
                Battle_progress.attack_range = 0
            }
            break;
            case 1: 
            {
                SCR_Target_one_enemy_melee(Battle_progress.active_unit.position, Battle_progress.inst_id)
                Battle_progress.active_unit.effect = 4
                Battle_progress.active_unit.physical_attack_scale = 0.55
                Battle_progress.attack_range = 0
            }
            break;
        }
    } break;
    case "Holy_avenger":
    {
        switch (Battle_progress.active_unit.type_of_attack)
        {
            case 0: 
            {
                SCR_Target_one_enemy_melee(Battle_progress.active_unit.position, Battle_progress.inst_id)
                Battle_progress.attack_range = 0
            }
            break;
            case 1: 
            {
                SCR_Target_one_enemy_range(Battle_progress.active_unit.position, Battle_progress.inst_id)
                Battle_progress.active_unit.effect = 4
                Battle_progress.active_unit.physical_attack_scale = 0.70
                Battle_progress.attack_range = 0
            }
            break;
        }
    } break;
    case "Warrior":
    case "Elementalist_warrior":
    case "Nymph":
    case "Dragon_slayer":
    case "Sylph":
    //Fighters
    case "Fighter":
    case "Rouge":
    case "Kung_Fu_Fighter":
    case "Assassin":
    case "Shaolin_monk":
    case "Shadow_ninja":  
    case "Ogre": 
    case "Shaolin_nun":
    case "Rebel":
    case "Enlightened_one":
    //Rangers
    case "Thief": 
    {
        switch (Battle_progress.active_unit.type_of_attack)
        {
            case 0: 
            {
                SCR_Target_one_enemy_melee(Battle_progress.active_unit.position, Battle_progress.inst_id)
                Battle_progress.attack_range = 0
            }
            break;
            case 1: 
            {
                SCR_Target_one_enemy_melee(Battle_progress.active_unit.position, Battle_progress.inst_id)
                Battle_progress.active_unit.effect = 1
                Battle_progress.attack_range = 0
            }
            break;
        }
    } break;
    //mages
    case "Apprentice": 
    case "Enchantress":
    case "Sorceress":
    case "Ancient_one":
    case "Mage":
    case "Wizard":
    case "Necromancer":
    case "Great_white_wizard":
    case "Pandemoniues": 
    {
        switch (Battle_progress.active_unit.type_of_attack)
        {
            case 0: 
            {
                SCR_Target_all_enemy(Battle_progress.inst_id)
                Battle_progress.attack_range = 1
            }
            break;
            case 1: 
            {
                SCR_Target_all_enemy(Battle_progress.inst_id)
                Battle_progress.active_unit.effect = 3
                Battle_progress.attack_range = 1
            }
            break;
        }
    } break;
    //healers
    case "Acolyte":  
    case "Oracle":
    case "Druid": 
    case "Archdruid": 
    {
        switch (Battle_progress.active_unit.type_of_attack)
        {
            case 0: 
            {
                SCR_Target_one_teammate_range(Battle_progress.inst_id)
                Battle_progress.attack_range = 2
            }
            break;
            case 1: 
            {
                SCR_Target_one_teammate_range(Battle_progress.inst_id)
                Battle_progress.attack_range = 2
            }
            break;
        }
    } break;
    //healers AOE
    case "Cleric": 
    case "Priest": 
    case "Bless_one":
    {
        switch (Battle_progress.active_unit.type_of_attack)
        {
            case 0: 
            {
                SCR_Target_all_teammates(Battle_progress.inst_id)
                Battle_progress.attack_range = 3
            }
            break;
            case 1: 
            {
                SCR_Target_all_teammates(Battle_progress.inst_id)
                Battle_progress.attack_range = 3
            }
            break;
        }
    } break;
    //Rangers
    case "Scout":
    case "Archer":
    case "Bandit":
    case "Outlaw":
    case "Destroyer":
    case "Guner":
    case "Hunter":
    case "Marksman":
    case "Duelist":
    case "Sniper":
    case "Sharpshooter": 
    {
        switch (Battle_progress.active_unit.type_of_attack)
        {
            case 0: 
            {
               SCR_Target_one_enemy_range(Battle_progress.inst_id)
               Battle_progress.attack_range = 0
            }
            break;
            case 1: 
            {
                SCR_Target_one_enemy_range(Battle_progress.inst_id)
                Battle_progress.active_unit.effect = 2
                Battle_progress.attack_range = 0
            }
            break;
        }
    } break;
}     
