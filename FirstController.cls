public class FirstController
{
	public String accName;
    Public Integer accEmployees;
    public String conName, conEmail;
    public String oppName;
    public Decimal oppAmount;
    
    Public FirstController()
    {
        
    }
    
    public void saveTheRecord()
    {
        Account a = new Account(Name = accName, NumberOfEmployees = accEmployees);
        insert a;
        
        //Contact c = new Contact(lastName = conName, email = conEmail, AccountId=a.id);
        //Opportunity o = new Opportunity(Name = oppName, Amount = oppAmount, AccountId = a.Id);
        
        //insert c;
        //insert o;
    }
    
    
    public void setaccName(String a)
    {
        accName = a;
    }
    public string getaccname()
    {
        return accName;
    }
}