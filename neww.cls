public class neww 
{
	public static void main()
    { 
		list<list<String>> llist = new list<list<String>>{
        		new list<String>{'a;b;a;v;c', 'x;x;y;c;q'},
                new list<String>{'m;b;h;j;m', 'u;k;j;u'}};
                    
        list<list<string>> llist1 = new list<list<string>>();
       // String[][] List1 = new String[2][2];
        
        set<string> s = new set<string>();
        string str;
        
        
        for(integer i=0; i<2; i++)
        {
            List<string> columnList = new List<string>();
            
            for(integer j=0; j<2; j++)
            {
                List<String> parts = llist[i][j].split(';');
                s.addAll(parts);
                
                List<String> pt = new list<string>(s);
				pt.sort();
                
                str = string.join(pt, ';');
                columnList.add(str);
                
                s.clear();
                pt.clear();
                
                //str = str.remove(str);
                //str = str.replaceAll('[a-zA-Z]', '');
               
            }
            llist1.add(columnList);
        }

		system.debug(llist1);
      
         
    }
}