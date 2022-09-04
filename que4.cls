public class que4
{
	public static void main()
    {
        list<Integer> llist = new list<Integer>{149, 1, 3, 248, 2, 8, 70, 5};
        list<Integer> answer = new list<Integer>();
        
       	Integer i;
        Integer size = llist.size();
      	Integer right =  llist[size - 1];
  
      
        for (i = size-2; i >= 0; i--)
        {
            if (right < llist[i]) 
            {           
                right = llist[i];
                answer.add(llist[i]);
            }
        }
        answer.add(llist[size - 1]);
        system.debug(answer);
    }
}