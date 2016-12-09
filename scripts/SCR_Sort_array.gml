///SCR_Sort_array(array)

ar = argument0

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
                if(random(10)>5)
                {
                    temp = ar[j-1];
                    ar[j-1] = ar[j];
                    ar[j] = temp;
                }                 
            }

   }
}

return ar 
