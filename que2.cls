public class que2
{
	public static void main()
    {
        list<Integer>llist = new list<Integer>{1,2,3,4,5,6,7,8,9};
        list<Integer> llist1 = new Integer[9];
        list<Integer> llist2 = new Integer[9];
		
        Integer size = llist.size();
        //right shift by 5			(5, 6, 7, 8, 9, 1, 2, 3, 4)
        for(Integer i=0, j=0; i<size; i++)
        {
          	if(i+5 < size)
            {
                llist1[i+5] = llist[i];
            }
            else
            {
				llist1[j++] = llist[i];                
            }
        }
   
        
        //left shift by 7 				(8, 9, 1, 2, 3, 4, 5, 6, 7)
    	for(Integer i=0, j=0; i<size; i++)
        {
            if(i+size-7 < size )
            {
                llist2[i+size-7] = llist[i];
            }
            else
            {
				llist2[j++] = llist[i];                
            }
        }
  
        
        system.debug(llist1);
        system.debug(llist2);
        
    }
}