public class Soqlclass
{
	public static void main()
    {
        list<Account> accList = [select Name, NumberOfEmployees from Account];
        
        for(Integer a = 0; a<accList.size(); a++)
        {
            system.debug(accList[a].numberOfEmployees);
        }
        
        for(Account a:accList)
        {
            system.debug('Account Name: ' + a.name+ ' Number of Employees '+a.numberOfEmployees);
        }
    }
}