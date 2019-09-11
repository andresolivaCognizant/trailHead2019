public class PagingSortingController {
	@AuraEnabled
    public static List<Contact> getContacts() {
        List<Contact> contacts = 
                [SELECT Id, Name, Phone, Email,Account.Name FROM Contact];
        return contacts;
    }
}