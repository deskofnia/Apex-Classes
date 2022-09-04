public class que3
{
	public static void main()
    {
        list<Integer> l1 = new list<Integer>{1,4,7,8};
        list<Integer> l2 = new list<Integer>{2,5,3,6,4,8,9};
        list<Integer> l3 = new list<Integer>{9,5,2,7,4};
            
        set<Integer> st = new set<Integer>(l1);
        list<Integer> llist = new list<Integer>();
       	Integer count=0;
        for(integer i: l2)
        {
            if(st.contains(i))
            {
                llist.add(i);
            }
        }
        
        st.clear();
        st.addAll(llist);
        llist.clear();
        
        for(Integer j: l3)
        {
            if(st.contains(j))
            {
                llist.add(j);
            }
        }
        
        system.debug(llist);
                
    }
}