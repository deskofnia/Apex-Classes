public class Q4 {
    
    public static void main()
    {
        List<Account> acc = [select id, name from Account];
        
        List<Opportunity> oppList = new List<Opportunity>([select AccountId, Name from opportunity]);
        List<Contact> contList = new List<Contact>([select AccountId, LastName from contact]);
        
       
        map<Id, list<opportunity>>oppMap = new map<id, list<opportunity>>();
        map<Id, list<contact>>contactMap = new map<id, list<contact>>();
        
        for(Contact c : contList)
        {
            if(contactMap.get(c.AccountId) == NULL)
            {
                contactMap.put(c.AccountId, new List<Contact>());
            }
            contactMap.get(c.AccountId).add(c);
        }
        
        for(Opportunity op : oppList)
        {
            if(oppMap.get(op.AccountId) == NULL)
            {
                oppMap.put(op.AccountId, new List<Opportunity>());
            }
            oppMap.get(op.AccountId).add(op);
        }
        
        
        system.debug(oppMap);
        system.debug(contactMap);
        
     }

}