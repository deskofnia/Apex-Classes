public class MapClass
{
	public static void main()
    {
        Map<Integer, String> mp = new Map<Integer, String>();
        mp.put(1, 'Jai');
        mp.put(2, 'Shree');
        mp.put(3, 'Ram');
        
        system.debug(mp);
        
        Map<Integer, String> mp1 = new Map<Integer, String>{1 => 'Hare', 2 => 'Krishna'};
            
        system.debug(mp1);  
    }
}