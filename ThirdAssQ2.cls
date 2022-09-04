public class ThirdAssQ2 {
	public static void main()
    {
        List<Account> accList = [Select Id, Name from Account where Id NOT IN ( Select AccountId from Opportunity)];
        
        //Opportunity op = [Select Name, Amount, CloseDate from Opportunity LIMIT 1];
        List<Opportunity> oppList = new List<Opportunity>();
        
        for(Account ac : accList)
        {
            Opportunity op = new Opportunity(Name = ac.Name+' First Opportunity', StageName = 'Prospecting', CloseDate = date.parse('01/03/2022'), accountId = ac.id);
            oppList.add(op);
            
        }
        
        insert oppList;
        
        
    }
}