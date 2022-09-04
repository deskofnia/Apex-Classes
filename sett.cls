public class sett {
    public static void main()
    {
        set<integer> s1 = new set<integer>{2,3,4,5};
        set<string> s2 = new set<string>();
            
        //system.debug(s1);
        
        s1.add(6);
        s1.add(7);
        
        system.debug(s1);
        
       	list<string> st = new list<string>{'get', 'set', 'ready', 'to', 'go'};
        
        s2.addAll(st);
        st.remove(3);
        st.add('ram');
        
        system.debug(st);
        
        set<String> myString = new set<String>{'a', 'b', 'c'};
        myString.remove('a');
		s2.addAll(myString);
            
        system.debug(s2);
    }

}