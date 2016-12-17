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
//It's used for enemy AI script later on
switch (pos)
{
    case 13: 
    {
        for(totm_i=array_length_1d(arr)-1; totm_i>=0; totm_i--)
        {
            if(arr[totm_i].position==9 or arr[totm_i].position==10 or arr[totm_i].position==11 or arr[totm_i].position==12)
                check = 1    
        }
        
        if (check == 1)
            break;
            
        for(totm_i=0; totm_i<array_length_1d(arr); totm_i+=1)
        {
            if(arr[totm_i].position==5)
            {
                arr[totm_i].targeted = 1
                check = 1
                for(totm_i=0; totm_i<array_length_1d(arr); totm_i+=1)
                    if(arr[totm_i].position==6)
                    {
                        arr[totm_i].targeted = 1
                        check = 1
                    }
                break;
            } else if(arr[totm_i].position==6)
            {                
                arr[totm_i].targeted = 1
                check = 1
                break;
            } else if(arr[totm_i].position==7)
            {                
                arr[totm_i].targeted = 1
                check = 1
                break;
            } else if(arr[totm_i].position==8)
            {
                arr[totm_i].targeted = 1
                check = 1
                break
            } 
        }   
        
        if (check == 1)
            break;
        
        for(totm_i=0; totm_i<array_length_1d(arr); totm_i+=1)
        {
            if(arr[totm_i].position==1 )
            {                
                arr[totm_i].targeted = 1
                for(totm_i=0; totm_i<array_length_1d(arr); totm_i+=1)
                    if(arr[totm_i].position==2)                        
                    arr[totm_i].targeted = 1
                break;
            } else if(arr[totm_i].position==2)
            {                
                arr[totm_i].targeted = 1
                break;
            } else if(arr[totm_i].position==3)
            {                
                arr[totm_i].targeted = 1
                break;
            } else if(arr[totm_i].position==4)
            {                
                arr[totm_i].targeted = 1
                break;
            }
        }             
    }break;
    case 14: 
    {
        for(totm_i=array_length_1d(arr)-1; totm_i>=0; totm_i--)
        {
            if(arr[totm_i].position==9 or arr[totm_i].position==10 or arr[totm_i].position==11 or arr[totm_i].position==12)
                check = 1    
        }
        
        if (check == 1)
            break;
        
        for(totm_i=0; totm_i<array_length_1d(arr); totm_i+=1)
        {
            if(arr[totm_i].position==5)
            {                
                arr[totm_i].targeted = 1
                check = 1
                for(totm_i=0; totm_i<array_length_1d(arr); totm_i+=1)
                    if(arr[totm_i].position==6 or arr[totm_i].position==7)    
                    {                    
                        arr[totm_i].targeted = 1
                        check = 1
                    }
                break;
            } else if(arr[totm_i].position==6)
            {                
                arr[totm_i].targeted = 1
                check = 1
                for(totm_i=0; totm_i<array_length_1d(arr); totm_i+=1)
                    if(arr[totm_i].position==7)      
                    {                  
                        arr[totm_i].targeted = 1
                        check = 1
                    }
                break;
            } else if(arr[totm_i].position==7)
            {                
                arr[totm_i].targeted = 1
                check = 1
                break;
            } else if(arr[totm_i].position==8)
            {                
                arr[totm_i].targeted = 1
                check = 1
                break;
            } 
        }
        
        if (check == 1)
            break;
        
        for(totm_i=0; totm_i<array_length_1d(arr); totm_i+=1)
        {
            if(arr[totm_i].position==1 )
            {                
                arr[totm_i].targeted = 1
                for(totm_i=0; totm_i<array_length_1d(arr); totm_i+=1)
                    if(arr[totm_i].position==2 or arr[totm_i].position==3)                        
                        arr[totm_i].targeted = 1
                break;
            } else if(arr[totm_i].position==2)
            {                
                arr[totm_i].targeted = 1
                for(totm_i=0; totm_i<array_length_1d(arr); totm_i+=1)
                    if(arr[totm_i].position==3)                        
                        arr[totm_i].targeted = 1
                break;
            } else if(arr[totm_i].position==3)
            {                
                arr[totm_i].targeted = 1
                break;
            } else if(arr[totm_i].position==4)
            {                
                arr[totm_i].targeted = 1
                break;
            }
        }  
    }break;
    case 15: 
    {
        for(totm_i=array_length_1d(arr)-1; totm_i>=0; totm_i--)
        {
            if(arr[totm_i].position==9 or arr[totm_i].position==10 or arr[totm_i].position==11 or arr[totm_i].position==12)
                check = 1    
        }
        
        if (check == 1)
            break;
        
        for(totm_i=array_length_1d(arr)-1; totm_i>=0; totm_i--)
        {
            if(arr[totm_i].position==8)
            {                
                arr[totm_i].targeted = 1
                for(totm_i=0; totm_i<array_length_1d(arr); totm_i+=1)
                    if(arr[totm_i].position==7 or arr[totm_i].position==6)
                        arr[totm_i].targeted = 1
                check = 1
                break;
            }else if(arr[totm_i].position==7)
            {                
                arr[totm_i].targeted = 1
                for(totm_i=0; totm_i<array_length_1d(arr); totm_i+=1)
                    if(arr[totm_i].position==6)                        
                        arr[totm_i].targeted = 1
                check = 1
                break;
            } else if(arr[totm_i].position==6)
            {                
                arr[totm_i].targeted = 1
                check = 1
                break;
            } else if(arr[totm_i].position==5)
            {                
                arr[totm_i].targeted = 1
                check = 1
                break;
            } 
        }
        
        if (check == 1)
            break;
            
        for(totm_i=array_length_1d(arr)-1; totm_i>=0; totm_i--)
        {   
            if(arr[totm_i].position==4)
            {                
                arr[totm_i].targeted = 1
                for(totm_i=0; totm_i<array_length_1d(arr); totm_i+=1)
                    if(arr[totm_i].position==3 or arr[totm_i].position==2)                        
                        arr[totm_i].targeted = 1
                break;
            }else if(arr[totm_i].position==3)
            {                
                arr[totm_i].targeted = 1
                for(totm_i=0; totm_i<array_length_1d(arr); totm_i+=1)
                    if(arr[totm_i].position==2)                        
                        arr[totm_i].targeted = 1
                break;
            } else if(arr[totm_i].position==2)
            {                
                arr[totm_i].targeted = 1
                break;
            } else if(arr[totm_i].position==1 )
            {                
                arr[totm_i].targeted = 1
                break;
            } 
        }   
    }break;
    case 16: 
    {
        for(totm_i=array_length_1d(arr)-1; totm_i>=0; totm_i--)
        {
            if(arr[totm_i].position==9 or arr[totm_i].position==10 or arr[totm_i].position==11 or arr[totm_i].position==12)
                check = 1    
        }
        
        for(totm_i=array_length_1d(arr)-1; totm_i>=0; totm_i--)
        {
            if(arr[totm_i].position==8)
            {                
                arr[totm_i].targeted = 1
                for(totm_i=0; totm_i<array_length_1d(arr); totm_i+=1)
                    if(arr[totm_i].position==7)                        
                        arr[totm_i].targeted = 1
                check = 1
                break;
            } else if(arr[totm_i].position==7)
            {                
                arr[totm_i].targeted = 1
                check = 1
                break;                
            } else if(arr[totm_i].position==6)
            {                
                arr[totm_i].targeted = 1
                check = 1
                break;
            } else if(arr[totm_i].position==5)
            {                
                arr[totm_i].targeted = 1
                check = 1
                break
            } 
        }
        
        if (check == 1)
            break;
            
        for(totm_i=array_length_1d(arr)-1; totm_i>=0; totm_i--)
        {
            if(arr[totm_i].position==4)
            {                
                arr[totm_i].targeted = 1
                for(totm_i=0; totm_i<array_length_1d(arr); totm_i+=1)
                    if(arr[totm_i].position==3)                        
                        arr[totm_i].targeted = 1
                break;
            } else if(arr[totm_i].position==3)
            {                
                arr[totm_i].targeted = 1
                break;
            } else if(arr[totm_i].position==2)
            {                
                arr[totm_i].targeted = 1
                break;
            } else if(arr[totm_i].position==1 )
            {                
                arr[totm_i].targeted = 1
                break;
            }
        }    
    }break;
    case 9: 
    {          
        for(totm_i=0; totm_i<array_length_1d(arr); totm_i+=1)
        {
            if(arr[totm_i].position==5)
            {
                arr[totm_i].targeted = 1
                check = 1
                for(totm_i=0; totm_i<array_length_1d(arr); totm_i+=1)
                    if(arr[totm_i].position==6)
                    {
                        arr[totm_i].targeted = 1
                        check = 1
                    }
                break;
            } else if(arr[totm_i].position==6)
            {                
                arr[totm_i].targeted = 1
                check = 1
                break;
            } else if(arr[totm_i].position==7)
            {                
                arr[totm_i].targeted = 1
                check = 1
                break;
            } else if(arr[totm_i].position==8)
            {
                arr[totm_i].targeted = 1
                check = 1
                break
            } 
        }   
        
        if (check == 1)
            break;
        
        for(totm_i=0; totm_i<array_length_1d(arr); totm_i+=1)
        {
            if(arr[totm_i].position==1 )
            {                
                arr[totm_i].targeted = 1
                for(totm_i=0; totm_i<array_length_1d(arr); totm_i+=1)
                    if(arr[totm_i].position==2)                        
                    arr[totm_i].targeted = 1
                break;
            } else if(arr[totm_i].position==2)
            {                
                arr[totm_i].targeted = 1
                break;
            } else if(arr[totm_i].position==3)
            {                
                arr[totm_i].targeted = 1
                break;
            } else if(arr[totm_i].position==4)
            {                
                arr[totm_i].targeted = 1
                break;
            }
        }             
    }break; 
    case 10: 
    {        
        for(totm_i=0; totm_i<array_length_1d(arr); totm_i+=1)
        {
            if(arr[totm_i].position==5)
            {                
                arr[totm_i].targeted = 1
                check = 1
                for(totm_i=0; totm_i<array_length_1d(arr); totm_i+=1)
                    if(arr[totm_i].position==6 or arr[totm_i].position==7)    
                    {                    
                        arr[totm_i].targeted = 1
                        check = 1
                    }
                break;
            } else if(arr[totm_i].position==6)
            {                
                arr[totm_i].targeted = 1
                check = 1
                for(totm_i=0; totm_i<array_length_1d(arr); totm_i+=1)
                    if(arr[totm_i].position==7)      
                    {                  
                        arr[totm_i].targeted = 1
                        check = 1
                    }
                break;
            } else if(arr[totm_i].position==7)
            {                
                arr[totm_i].targeted = 1
                check = 1
                break;
            } else if(arr[totm_i].position==8)
            {                
                arr[totm_i].targeted = 1
                check = 1
                break;
            } 
        }
        
        if (check == 1)
            break;
        
        for(totm_i=0; totm_i<array_length_1d(arr); totm_i+=1)
        {
            if(arr[totm_i].position==1 )
            {                
                arr[totm_i].targeted = 1
                for(totm_i=0; totm_i<array_length_1d(arr); totm_i+=1)
                    if(arr[totm_i].position==2 or arr[totm_i].position==3)                        
                        arr[totm_i].targeted = 1
                break;
            } else if(arr[totm_i].position==2)
            {                
                arr[totm_i].targeted = 1
                for(totm_i=0; totm_i<array_length_1d(arr); totm_i+=1)
                    if(arr[totm_i].position==3)                        
                        arr[totm_i].targeted = 1
                break;
            } else if(arr[totm_i].position==3)
            {                
                arr[totm_i].targeted = 1
                break;
            } else if(arr[totm_i].position==4)
            {                
                arr[totm_i].targeted = 1
                break;
            }
        }  
    }break;
    case 11: 
    {
        for(totm_i=array_length_1d(arr)-1; totm_i>=0; totm_i--)
        {
            if(arr[totm_i].position==8)
            {                
                arr[totm_i].targeted = 1
                for(totm_i=0; totm_i<array_length_1d(arr); totm_i+=1)
                    if(arr[totm_i].position==7 or arr[totm_i].position==6)                        
                        arr[totm_i].targeted = 1
                check = 1
                break;
            }else if(arr[totm_i].position==7)
            {                
                arr[totm_i].targeted = 1
                for(totm_i=0; totm_i<array_length_1d(arr); totm_i+=1)
                    if(arr[totm_i].position==6)                        
                        arr[totm_i].targeted = 1
                check = 1
                break;
            } else if(arr[totm_i].position==6)
            {                
                arr[totm_i].targeted = 1
                check = 1
                break;
            } else if(arr[totm_i].position==5)
            {                
                arr[totm_i].targeted = 1
                check = 1
                break;
            } 
        }
        
        if (check == 1)
            break;
            
        for(totm_i=array_length_1d(arr)-1; totm_i>=0; totm_i--)
        {   
            if(arr[totm_i].position==4)
            {                
                arr[totm_i].targeted = 1
                for(totm_i=0; totm_i<array_length_1d(arr); totm_i+=1)
                    if(arr[totm_i].position==3 or arr[totm_i].position==2)                        
                        arr[totm_i].targeted = 1
                break;
            }else if(arr[totm_i].position==3)
            {                
                arr[totm_i].targeted = 1
                for(totm_i=0; totm_i<array_length_1d(arr); totm_i+=1)
                    if(arr[totm_i].position==2)                        
                        arr[totm_i].targeted = 1
                break;
            } else if(arr[totm_i].position==2)
            {                
                arr[totm_i].targeted = 1
                break;
            } else if(arr[totm_i].position==1 )
            {                
                arr[totm_i].targeted = 1
                break;
            } 
        }  
    }break;
    case 12: 
    {
        for(totm_i=array_length_1d(arr)-1; totm_i>=0; totm_i--)
        {
            if(arr[totm_i].position==8)
            {                
                arr[totm_i].targeted = 1
                for(totm_i=0; totm_i<array_length_1d(arr); totm_i+=1)
                    if(arr[totm_i].position==7)                        
                        arr[totm_i].targeted = 1
                check = 1
                break;
            } else if(arr[totm_i].position==7)
            {                
                arr[totm_i].targeted = 1
                check = 1
                break;                
            } else if(arr[totm_i].position==6)
            {                
                arr[totm_i].targeted = 1
                check = 1
                break;
            } else if(arr[totm_i].position==5)
            {                
                arr[totm_i].targeted = 1
                check = 1
                break
            } 
        }
        
        if (check == 1)
            break;
            
        for(totm_i=array_length_1d(arr)-1; totm_i>=0; totm_i--)
        {
            if(arr[totm_i].position==4)
            {                
                arr[totm_i].targeted = 1
                for(totm_i=0; totm_i<array_length_1d(arr); totm_i+=1)
                    if(arr[totm_i].position==3)                        
                        arr[totm_i].targeted = 1
                break;
            } else if(arr[totm_i].position==3)
            {                
                arr[totm_i].targeted = 1
                break;
            } else if(arr[totm_i].position==2)
            {                
                arr[totm_i].targeted = 1
                break;
            } else if(arr[totm_i].position==1 )
            {                
                arr[totm_i].targeted = 1
                break;
            }
        }  
    }break;
}
 
