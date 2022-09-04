public class Q2b {
	public static void main()
    {
		list<OpportunityContactRole> opp = [select Opportunity.name, Opportunity.Account.name, Contact.name from OpportunityContactRole where Opportunity.name LIKE '%A'];
        
        for(OpportunityContactRole op: opp)
        {
            system.debug('Account Name: ' + op.Opportunity.Account.name+' | '+'Opportunity: '+ op.Opportunity.name+' | '+'Contact :'+op.Contact.name);
           
        }
    }
}