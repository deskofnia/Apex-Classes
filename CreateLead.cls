@RestResource(urlMapping='/createLead')
global class CreateLead
{
	@HttpPost
    global static string doPost()
    {
        string lName, fName, comp, fieldName, fieldValue;
        
        RestRequest req = RestContext.request;
       	RestResponse res = RestContext.response;
        
        string jsonBody = req.requestBody.toString();
        
        JSONParser parser = JSON.createParser(jsonBody);
        
        while(parser.nextToken()!=null)
        {
            if(parser.getCurrentToken()!=JSONToken.END_OBJECT)
            {
                fieldName = parser.getCurrentName();
                fieldValue = parser.getText();
                
                if(fieldName == 'FirstName')
                {
                    fName = fieldValue;
                }
                else if(fieldName == 'LastName')
                {
                    lName = fieldValue;
                }
                else if(fieldName == 'Company')
                {
                    comp = fieldValue;
                }
            }
        }
        lead l = new Lead(firstName = fName, lastName = lName, company=comp);
        
        insert l;
        
        return l.id;
        
    }
}