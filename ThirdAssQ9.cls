public class ThirdAssQ9
{
	public static void main(string st)
    {
        integer i = Database.countQuery('Select count() from '+st);
        
        system.debug('Total number of records :'+i);
    }
}