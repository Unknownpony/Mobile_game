///SCR_Shop_release()

//This script check the fix position of the portret of units
//It swap x and y position of those object
if(select==1)
{
    x=temp_x
    y=temp_y    
    SCR_Check_Position(40,137,100,195,40,100,temp_x,temp_y)    
    SCR_Check_Position(40,137,220,315,40,220,temp_x,temp_y)
    SCR_Check_Position(40,137,340,435,40,340,temp_x,temp_y)
    SCR_Check_Position(40,137,460,555,40,460,temp_x,temp_y)
    SCR_Check_Position(160,257,100,195,160,100,temp_x,temp_y)    
    SCR_Check_Position(160,257,220,315,160,220,temp_x,temp_y)
    SCR_Check_Position(160,257,340,435,160,340,temp_x,temp_y)
    SCR_Check_Position(160,257,460,555,160,460,temp_x,temp_y)
    SCR_Check_Position(1000,1097,100,195,1000,100,temp_x,temp_y)    
    SCR_Check_Position(1000,1097,220,315,1000,220,temp_x,temp_y)
    SCR_Check_Position(1000,1097,340,435,1000,340,temp_x,temp_y)
    SCR_Check_Position(1000,1097,460,555,1000,460,temp_x,temp_y)
    select=0
    global.selected=0
}
