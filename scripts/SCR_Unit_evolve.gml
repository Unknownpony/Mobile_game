///SCR_Unit_evolve(obj)

evolve_unit = argument0
temp = 0
    switch(object_get_name(evolve_unit.object_index))
    {
        //Warriors
        case "Squire": 
        {
            switch(Game_flow.castle[0,0])
            {
                case 0: 
                    return 1
                break;
                case 1: 
                {
                    temp[0] = "Warrior"
                    temp[1] = 110 
                    temp[3] = 0
                    evolve_unit.unit_id = 1
                } break;
                case 2: 
                {
                    temp[0] = "Young_hero"
                    temp[1] = 125 
                    temp[3] = 0
                    evolve_unit.unit_id = 2
                } break;
                case 3: 
                {
                    temp[0] = "Knight"
                    temp[1] = 150  
                    temp[3] = 0 
                    evolve_unit.unit_id = 3
                } break;
            }       
        }break;
        //Tier 1
        case "Warrior": 
        {
            switch(Game_flow.castle[0,1])
            {
                case 0: 
                    return 1 
                case 1: 
                {
                    temp[0] = "Elementalist_warrior"
                    temp[1] = 130 
                    temp[3] = 0
                    evolve_unit.unit_id = 4
                } break;
            }
        }break;
        case "Young_hero": 
        {
            switch(Game_flow.castle[0,1])
            {
                case 0: 
                    return 1 
                case 2: 
                {
                    temp[0] = "Hero"
                    temp[1] = 150 
                    temp[3] = 0
                    evolve_unit.unit_id = 5
                } break;
            }
        }break; 
        case "Knight": 
        {
            switch(Game_flow.castle[0,1])
            {
                case 0: 
                    return 1
                case 3: 
                {
                    temp[0] = "Paladin"
                    temp[1] = 200 
                    temp[3] = 0
                    evolve_unit.unit_id = 6
                } break;             
            }
        }break; 
        //Tier 2
        case "Elementalist_warrior": 
        {
            switch(Game_flow.castle[0,2])
            {
                case 0: 
                    return 1 
                case 1: 
                {
                    temp[0] = "Nymph"
                    temp[1] = 200 
                    temp[3] = 0
                    evolve_unit.unit_id = 7
                } break;
                case 2: 
                {
                    temp[0] = "Dragon_slayer"
                    temp[1] = 200 
                    temp[3] = 0
                    evolve_unit.unit_id = 8
                } break;
                case 3: 
                {
                    temp[0] = "Sylph"
                    temp[1] = 200 
                    temp[3] = 0
                    evolve_unit.unit_id = 9
                } break;
            }
        }break;
        case "Hero": 
        {
            switch(Game_flow.castle[0,2])
            {
                case 0: 
                    return 1 
                case 4: 
                {
                    temp[0] = "Holy_avenger"
                    temp[1] = 200 
                    temp[3] = 0
                    evolve_unit.unit_id = 10
                } break;
            }
        }break; 
        case "Paladin":
        {
            switch(Game_flow.castle[0,2])
            {
                case 0: 
                    return 1
                case 5: 
                {
                    temp[0] = "Gladiator"
                    temp[1] = 200 
                    temp[3] = 0
                    evolve_unit.unit_id = 11
                } break;   
                case 6: 
                {
                    temp[0] = "Wall"
                    temp[1] = 200 
                    temp[3] = 0
                    evolve_unit.unit_id = 12
                } break;          
            }
        }break; 
        //Fighters
        case "Fighter":
        {
            switch(Game_flow.castle[1,0])
            {
                case 0: 
                    return 1
                break;
                case 1: 
                {
                    temp[0] = "Rouge"
                    temp[1] = 110 
                    temp[3] = 0
                    evolve_unit.unit_id = 13
                } break;
                case 2: 
                {
                    temp[0] = "Kung_Fu_Fighter"
                    temp[1] = 110 
                    temp[3] = 0
                    evolve_unit.unit_id = 14
                } break;
            }
        }break; 
        //Tier 1
        case "Rouge":
        {
            switch(Game_flow.castle[1,1])
            {
                case 0: 
                    return 1
                break;
                case 1: 
                {
                    temp[0] = "Assassin"
                    temp[1] = 110 
                    temp[3] = 0
                    evolve_unit.unit_id = 15
                } break;
            }
        }break;
        case "Kung_Fu_Fighter":
        {
            switch(Game_flow.castle[1,1])
            {
                case 0: 
                    return 1
                break;
                case 2: 
                {
                    temp[0] = "Shaolin_nun"
                    temp[1] = 110 
                    temp[3] = 0
                    evolve_unit.unit_id = 16
                } break;
                case 3: 
                {
                    temp[0] = "Shaolin_monk"
                    temp[1] = 110 
                    temp[3] = 0
                    evolve_unit.unit_id = 17
                } break;
            }
        }break;
        //Tier 2
        case "Assassin":
        {
            switch(Game_flow.castle[1,2])
            {
                case 0: 
                    return 1
                break;
                case 1: 
                {
                    temp[0] = "Shadow_ninja"
                    temp[1] = 110 
                    temp[3] = 0
                    evolve_unit.unit_id = 18
                } break;
            }
        }break;
        case "Shaolin_nun":
        {
            switch(Game_flow.castle[1,2])
            {
                case 0: 
                    return 1
                break;
                case 2: 
                {
                    temp[0] = "Rebel"
                    temp[1] = 110 
                    temp[3] = 0
                    evolve_unit.unit_id = 19
                } break;
                case 3: 
                {
                    temp[0] = "Enlightened_one"
                    temp[1] = 110 
                    temp[3] = 0
                    evolve_unit.unit_id = 20
                } break;
            }
        }break;
        case "Shaolin_monk":
        {
            switch(Game_flow.castle[1,2])
            {
                case 0: 
                    return 1
                break;
                case 4: 
                {
                    temp[0] = "Ogre"
                    temp[1] = 110 
                    temp[3] = 0
                    evolve_unit.unit_id = 21
                } break;
            }
        }break;  
        case "Apprentice": 
        {
            switch(Game_flow.castle[2,0])
            {
                case 0: 
                    return 1
                break;
                case 1: 
                {
                    temp[0] = "Mage"
                    temp[1] = 110 
                    temp[3] = 0
                    evolve_unit.unit_id = 22
                } break;
                case 2: 
                {
                    temp[0] = "Enchantress"
                    temp[1] = 110 
                    temp[3] = 0
                    evolve_unit.unit_id = 23
                } break;
            }
        } break;
        //Tier 1
        case "Mage": 
        {
            switch(Game_flow.castle[2,1])
            {
                case 0: 
                    return 1
                break;
                case 1: 
                {
                    temp[0] = "Wizard"
                    temp[1] = 110 
                    temp[3] = 0
                    evolve_unit.unit_id = 24
                } break;
                case 2: 
                {
                    temp[0] = "Necromancer"
                    temp[1] = 110 
                    temp[3] = 0
                    evolve_unit.unit_id = 25
                } break;
            }
        } break;
        case "Enchantress":
        {
            switch(Game_flow.castle[2,1])
            {
                case 0: 
                    return 1
                break;
                case 3: 
                {
                    temp[0] = "Sorceress"
                    temp[1] = 110 
                    temp[3] = 0
                    evolve_unit.unit_id = 26
                } break;
            }
        }break; 
        //Tier 2
        case "Wizard":
        {
            switch(Game_flow.castle[2,2])
            {
                case 0: 
                    return 1
                break;
                case 1: 
                {
                    temp[0] = "Great_white_wizard"
                    temp[1] = 110 
                    temp[3] = 0
                    evolve_unit.unit_id = 27
                } break;
            }
        }break; 
        case "Necromancer":
        {
            switch(Game_flow.castle[2,2])
            {
                case 0: 
                    return 1
                break;
                case 2: 
                {
                    temp[0] = "Pandemoniues"
                    temp[1] = 110 
                    temp[3] = 0
                    evolve_unit.unit_id = 28
                } break;
            }
        }break; 
        case "Sorceress":
        {
            switch(Game_flow.castle[2,2])
            {
                case 0: 
                    return 1
                break;
                case 3: 
                {
                    temp[0] = "Ancient_one"
                    temp[1] = 110 
                    temp[3] = 0
                    evolve_unit.unit_id = 29
                } break;
            }
        }break;  
        //Healers
        case "Acolyte":
        {
            switch(Game_flow.castle[3,0])
            {
                case 0: 
                    return 1
                break;
                case 1: 
                {
                    temp[0] = "Oracle"
                    temp[1] = 110 
                    temp[3] = 0
                    evolve_unit.unit_id = 30
                } break;
                case 2: 
                {
                    temp[0] = "Cleric"
                    temp[1] = 110 
                    temp[3] = 0
                    evolve_unit.unit_id = 31
                } break;
            }
        } break;
        //Tier 1
        case "Oracle":
        {
            switch(Game_flow.castle[3,1])
            {
                case 0: 
                    return 1
                break;
                case 1: 
                {
                    temp[0] = "Druid"
                    temp[1] = 110 
                    temp[3] = 0
                    evolve_unit.unit_id = 32
                } break;
            }
        }break; 
        case "Cleric":
        {
            switch(Game_flow.castle[3,1])
            {
                case 0: 
                    return 1
                break;
                case 2: 
                {
                    temp[0] = "Priest"
                    temp[1] = 110 
                    temp[3] = 0
                    evolve_unit.unit_id = 33
                } break;
            }
        }break; 
        //Tier 2
        case "Druid":
        {
            switch(Game_flow.castle[3,2])
            {
                case 0: 
                    return 1
                break;
                case 1: 
                {
                    temp[0] = "Archdruid"
                    temp[1] = 110 
                    temp[3] = 0
                    evolve_unit.unit_id = 34
                } break;
            }
        }break; 
        case "Priest":
        {
            switch(Game_flow.castle[3,2])
            {
                case 0: 
                    return 1
                break;
                case 2: 
                {
                    temp[0] = "Bless_one"
                    temp[1] = 110 
                    temp[3] = 0
                    evolve_unit.unit_id = 35
                } break;
            }
        }break; 
        //Rangers
        case "Scout":
        {
            switch(Game_flow.castle[4,0])
            {
                case 0: 
                    return 1
                break;
                case 1: 
                {
                    temp[0] = "Guner"
                    temp[1] = 110 
                    temp[3] = 0
                    evolve_unit.unit_id = 36
                }break;
                case 2: 
                {
                    temp[0] = "Archer"
                    temp[1] = 110 
                    temp[3] = 0
                    evolve_unit.unit_id = 37
                }break;
                case 3: 
                {
                    temp[0] = "Thief"
                    temp[1] = 110 
                    temp[3] = 0
                    evolve_unit.unit_id = 38
                }break;
            }
        }break;
        //Tier 1
        case "Guner":
        {
            switch(Game_flow.castle[4,1])
            {
                case 0: 
                    return 1
                break;
                case 1: 
                {
                    temp[0] = "Marksman"
                    temp[1] = 110 
                    temp[3] = 0
                    evolve_unit.unit_id = 39
                } break;
            }
        }break;  
        case "Archer":
        {
            switch(Game_flow.castle[4,1])
            {
                case 0: 
                    return 1
                break;
                case 2: 
                {
                    temp[0] = "Hunter"
                    temp[1] = 110 
                    temp[3] = 0
                    evolve_unit.unit_id = 40
                } break;
            }
        }break; 
        case "Thief":
        {
            switch(Game_flow.castle[4,1])
            {
                case 0: 
                    return 1
                break;
                case 3: 
                {
                    temp[0] = "Bandit"
                    temp[1] = 110 
                    temp[3] = 0
                    evolve_unit.unit_id = 41
                } break;
            }
        }break;  
        //Tier 2
        case "Marksman":
        {
            switch(Game_flow.castle[4,2])
            {
                case 0: 
                    return 1
                break;
                case 1: 
                {
                    temp[0] = "Duelist"
                    temp[1] = 110 
                    temp[3] = 0
                    evolve_unit.unit_id = 42
                } break;
                case 2: 
                {
                    temp[0] = "Sharpshooter"
                    temp[1] = 110 
                    temp[3] = 0
                    evolve_unit.unit_id = 43
                } break;
            }
        }break;
        case "Hunter":
        {
            switch(Game_flow.castle[4,2])
            {
                case 0: 
                    return 1
                break;
                case 3: 
                {
                    temp[0] = "Sniper"
                    temp[1] = 110 
                    temp[3] = 0
                    evolve_unit.unit_id = 44
                } break;
            }
        }break; 
        case "Bandit":
        {
            switch(Game_flow.castle[4,2])
            {
                case 0: 
                    return 1
                break;
                case 4: 
                {
                    temp[0] = "Destroyer"
                    temp[1] = 110 
                    temp[3] = 0
                    evolve_unit.unit_id = 45
                } break;
                case 5: 
                {
                    temp[0] = "Outlaw"
                    temp[1] = 110 
                    temp[3] = 0
                    evolve_unit.unit_id = 46
                } break;
            }
        }break;
        //Last level evolution
        case "Nymph":
        case "Dragon_slayer": 
        case "Sylph": 
        case "Holy_avenger":  
        case "Gladiator": 
        case "Wall": 
        case "Rebel":
        case "Enlightened_one":
        case "Shadow_ninja":  
        case "Ogre":
        case "Duelist":
        case "Sniper":
        case "Sharpshooter":  
        case "Outlaw":
        case "Destroyer":
        case "Great_white_wizard":
        case "Pandemoniues":
        case "Ancient_one":
        case "Archdruid": 
        case "Bless_one":
        {
            temp[0] = object_get_name(evolve_unit.object_index)
            temp[1] = evolve_unit.max_hp+10
            temp[3] = evolve_unit.unit_level+1
        }break;
    }
    evolve_animation = instance_create(evolve_unit.x, evolve_unit.y, Test_animation)  
    evolve_animation.sprite_index = SPR_Evolve
    temp[2] = 0
    return 0
