///SCR_Target_one_enemy_melee(position, arr units)


pos = argument0
arr = argument1
check = 0
switch (pos)
{
    case 13: 
    {
        for(i=array_length_1d(arr)-1; i>=0; i--)
        {
            if(arr[i].position==9 or arr[i].position==10 or arr[i].position==11 or arr[i].position==12)
                check = 1    
        }
        
        if (check == 1)
            break;
            
        for(i=0; i<array_length_1d(arr); i+=1)
        {
            if(arr[i].position==5)
            {
                arr[i].targeted = 1
                check = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==6)
                    {
                        arr[i].targeted = 1
                        check = 1
                    }
                break;
            } else if(arr[i].position==6)
            {                
                arr[i].targeted = 1
                check = 1
                break;
            } else if(arr[i].position==7)
            {                
                arr[i].targeted = 1
                check = 1
                break;
            } else if(arr[i].position==8)
            {
                arr[i].targeted = 1
                check = 1
                break
            } 
        }   
        
        if (check == 1)
            break;
        
        for(i=0; i<array_length_1d(arr); i+=1)
        {
            if(arr[i].position==1 )
            {                
                arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==2)                        
                    arr[i].targeted = 1
                break;
            } else if(arr[i].position==2)
            {                
                arr[i].targeted = 1
                break;
            } else if(arr[i].position==3)
            {                
                arr[i].targeted = 1
                break;
            } else if(arr[i].position==4)
            {                
                arr[i].targeted = 1
                break;
            }
        }             
    }break;
    case 14: 
    {
        for(i=array_length_1d(arr)-1; i>=0; i--)
        {
            if(arr[i].position==9 or arr[i].position==10 or arr[i].position==11 or arr[i].position==12)
                check = 1    
        }
        
        if (check == 1)
            break;
        
        for(i=0; i<array_length_1d(arr); i+=1)
        {
            if(arr[i].position==5)
            {                
                arr[i].targeted = 1
                check = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==6 or arr[i].position==7)    
                    {                    
                        arr[i].targeted = 1
                        check = 1
                    }
                break;
            } else if(arr[i].position==6)
            {                
                arr[i].targeted = 1
                check = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==7)      
                    {                  
                        arr[i].targeted = 1
                        check = 1
                    }
                break;
            } else if(arr[i].position==7)
            {                
                arr[i].targeted = 1
                check = 1
                break;
            } else if(arr[i].position==8)
            {                
                arr[i].targeted = 1
                check = 1
                break;
            } 
        }
        
        if (check == 1)
            break;
        
        for(i=0; i<array_length_1d(arr); i+=1)
        {
            if(arr[i].position==1 )
            {                
                arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==2 or arr[i].position==3)                        
                        arr[i].targeted = 1
                break;
            } else if(arr[i].position==2)
            {                
                arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==3)                        
                        arr[i].targeted = 1
                break;
            } else if(arr[i].position==3)
            {                
                arr[i].targeted = 1
                break;
            } else if(arr[i].position==4)
            {                
                arr[i].targeted = 1
                break;
            }
        }  
    }break;
    case 15: 
    {
        for(i=array_length_1d(arr)-1; i>=0; i--)
        {
            if(arr[i].position==9 or arr[i].position==10 or arr[i].position==11 or arr[i].position==12)
                check = 1    
        }
        
        if (check == 1)
            break;
        
        for(i=array_length_1d(arr)-1; i>=0; i--)
        {
            if(arr[i].position==8)
            {                
                arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==7 or arr[i].position==6)
                        arr[i].targeted = 1
                check = 1
                break;
            }else if(arr[i].position==7)
            {                
                arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==6)                        
                        arr[i].targeted = 1
                check = 1
                break;
            } else if(arr[i].position==6)
            {                
                arr[i].targeted = 1
                check = 1
                break;
            } else if(arr[i].position==5)
            {                
                arr[i].targeted = 1
                check = 1
                break;
            } 
        }
        
        if (check == 1)
            break;
            
        for(i=array_length_1d(arr)-1; i>=0; i--)
        {   
            if(arr[i].position==4)
            {                
                arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==3 or arr[i].position==2)                        
                        arr[i].targeted = 1
                break;
            }else if(arr[i].position==3)
            {                
                arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==2)                        
                        arr[i].targeted = 1
                break;
            } else if(arr[i].position==2)
            {                
                arr[i].targeted = 1
                break;
            } else if(arr[i].position==1 )
            {                
                arr[i].targeted = 1
                break;
            } 
        }   
    }break;
    case 16: 
    {
        for(i=array_length_1d(arr)-1; i>=0; i--)
        {
            if(arr[i].position==9 or arr[i].position==10 or arr[i].position==11 or arr[i].position==12)
                check = 1    
        }
        
        for(i=array_length_1d(arr)-1; i>=0; i--)
        {
            if(arr[i].position==8)
            {                
                arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==7)                        
                        arr[i].targeted = 1
                check = 1
                break;
            } else if(arr[i].position==7)
            {                
                arr[i].targeted = 1
                check = 1
                break;                
            } else if(arr[i].position==6)
            {                
                arr[i].targeted = 1
                check = 1
                break;
            } else if(arr[i].position==5)
            {                
                arr[i].targeted = 1
                check = 1
                break
            } 
        }
        
        if (check == 1)
            break;
            
        for(i=array_length_1d(arr)-1; i>=0; i--)
        {
            if(arr[i].position==4)
            {                
                arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==3)                        
                        arr[i].targeted = 1
                break;
            } else if(arr[i].position==3)
            {                
                arr[i].targeted = 1
                break;
            } else if(arr[i].position==2)
            {                
                arr[i].targeted = 1
                break;
            } else if(arr[i].position==1 )
            {                
                arr[i].targeted = 1
                break;
            }
        }    
    }break;
    case 9: 
    {          
        for(i=0; i<array_length_1d(arr); i+=1)
        {
            if(arr[i].position==5)
            {
                arr[i].targeted = 1
                check = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==6)
                    {
                        arr[i].targeted = 1
                        check = 1
                    }
                break;
            } else if(arr[i].position==6)
            {                
                arr[i].targeted = 1
                check = 1
                break;
            } else if(arr[i].position==7)
            {                
                arr[i].targeted = 1
                check = 1
                break;
            } else if(arr[i].position==8)
            {
                arr[i].targeted = 1
                check = 1
                break
            } 
        }   
        
        if (check == 1)
            break;
        
        for(i=0; i<array_length_1d(arr); i+=1)
        {
            if(arr[i].position==1 )
            {                
                arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==2)                        
                    arr[i].targeted = 1
                break;
            } else if(arr[i].position==2)
            {                
                arr[i].targeted = 1
                break;
            } else if(arr[i].position==3)
            {                
                arr[i].targeted = 1
                break;
            } else if(arr[i].position==4)
            {                
                arr[i].targeted = 1
                break;
            }
        }             
    }break; 
    case 10: 
    {        
        for(i=0; i<array_length_1d(arr); i+=1)
        {
            if(arr[i].position==5)
            {                
                arr[i].targeted = 1
                check = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==6 or arr[i].position==7)    
                    {                    
                        arr[i].targeted = 1
                        check = 1
                    }
                break;
            } else if(arr[i].position==6)
            {                
                arr[i].targeted = 1
                check = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==7)      
                    {                  
                        arr[i].targeted = 1
                        check = 1
                    }
                break;
            } else if(arr[i].position==7)
            {                
                arr[i].targeted = 1
                check = 1
                break;
            } else if(arr[i].position==8)
            {                
                arr[i].targeted = 1
                check = 1
                break;
            } 
        }
        
        if (check == 1)
            break;
        
        for(i=0; i<array_length_1d(arr); i+=1)
        {
            if(arr[i].position==1 )
            {                
                arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==2 or arr[i].position==3)                        
                        arr[i].targeted = 1
                break;
            } else if(arr[i].position==2)
            {                
                arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==3)                        
                        arr[i].targeted = 1
                break;
            } else if(arr[i].position==3)
            {                
                arr[i].targeted = 1
                break;
            } else if(arr[i].position==4)
            {                
                arr[i].targeted = 1
                break;
            }
        }  
    }break;
    case 11: 
    {
        for(i=array_length_1d(arr)-1; i>=0; i--)
        {
            if(arr[i].position==8)
            {                
                arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==7 or arr[i].position==6)                        
                        arr[i].targeted = 1
                check = 1
                break;
            }else if(arr[i].position==7)
            {                
                arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==6)                        
                        arr[i].targeted = 1
                check = 1
                break;
            } else if(arr[i].position==6)
            {                
                arr[i].targeted = 1
                check = 1
                break;
            } else if(arr[i].position==5)
            {                
                arr[i].targeted = 1
                check = 1
                break;
            } 
        }
        
        if (check == 1)
            break;
            
        for(i=array_length_1d(arr)-1; i>=0; i--)
        {   
            if(arr[i].position==4)
            {                
                arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==3 or arr[i].position==2)                        
                        arr[i].targeted = 1
                break;
            }else if(arr[i].position==3)
            {                
                arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==2)                        
                        arr[i].targeted = 1
                break;
            } else if(arr[i].position==2)
            {                
                arr[i].targeted = 1
                break;
            } else if(arr[i].position==1 )
            {                
                arr[i].targeted = 1
                break;
            } 
        }  
    }break;
    case 12: 
    {
        for(i=array_length_1d(arr)-1; i>=0; i--)
        {
            if(arr[i].position==8)
            {                
                arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==7)                        
                        arr[i].targeted = 1
                check = 1
                break;
            } else if(arr[i].position==7)
            {                
                arr[i].targeted = 1
                check = 1
                break;                
            } else if(arr[i].position==6)
            {                
                arr[i].targeted = 1
                check = 1
                break;
            } else if(arr[i].position==5)
            {                
                arr[i].targeted = 1
                check = 1
                break
            } 
        }
        
        if (check == 1)
            break;
            
        for(i=array_length_1d(arr)-1; i>=0; i--)
        {
            if(arr[i].position==4)
            {                
                arr[i].targeted = 1
                for(i=0; i<array_length_1d(arr); i+=1)
                    if(arr[i].position==3)                        
                        arr[i].targeted = 1
                break;
            } else if(arr[i].position==3)
            {                
                arr[i].targeted = 1
                break;
            } else if(arr[i].position==2)
            {                
                arr[i].targeted = 1
                break;
            } else if(arr[i].position==1 )
            {                
                arr[i].targeted = 1
                break;
            }
        }  
    }break;
}
 
