public class ThirdAssQ7
{
	Public static void main()

    {
        List<Account> accList = new List<Account>();
        List<Opportunity> oppList = new List<Opportunity>();
        List<Contact> conList = new List<Contact>();
        
        List<Id> listOfIds = new List<Id>();
        
        for(integer i = 0; i < 3; i++)
        
        {
        
            accList.add(new Account(name='Test Account '+i));
            
            accList.add(new Account());
        
        }
        
        Database.saveResult[] saveList = Database.insert(accList, false);
        
        for(Database.saveResult s: saveList)
        
        {
        
            If (s.isSuccess())
            {
                System.debug('I was successful = '+s.getID());		//display list of records
                listOfIds.add(s.getId());
                
            }        
        }
        
        List<Account> succfulAccList = [Select Id, name from Account where Id IN : listOfIds];
        
        for(Account ac : accList)
        {
            Opportunity op = new Opportunity(Name = ac.Name+' Opportunity', StageName = 'Prospecting', CloseDate = date.today(), accountId = ac.id);
            oppList.add(op);
            Contact con = new Contact(lastName = ac.Name+' Contact', accountId = ac.id);
            conList.add(con);
            
        }
        

	}
}