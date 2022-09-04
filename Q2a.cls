public class Q2a {
	public static void main()
    {
        list<Account> accList = [select name, (select name from opportunities),(select name from contacts) from Account where name LIKE 'B%'];
        
        for(Account a: accList)
		{
        
            System.debug('Account Name : '+a.name);
            
            List<Opportunity> oplist = a.opportunities;
            
            for(opportunity o: oplist)
            {
          		System.debug('Opportunity : '+o.name);
            }
            
            List<Contact> conlist = a.contacts;
            
            for(contact o: conlist)
            {
          		System.debug('Contact : '+o.name);
            }
        }
    }
}