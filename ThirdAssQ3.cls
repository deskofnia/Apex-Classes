public class ThirdAssQ3 {
	public static void main()
    {
        Account a = new Account(Name='Disney');
        
        insert a;
        
        Contact c = new Contact(firstName = 'Max', lastName = 'Brown', accountId = a.Id);
        Contact c1 = new Contact(firstName = 'Jeff', lastName = 'Brown', accountId = a.Id);
        
        List<Contact> conList = new List<Contact>();
        
        conList.add(c);
        conList.add(c1);
        
        //insert conList;
        
        
        //List<Contact> contList = [select firstName, lastName from Contact where CreatedDate = YESTERDAY];
        
        //delete contList;
        
        //List<Contact> delList = [select firstName, lastName from Contact where isDeleted=true ALL ROWS];

        //undelete delList;
        
        List<Account> accList = [select Name from Account where CreatedDate = YESTERDAY OR CreatedDate = TODAY];
        
        delete accList;
        
        List<Account> delList = [select Name from Account where CreatedDate = TODAY AND isDeleted=true ALL ROWS ];
        
        //undelete delList;
        
    }
}