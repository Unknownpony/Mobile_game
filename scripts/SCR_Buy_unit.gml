///BUY_UNIT(Object_name, int) - return value for basic object or 
//Arguments of this function
bought_unit_name = argument0
g = argument1

//Check if we are in the shop window and if any object was selected
if(room_get_name(room) == "RM_Army_Management" and global.selected=0 and view_visible[1]=1)
{
    //Pop up message if user want to buy this unit by such ammount of gold
    if(show_question("Do you want to buy this unit for" + string(g) + " Gold?") == 1)
    {   
        //Check if user has enough gold to buy this unit
        if(Game_flow.gold >=g)
        {
            Game_flow.gold-=g
            view_visible[1]=0
            view_visible[0]=1
            //return the value based of which object user clicked
            switch (bought_unit_name)
            {
                case "Squire": return 1; break;
                case "Fighter": return 2; break;
                case "Apprentice": return 3; break;
                case "Acolyte": return 4; break;
                case "Scout": return 5; break;
                default: return 0;
            } 
        } 
        else
        {
            show_message("Not enough Gold");
            return 0    
        }           
    }     
}
