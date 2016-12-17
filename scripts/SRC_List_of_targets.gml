///SRC_List_of_targets()
t = 0

//return array of all targeted player units to AI
for (lot_i=0; lot_i<array_length_1d(Battle_progress.inst_id); lot_i+=1)
{
    if(Battle_progress.inst_id[lot_i].targeted==1)
    {
        targets[t]=Battle_progress.inst_id[lot_i]
        t++
    }
}
return targets
