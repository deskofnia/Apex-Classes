public class FirstClass
{
	public static void myMethod()
    {
        List<String> str = new List<String>{'Deven', 'Shubham',
            'Rahul', 'Chandu', 'Ratan'};
        System.debug(str);        
        System.debug(str.size());
        System.debug(str.get(2));
        str.remove(1);
        System.debug(str);
    }
}