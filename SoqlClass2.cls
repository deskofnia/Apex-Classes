public class SoqlClass2
{
	public static void main(String str)
    {	//static value
        //List<Contact> conList = [Select firstName, lastName,
                                // email from Contact where firstName = 'Nipun'];
        //dynamic value
        List<Contact> conList1 = [Select firstName, lastName,
                                 email from Contact where firstName = :str];
                                 //
        system.debug(conList1);
        
        
    }
}