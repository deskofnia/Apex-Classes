public class AccountTriggerHandler {
	
    public static void handleBeforeDelete(List<Account> oldAccountList, Map<Id, Account> oldAccountMap)
    {
        Set<Id> accountIdsSet = oldAccountMap.keySet();
    	List<Opportunity> oppList = [Select Id, AccountId, Name, StageName 
                                 from Opportunity Where AccountId IN : accountIdsSet AND StageName != 'Closed Won' AND StageName != 'Closed Lost'];
    //Approach 1 using List
    /*for(Account acc: oldAccountList)
    {
        for(Opportunity opp : oppList)
        {
            if(acc.id == opp.AccountId)
            {
                acc.addError('Can not delete Account which have related opportunity');
            }
        }
    }
*/
    
    //Approach 2 using Map
    Map<Id, Opportunity> oppMap = new Map<id, Opportunity>();
    // Key -> AccountId , Value -> Opportunity
    
    for( Opportunity opp : oppList)
    {
        if( !oppMap.containsKey(opp.AccountId))
        {
            oppMap.put(opp.AccountId, opp);
        }
    }
    
    for( Account acc : oldAccountList)
    {
        if(oppMap.containsKey(acc.Id))
        {
            acc.addError('Can not delete Account which have related opportunity');
        }
    }
    }
}