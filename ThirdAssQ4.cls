public class ThirdAssQ4
{
	public static void main()
    {
        //Contact a = [select Name from Contact Where ID = '0035i00000Ag4AAAAZ'];
        
        Contact newCon = new Contact(ID = '0035i00000Ag4AAAAZ', Title='Done', Description='Completed Yesterday', Department='Engineering');
        
        upsert newCon;
        
    }
}