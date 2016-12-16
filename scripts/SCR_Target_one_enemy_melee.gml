///SCR_Target_one_enemy_melee(position, arr units)

pos = argument0
arr = argument1
check = 0

//Check current position of the object and based on it it determinante
//which object can be attacked
//position of the objects in battle
//player | enemy
//  4 8  |  12 16 
//  3 6  |  11 15
//  2 6  |  10 14
//  1 5  |   9 13
//Based on it check which object can be mark for the hit with position_meeting
switch (pos)
{
    case 1: 
    {
        for(i=0; i<array_length_1d(arr); i+=1)
        {
            if(arr[i].position==5 or arr[i].position==6 or arr[i].position==7 or arr[i].position==8)
                break;
            if(arr[i].position==9)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==10)
                        if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                            arr[i].targeted = 1
                break;
            } else if(arr[i].position==10)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                break;
            } else if(arr[i].position==11)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                break;
            } else if(arr[i].position==12)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                break
            } else if(arr[i].position==13)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==14)
                        if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                            arr[i].targeted = 1
                break;
            } else if(arr[i].position==14)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                break;
            } else if(arr[i].position==15)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                break;
            } else if(arr[i].position==16)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                break;
            }
        }             
    }break;
    case 2: 
    {
        for(i=0; i<array_length_1d(arr); i+=1)
        {
            if(arr[i].position==5 or arr[i].position==6 or arr[i].position==7 or arr[i].position==8)
                break;
            if(arr[i].position==9)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==10 or arr[i].position==11)
                        if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                            arr[i].targeted = 1
                break;
            } else if(arr[i].position==10)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==11)
                        if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                            arr[i].targeted = 1
                break;
            } else if(arr[i].position==11)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                break;
            } else if(arr[i].position==12)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                break;
            } else if(arr[i].position==13)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==14 or arr[i].position==15)
                        if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                            arr[i].targeted = 1
                break;
            } else if(arr[i].position==14)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==15)
                        if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                            arr[i].targeted = 1
                break;
            } else if(arr[i].position==15)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                break;
            } else if(arr[i].position==16)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                break;
            }
        }  
    }break;
    case 3: 
    {
        for(i=0; i<array_length_1d(arr); i+=1)
        {
            if(arr[i].position==5 or arr[i].position==6 or arr[i].position==7 or arr[i].position==8)
                break;
        }
        
        for(i=array_length_1d(arr)-1; i>=0; i--)
        {
            if(arr[i].position==12)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==11 or arr[i].position==10)
                        if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                            arr[i].targeted = 1
                check = 1
                break;
            }else if(arr[i].position==11)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==10)
                        if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                            arr[i].targeted = 1
                check = 1
                break;
            } else if(arr[i].position==10)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                check = 1
                break;
            } else if(arr[i].position==9)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                check = 1
                break;
            } 
        }
        
        if (check == 1)
            break;
            
        for(i=array_length_1d(arr)-1; i>=0; i--)
        {   
            if(arr[i].position==16)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==15 or arr[i].position==14)
                        if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                            arr[i].targeted = 1
                break;
            }else if(arr[i].position==15)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==14)
                        if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                            arr[i].targeted = 1
                break;
            } else if(arr[i].position==14)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                break;
            } else if(arr[i].position==13)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                break;
            } 
        }   
    }break;
    case 4: 
    {
        for(i=0; i<array_length_1d(arr); i+=1)
        {
            if(arr[i].position==5 or arr[i].position==6 or arr[i].position==7 or arr[i].position==8)
                break;
        }
        
        for(i=array_length_1d(arr)-1; i>=0; i--)
        {
            if(arr[i].position==12)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==11)
                        if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                            arr[i].targeted = 1
                check = 1
                break;
            } else if(arr[i].position==11)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                check = 1
                break;                
            } else if(arr[i].position==10)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                check = 1
                break;
            } else if(arr[i].position==9)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                check = 1
                break
            } 
        }
        
        if (check == 1)
            break;
            
        for(i=array_length_1d(arr)-1; i>=0; i--)
        {
            if(arr[i].position==16)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==15)
                        if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                            arr[i].targeted = 1
                break;
            } else if(arr[i].position==15)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                break;
            } else if(arr[i].position==14)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                break;
            } else if(arr[i].position==13)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                break;
            }
        }    
    }break;
    case 5: 
    {
        for(i=0; i<array_length_1d(arr); i+=1)
        {
            if(arr[i].position==9)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==10)
                        if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                            arr[i].targeted = 1
                break;
            } else if(arr[i].position==10)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                break;
            } else if(arr[i].position==11)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                break;
            } else if(arr[i].position==12)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                break
            } else if(arr[i].position==13)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==14)
                        if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                            arr[i].targeted = 1
                break;
            } else if(arr[i].position==14)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                break;
            } else if(arr[i].position==15)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                break;
            } else if(arr[i].position==16)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                break;
            }
        }             
    }break; 
    case 6: 
    {
        for(i=0; i<array_length_1d(arr); i+=1)
        {
            if(arr[i].position==9)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==10 or arr[i].position==11)
                        if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                            arr[i].targeted = 1
                break;
            } else if(arr[i].position==10)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==11)
                        if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                            arr[i].targeted = 1
                break;
            } else if(arr[i].position==11)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                break;
            } else if(arr[i].position==12)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                break;
            } else if(arr[i].position==13)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==14 or arr[i].position==15)
                        if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                            arr[i].targeted = 1
                break;
            } else if(arr[i].position==14)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==15)
                        if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                            arr[i].targeted = 1
                break;
            } else if(arr[i].position==15)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                break;
            } else if(arr[i].position==16)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                break;
            }
        }  
    }break;
    case 7: 
    {
        for(i=array_length_1d(arr)-1; i>=0; i--)
        {
            if(arr[i].position==12)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==11 or arr[i].position==10)
                        if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                            arr[i].targeted = 1
                check = 1
                break;
            }else if(arr[i].position==11)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==10)
                        if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                            arr[i].targeted = 1
                check = 1
                break;
            } else if(arr[i].position==10)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                check = 1
                break;
            } else if(arr[i].position==9)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                check = 1
                break;
            } 
        }
        
        if (check == 1)
            break;
            
        for(i=array_length_1d(arr-1); i>=0; i--)
        {   
            if(arr[i].position==16)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==15 or arr[i].position==14)
                        if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                            arr[i].targeted = 1
                break;
            }else if(arr[i].position==15)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==14)
                        if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                            arr[i].targeted = 1
                break;
            } else if(arr[i].position==14)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                break;
            } else if(arr[i].position==13)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                break;
            } 
        }  
    }break;
    case 8: 
    {
        for(i=array_length_1d(arr)-1; i>=0; i--)
        {
            if(arr[i].position==12)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==11)
                        if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                            arr[i].targeted = 1
                check = 1
                break;
            } else if(arr[i].position==11)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                check = 1
                break;                
            } else if(arr[i].position==10)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                check = 1
                break;
            } else if(arr[i].position==9)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                check = 1
                break
            } 
        }
        
        if (check == 1)
            break;
            
        for(i=array_length_1d(arr)-1; i>=0; i--)
        {
            if(arr[i].position==16)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==15)
                        if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                            arr[i].targeted = 1
                break;
            } else if(arr[i].position==15)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                break;
            } else if(arr[i].position==14)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                break;
            } else if(arr[i].position==13)
            {
                if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
                    arr[i].targeted = 1
                break;
            }
        }  
    }break;
}
 
