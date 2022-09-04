public class datatableWithRows {
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContactList(Id lwcRecordId)
    {
        List<Contact> contactList = [Select Id, Name, Phone, AccountId from Contact where AccountId =: lwcRecordId];
        
        return contactList;
    }

}