public class ThirdAssQ8
{
	public static void main()
    {
        List<Account> delList = new List<Account>();
        
       
        List<Account> accList=[Select id,name, (Select Id,name from Opportunities) from Account];
        
        for(Account ac:accList)
        {
         	//List<Opportunity> oppList = ac.opportunities;
            
            if(ac.Opportunities.size()>2)
            {
                //System.debug(ac.name + '  |  ' + oppList);
                delList.add(ac);
                
            }
        }
        /*
         * 
        Map<Id, Account> accts = new Map<Id, Account>([select id, (Select Id from Opportunities) from Account ]);
        for(Account acc : accList){
            if(accts.get(acc.id).Opportunities.size()>2)
            {
                delList.add(acc);
            }
        }
*/
        
        //system.debug(delList);
        delete delList;
    }
}