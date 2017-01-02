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
        for(toem_i=0; toem_i<array_length_1d(arr); toem_i+=1)
        {
            if(arr[toem_i].position==5 or arr[toem_i].position==6 or arr[toem_i].position==7 or arr[toem_i].position==8)
                break;
            if(arr[toem_i].position==9)
            {
                
                    arr[toem_i].targeted = 1
                for(toem_i=0; toem_i<array_length_1d(arr); toem_i+=1)
                    if(arr[toem_i].position==10)
                        
                            arr[toem_i].targeted = 1
                break;
            } else if(arr[toem_i].position==10)
            {
                
                    arr[toem_i].targeted = 1
                break;
            } else if(arr[toem_i].position==11)
            {
                
                    arr[toem_i].targeted = 1
                break;
            } else if(arr[toem_i].position==12)
            {
                
                    arr[toem_i].targeted = 1
                break
            } else if(arr[toem_i].position==13)
            {
                
                    arr[toem_i].targeted = 1
                for(toem_i=0; toem_i<array_length_1d(arr); toem_i+=1)
                    if(arr[toem_i].position==14)
                        
                            arr[toem_i].targeted = 1
                break;
            } else if(arr[toem_i].position==14)
            {
                
                    arr[toem_i].targeted = 1
                break;
            } else if(arr[toem_i].position==15)
            {
                
                    arr[toem_i].targeted = 1
                break;
            } else if(arr[toem_i].position==16)
            {
                
                    arr[toem_i].targeted = 1
                break;
            }
        }             
    }break;
    case 2: 
    {
        for(toem_i=0; toem_i<array_length_1d(arr); toem_i+=1)
        {
            if(arr[toem_i].position==5 or arr[toem_i].position==6 or arr[toem_i].position==7 or arr[toem_i].position==8)
                break;
            if(arr[toem_i].position==9)
            {
                
                    arr[toem_i].targeted = 1
                for(toem_i=0; toem_i<array_length_1d(arr); toem_i+=1)
                    if(arr[toem_i].position==10 or arr[toem_i].position==11)
                        
                            arr[toem_i].targeted = 1
                break;
            } else if(arr[toem_i].position==10)
            {
                
                    arr[toem_i].targeted = 1
                for(toem_i=0; toem_i<array_length_1d(arr); toem_i+=1)
                    if(arr[toem_i].position==11)
                        
                            arr[toem_i].targeted = 1
                break;
            } else if(arr[toem_i].position==11)
            {
                
                    arr[toem_i].targeted = 1
                break;
            } else if(arr[toem_i].position==12)
            {
                
                    arr[toem_i].targeted = 1
                break;
            } else if(arr[toem_i].position==13)
            {
                
                    arr[toem_i].targeted = 1
                for(toem_i=0; toem_i<array_length_1d(arr); toem_i+=1)
                    if(arr[toem_i].position==14 or arr[toem_i].position==15)
                        
                            arr[toem_i].targeted = 1
                break;
            } else if(arr[toem_i].position==14)
            {
                
                    arr[toem_i].targeted = 1
                for(toem_i=0; toem_i<array_length_1d(arr); toem_i+=1)
                    if(arr[toem_i].position==15)
                        
                            arr[toem_i].targeted = 1
                break;
            } else if(arr[toem_i].position==15)
            {
                
                    arr[toem_i].targeted = 1
                break;
            } else if(arr[toem_i].position==16)
            {
                
                    arr[toem_i].targeted = 1
                break;
            }
        }  
    }break;
    case 3: 
    {
        for(toem_i=0; toem_i<array_length_1d(arr); toem_i+=1)
        {
            if(arr[toem_i].position==5 or arr[toem_i].position==6 or arr[toem_i].position==7 or arr[toem_i].position==8)
                   check = 1;
        }
        
        if (check == 1)
            break;
            
        for(toem_i=array_length_1d(arr)-1; toem_i>=0; toem_i--)
        {
            if(arr[toem_i].position==12)
            {
                
                    arr[toem_i].targeted = 1
                for(toem_i=0; toem_i<array_length_1d(arr); toem_i+=1)
                    if(arr[toem_i].position==11 or arr[toem_i].position==10)
                        
                            arr[toem_i].targeted = 1
                check = 1
                break;
            }else if(arr[toem_i].position==11)
            {
                
                    arr[toem_i].targeted = 1
                for(toem_i=0; toem_i<array_length_1d(arr); toem_i+=1)
                    if(arr[toem_i].position==10)
                        
                            arr[toem_i].targeted = 1
                check = 1
                break;
            } else if(arr[toem_i].position==10)
            {
                
                    arr[toem_i].targeted = 1
                check = 1
                break;
            } else if(arr[toem_i].position==9)
            {
                
                    arr[toem_i].targeted = 1
                check = 1
                break;
            } 
        }
        
        if (check == 1)
            break;
            
        for(toem_i=array_length_1d(arr)-1; toem_i>=0; toem_i--)
        {   
            if(arr[toem_i].position==16)
            {
                
                    arr[toem_i].targeted = 1
                for(toem_i=0; toem_i<array_length_1d(arr); toem_i+=1)
                    if(arr[toem_i].position==15 or arr[toem_i].position==14)
                        
                            arr[toem_i].targeted = 1
                break;
            }else if(arr[toem_i].position==15)
            {
                
                    arr[toem_i].targeted = 1
                for(toem_i=0; toem_i<array_length_1d(arr); toem_i+=1)
                    if(arr[toem_i].position==14)
                        
                            arr[toem_i].targeted = 1
                break;
            } else if(arr[toem_i].position==14)
            {
                
                    arr[toem_i].targeted = 1
                break;
            } else if(arr[toem_i].position==13)
            {
                
                    arr[toem_i].targeted = 1
                break;
            } 
        }   
    }break;
    case 4: 
    {
        for(toem_i=0; toem_i<array_length_1d(arr); toem_i+=1)
        {
            if(arr[toem_i].position==5 or arr[toem_i].position==6 or arr[toem_i].position==7 or arr[toem_i].position==8)
                check = 1;
        }
        
        if (check == 1)
            break;
        
        for(toem_i=array_length_1d(arr)-1; toem_i>=0; toem_i--)
        {
            if(arr[toem_i].position==12)
            {
                
                    arr[toem_i].targeted = 1
                for(toem_i=0; toem_i<array_length_1d(arr); toem_i+=1)
                    if(arr[toem_i].position==11)
                        
                            arr[toem_i].targeted = 1
                check = 1
                break;
            } else if(arr[toem_i].position==11)
            {
                
                    arr[toem_i].targeted = 1
                check = 1
                break;                
            } else if(arr[toem_i].position==10)
            {
                
                    arr[toem_i].targeted = 1
                check = 1
                break;
            } else if(arr[toem_i].position==9)
            {
                
                    arr[toem_i].targeted = 1
                check = 1
                break
            } 
        }
        
        if (check == 1)
            break;
            
        for(toem_i=array_length_1d(arr)-1; toem_i>=0; toem_i--)
        {
            if(arr[toem_i].position==16)
            {
                
                    arr[toem_i].targeted = 1
                for(toem_i=0; toem_i<array_length_1d(arr); toem_i+=1)
                    if(arr[toem_i].position==15)
                        
                            arr[toem_i].targeted = 1
                break;
            } else if(arr[toem_i].position==15)
            {
                
                    arr[toem_i].targeted = 1
                break;
            } else if(arr[toem_i].position==14)
            {
                
                    arr[toem_i].targeted = 1
                break;
            } else if(arr[toem_i].position==13)
            {
                
                    arr[toem_i].targeted = 1
                break;
            }
        }    
    }break;
    case 5: 
    {
        for(toem_i=0; toem_i<array_length_1d(arr); toem_i+=1)
        {
            if(arr[toem_i].position==9)
            {
                
                    arr[toem_i].targeted = 1
                for(toem_i=0; toem_i<array_length_1d(arr); toem_i+=1)
                    if(arr[toem_i].position==10)
                        
                            arr[toem_i].targeted = 1
                break;
            } else if(arr[toem_i].position==10)
            {
                
                    arr[toem_i].targeted = 1
                break;
            } else if(arr[toem_i].position==11)
            {
                
                    arr[toem_i].targeted = 1
                break;
            } else if(arr[toem_i].position==12)
            {
                
                    arr[toem_i].targeted = 1
                break
            } else if(arr[toem_i].position==13)
            {
                
                    arr[toem_i].targeted = 1
                for(toem_i=0; toem_i<array_length_1d(arr); toem_i+=1)
                    if(arr[toem_i].position==14)
                        
                            arr[toem_i].targeted = 1
                break;
            } else if(arr[toem_i].position==14)
            {
                
                    arr[toem_i].targeted = 1
                break;
            } else if(arr[toem_i].position==15)
            {
                
                    arr[toem_i].targeted = 1
                break;
            } else if(arr[toem_i].position==16)
            {
                
                    arr[toem_i].targeted = 1
                break;
            }
        }             
    }break; 
    case 6: 
    {
        for(toem_i=0; toem_i<array_length_1d(arr); toem_i+=1)
        {
            if(arr[toem_i].position==9)
            {
                
                    arr[toem_i].targeted = 1
                for(toem_i=0; toem_i<array_length_1d(arr); toem_i+=1)
                    if(arr[toem_i].position==10 or arr[toem_i].position==11)
                        
                            arr[toem_i].targeted = 1
                break;
            } else if(arr[toem_i].position==10)
            {
                
                    arr[toem_i].targeted = 1
                for(toem_i=0; toem_i<array_length_1d(arr); toem_i+=1)
                    if(arr[toem_i].position==11)
                        
                            arr[toem_i].targeted = 1
                break;
            } else if(arr[toem_i].position==11)
            {
                
                    arr[toem_i].targeted = 1
                break;
            } else if(arr[toem_i].position==12)
            {
                
                    arr[toem_i].targeted = 1
                break;
            } else if(arr[toem_i].position==13)
            {
                
                    arr[toem_i].targeted = 1
                for(toem_i=0; toem_i<array_length_1d(arr); toem_i+=1)
                    if(arr[toem_i].position==14 or arr[toem_i].position==15)
                        
                            arr[toem_i].targeted = 1
                break;
            } else if(arr[toem_i].position==14)
            {
                
                    arr[toem_i].targeted = 1
                for(toem_i=0; toem_i<array_length_1d(arr); toem_i+=1)
                    if(arr[toem_i].position==15)
                        
                            arr[toem_i].targeted = 1
                break;
            } else if(arr[toem_i].position==15)
            {
                
                    arr[toem_i].targeted = 1
                break;
            } else if(arr[toem_i].position==16)
            {
                
                    arr[toem_i].targeted = 1
                break;
            }
        }  
    }break;
    case 7: 
    {
        for(toem_i=array_length_1d(arr)-1; toem_i>=0; toem_i--)
        {
            if(arr[toem_i].position==12)
            {
                
                    arr[toem_i].targeted = 1
                for(toem_i=0; toem_i<array_length_1d(arr); toem_i+=1)
                    if(arr[toem_i].position==11 or arr[toem_i].position==10)
                        
                            arr[toem_i].targeted = 1
                check = 1
                break;
            }else if(arr[toem_i].position==11)
            {
                
                    arr[toem_i].targeted = 1
                for(toem_i=0; toem_i<array_length_1d(arr); toem_i+=1)
                    if(arr[toem_i].position==10)
                        
                            arr[toem_i].targeted = 1
                check = 1
                break;
            } else if(arr[toem_i].position==10)
            {
                
                    arr[toem_i].targeted = 1
                check = 1
                break;
            } else if(arr[toem_i].position==9)
            {
                
                    arr[toem_i].targeted = 1
                check = 1
                break;
            } 
        }
        
        if (check == 1)
            break;
            
        for(toem_i=array_length_1d(arr)-1; toem_i>=0; toem_i--)
        {   
            if(arr[toem_i].position==16)
            {
                
                    arr[toem_i].targeted = 1
                for(toem_i=0; toem_i<array_length_1d(arr); toem_i+=1)
                    if(arr[toem_i].position==15 or arr[toem_i].position==14)
                        
                            arr[toem_i].targeted = 1
                break;
            }else if(arr[toem_i].position==15)
            {
                
                    arr[toem_i].targeted = 1
                for(toem_i=0; toem_i<array_length_1d(arr); toem_i+=1)
                    if(arr[toem_i].position==14)
                        
                            arr[toem_i].targeted = 1
                break;
            } else if(arr[toem_i].position==14)
            {
                
                    arr[toem_i].targeted = 1
                break;
            } else if(arr[toem_i].position==13)
            {
                
                    arr[toem_i].targeted = 1
                break;
            } 
        }  
    }break;
    case 8: 
    {
        for(toem_i=array_length_1d(arr)-1; toem_i>=0; toem_i--)
        {
            if(arr[toem_i].position==12)
            {
                
                    arr[toem_i].targeted = 1
                for(toem_i=0; toem_i<array_length_1d(arr); toem_i+=1)
                    if(arr[toem_i].position==11)
                        
                            arr[toem_i].targeted = 1
                check = 1
                break;
            } else if(arr[toem_i].position==11)
            {
                
                    arr[toem_i].targeted = 1
                check = 1
                break;                
            } else if(arr[toem_i].position==10)
            {
                
                    arr[toem_i].targeted = 1
                check = 1
                break;
            } else if(arr[toem_i].position==9)
            {
                
                    arr[toem_i].targeted = 1
                check = 1
                break
            } 
        }
        
        if (check == 1)
            break;
            
        for(toem_i=array_length_1d(arr)-1; toem_i>=0; toem_i--)
        {
            if(arr[toem_i].position==16)
            {
                
                    arr[toem_i].targeted = 1
                for(toem_i=0; toem_i<array_length_1d(arr); toem_i+=1)
                    if(arr[toem_i].position==15)
                        
                            arr[toem_i].targeted = 1
                break;
            } else if(arr[toem_i].position==15)
            {
                
                    arr[toem_i].targeted = 1
                break;
            } else if(arr[toem_i].position==14)
            {
                
                    arr[toem_i].targeted = 1
                break;
            } else if(arr[toem_i].position==13)
            {
                
                    arr[toem_i].targeted = 1
                break;
            }
        }  
    }break;
}
 
