public class ThirdAssQ6
{
	public static void main()
    {
        //string MyExtID__c;
        
        Contact c = new Contact(firstName = 'Pro', lastName = 'Dot');
        
        Account accRef = new Account(MyExtID__c='SAP111111');                
       	c.Account = accRef;
        
        Account a = new Account(Name='Furious Flower', MyExtID__c='SAP111111');
        
        
        Database.SaveResult[] results = Database.insert(new SObject[] { a, c });
    }
}