///SCR_Sort_array(array)

ar = argument0

//Buble sortation of object by thier initiative (descending) 
for ( i = (array_length_1d(ar)- 1); i >= 0; i--)     
{
   for ( j = 1; j <= i; j++)            
   {
      if(ar[j-1].in < ar[j].in)
      {
            temp = ar[j-1];
            ar[j-1] = ar[j];
            ar[j] = temp;
      }
      else  if(ar[j-1].in == ar[j].in)
      {
            if(random(10)>5)            //if objects have the same initiative then there is 50% chance for swap or not
            {
                temp = ar[j-1];
                ar[j-1] = ar[j];
                ar[j] = temp;
            }                 
      }
   }
}

return ar 
