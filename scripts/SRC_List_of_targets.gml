///SRC_List_of_targets()
t = 0

for (i=0; i<array_length_1d(Battle_progress.inst_id); i+=1)
{
    if(Battle_progress.inst_id[i].targeted==1)
    {
        targets[t]=Battle_progress.inst_id[i]
        t++
    }
}
return targets
