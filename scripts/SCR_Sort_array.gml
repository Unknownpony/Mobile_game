///SCR_Sort_array(array)

ar = argument0

//Buble sortation of object by thier initiative (descending) 
for ( sa_i = (array_length_1d(ar)- 1); sa_i >= 0; sa_i--)     
{
   for ( sa_j = 1; sa_j <= sa_i; sa_j++)            
   {
      if(ar[sa_j-1].in < ar[sa_j].in)
      {
            temp = ar[sa_j-1];
            ar[sa_j-1] = ar[sa_j];
            ar[sa_j] = temp;
      }
      else  if(ar[sa_j-1].in == ar[sa_j].in)
      {
            if(random(10)>5)            //if objects have the same initiative then there is 50% chance for swap or not
            {
                temp = ar[sa_j-1];
                ar[sa_j-1] = ar[sa_j];
                ar[sa_j] = temp;
            }                 
      }
   }
}

return ar 
