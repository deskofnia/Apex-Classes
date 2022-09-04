public class Soql4 
{
	public static void main()
    {
        List<String> nameList = new List<String>{'Nipun', 'Deepak', 'Khushi'};
        List<Contact> conList2 = [Select firstName, lastName, email from Contact where FirstName IN :nameList];
        List<Contact> conList3 = [Select firstName, lastName, email from Contact where name NOT IN :nameList];
        //system.debug(conList2);
        //system.debug(conList3);
        
        List<Account> accList1 = [Select Name from Account where Name like 'Genepoint%'];
        List<Account> accList2 = [Select Name from Account where Name like '%oil%'];
        List<Account> accList3 = [Select Name from Account where Name like '_Force'];


        
        //system.debug(accList1);
        //system.debug(accList2);
        //system.debug(accList3);
        
       	List<AggregateResult> agrOpp1 = [Select StageName from Opportunity GROUP BY StageName];
        system.debug(agrOpp1);

        
        
    }
}