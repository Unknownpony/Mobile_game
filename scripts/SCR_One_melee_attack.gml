///SCR_One_melee_attack(position, arra units)

pos = argument0
arr = argument1
check = 0
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
                arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==10)
                        arr[i].targeted = 1
                break;
            } else if(arr[i].position==10)
            {
                arr[i].targeted = 1
                break;
            } else if(arr[i].position==11)
            {
                arr[i].targeted = 1
                break;
            } else if(arr[i].position==12)
            {
                arr[i].targeted = 1
                break
            } else if(arr[i].position==13)
            {
                arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==14)
                        arr[i].targeted = 1
                break;
            } else if(arr[i].position==14)
            {
                arr[i].targeted = 1
                break;
            } else if(arr[i].position==15)
            {
                arr[i].targeted = 1
                break;
            } else if(arr[i].position==16)
            {
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
                arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==10 or arr[i].position==11)
                        arr[i].targeted = 1
                break;
            } else if(arr[i].position==10)
            {
                arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==11)
                        arr[i].targeted = 1
                break;
            } else if(arr[i].position==11)
            {
                arr[i].targeted = 1
                break;
            } else if(arr[i].position==12)
            {
                arr[i].targeted = 1
                break;
            } else if(arr[i].position==13)
            {
                arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==14 or arr[i].position==15)
                        arr[i].targeted = 1
                break;
            } else if(arr[i].position==14)
            {
                arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==15)
                        arr[i].targeted = 1
                break;
            } else if(arr[i].position==15)
            {
                arr[i].targeted = 1
                break;
            } else if(arr[i].position==16)
            {
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
        
        for(i=array_length_1d(arr)-1; i>0; i--)
        {
            if(arr[i].position==12)
            {
                arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==11 or arr[i].position==10)
                        arr[i].targeted = 1
                check = 1
                break;
            }else if(arr[i].position==11)
            {
                arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==10)
                        arr[i].targeted = 1
                check = 1
                break;
            } else if(arr[i].position==10)
            {
                arr[i].targeted = 1
                check = 1
                break;
            } else if(arr[i].position==9)
            {
                arr[i].targeted = 1
                check = 1
                break;
            } 
        }
        
        if (check == 1)
            break;
            
        for(i=array_length_1d(arr)-1; i>0; i--)
        {   
            if(arr[i].position==16)
            {
                arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==15 or arr[i].position==14)
                        arr[i].targeted = 1
                break;
            }else if(arr[i].position==15)
            {
                arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==14)
                        arr[i].targeted = 1
                break;
            } else if(arr[i].position==14)
            {
                arr[i].targeted = 1
                break;
            } else if(arr[i].position==13)
            {
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
        
        for(i=array_length_1d(arr)-1; i>0; i--)
        {
            if(arr[i].position==12)
            {
                arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==11)
                        arr[i].targeted = 1
                check = 1
                break;
            } else if(arr[i].position==11)
            {
                arr[i].targeted = 1
                check = 1
                break;                
            } else if(arr[i].position==10)
            {
                arr[i].targeted = 1
                check = 1
                break;
            } else if(arr[i].position==9)
            {
                arr[i].targeted = 1
                check = 1
                break
            } 
        }
        
        if (check == 1)
            break;
            
        for(i=array_length_1d(arr)-1; i>0; i--)
        {
            if(arr[i].position==16)
            {
                arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==15)
                        arr[i].targeted = 1
                break;
            } else if(arr[i].position==15)
            {
                arr[i].targeted = 1
                break;
            } else if(arr[i].position==14)
            {
                arr[i].targeted = 1
                break;
            } else if(arr[i].position==13)
            {
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
                arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==10)
                        arr[i].targeted = 1
                break;
            } else if(arr[i].position==10)
            {
                arr[i].targeted = 1
                break;
            } else if(arr[i].position==11)
            {
                arr[i].targeted = 1
                break;
            } else if(arr[i].position==12)
            {
                arr[i].targeted = 1
                break
            } else if(arr[i].position==13)
            {
                arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==14)
                        arr[i].targeted = 1
                break;
            } else if(arr[i].position==14)
            {
                arr[i].targeted = 1
                break;
            } else if(arr[i].position==15)
            {
                arr[i].targeted = 1
                break;
            } else if(arr[i].position==16)
            {
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
                arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==10 or arr[i].position==11)
                        arr[i].targeted = 1
                break;
            } else if(arr[i].position==10)
            {
                arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==11)
                        arr[i].targeted = 1
                break;
            } else if(arr[i].position==11)
            {
                arr[i].targeted = 1
                break;
            } else if(arr[i].position==12)
            {
                arr[i].targeted = 1
                break;
            } else if(arr[i].position==13)
            {
                arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==14 or arr[i].position==15)
                        arr[i].targeted = 1
                break;
            } else if(arr[i].position==14)
            {
                arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==15)
                        arr[i].targeted = 1
                break;
            } else if(arr[i].position==15)
            {
                arr[i].targeted = 1
                break;
            } else if(arr[i].position==16)
            {
                arr[i].targeted = 1
                break;
            }
        }  
    }break;
    case 7: 
    {
        for(i=array_length_1d(arr)-1; i>0; i--)
        {
            if(arr[i].position==12)
            {
                arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==11 or arr[i].position==10)
                        arr[i].targeted = 1
                check = 1
                break;
            }else if(arr[i].position==11)
            {
                arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==10)
                        arr[i].targeted = 1
                check = 1
                break;
            } else if(arr[i].position==10)
            {
                arr[i].targeted = 1
                check = 1
                break;
            } else if(arr[i].position==9)
            {
                arr[i].targeted = 1
                check = 1
                break;
            } 
        }
        
        if (check == 1)
            break;
            
        for(i=array_length_1d(arr)-1; i>0; i--)
        {   
            if(arr[i].position==16)
            {
                arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==15 or arr[i].position==14)
                        arr[i].targeted = 1
                break;
            }else if(arr[i].position==15)
            {
                arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==14)
                        arr[i].targeted = 1
                break;
            } else if(arr[i].position==14)
            {
                arr[i].targeted = 1
                break;
            } else if(arr[i].position==13)
            {
                arr[i].targeted = 1
                break;
            } 
        }  
    }break;
    case 8: 
    {
        for(i=array_length_1d(arr)-1; i>0; i--)
        {
            if(arr[i].position==12)
            {
                arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==11)
                        arr[i].targeted = 1
                check = 1
                break;
            } else if(arr[i].position==11)
            {
                arr[i].targeted = 1
                check = 1
                break;                
            } else if(arr[i].position==10)
            {
                arr[i].targeted = 1
                check = 1
                break;
            } else if(arr[i].position==9)
            {
                arr[i].targeted = 1
                check = 1
                break
            } 
        }
        
        if (check == 1)
            break;
            
        for(i=array_length_1d(arr)-1; i>0; i--)
        {
            if(arr[i].position==16)
            {
                arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==15)
                        arr[i].targeted = 1
                break;
            } else if(arr[i].position==15)
            {
                arr[i].targeted = 1
                break;
            } else if(arr[i].position==14)
            {
                arr[i].targeted = 1
                break;
            } else if(arr[i].position==13)
            {
                arr[i].targeted = 1
                break;
            }
        }  
    }break;
}
 
