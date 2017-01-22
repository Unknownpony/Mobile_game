///SCR_Clean_status(arr obj)

clean_units = argument0

for(cs_i=0; cs_i<array_length_1d(clean_units); cs_i+=1)
{
     //buff
    switch (status_units[cs_i].buff)
    {
        //speed
        case 1: 
        {
            status_units[cs_i].in -= 10;
            status_units[cs_i].buff = 0; 
        } break;
        //block
        case 2: 
        {
            status_units[cs_i].ar -= 10; 
            status_units[cs_i].mr -= 10;
            status_units[cs_i].buff = 0;
        } break;
    }
    
    //debuff
    switch (status_units[cs_i].debuff)
    {
        //poison
        case 1: 
        {
            status_units[cs_i].ar *= 2; 
            status_units[cs_i].debuff = 0;
        } break;
        //freeze
        case 2: 
        {
            status_units[cs_i].in *= 2;
            status_units[cs_i].debuff = 0;
        } break;
    }
    status_units[cs_i].effect = 0
    status_units[cs_i].def = 0
    status_units[cs_i].type_of_attack = 0
}
