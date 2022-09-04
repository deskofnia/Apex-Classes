public class Q3 {
    public static void main()
    {
        List<List<sObject>> results = [find '*Test*' Returning Task(WhoId), Lead(name), Opportunity( name where CloseDate = THIS_FISCAL_YEAR), Account(name where OwnerId =: UserInfo.getUserId())];
        
        List<Task> task1 = (List<Task>)results[0];
        List<Lead> lead1 = (List<Lead>)results[1];
        List<Opportunity> opp = (List<Opportunity>)results[2];
        List<Account> accounts = (List<Account>)results[3];
		
        for(Task t: task1)
        {
            system.debug('Task Id: '+t.WhoId);
        }
        
        for(Lead l: lead1)
        {
            system.debug('Lead: '+l.name);
        }
        
        for(Opportunity o: opp)
        {
            system.debug('Opportunity: '+o.name);
        }
		
        for(Account a: accounts)
        {
            system.debug('Account Name: '+a.name);
        }
    }

}