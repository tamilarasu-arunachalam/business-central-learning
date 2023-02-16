page 50101 "Accounts API"
{
    APIGroup = 'tamil';
    APIPublisher = 'tamil';
    APIVersion = 'v1.0';
    Caption = 'accountsAPI';
    DelayedInsert = true;
    EntityName = 'accounts';
    EntitySetName = 'accounts';
    PageType = API;
    SourceTable = Accounts;
    ODataKeyFields = SystemId;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(accountName; Rec."Account Name")
                {
                    Caption = 'Account Name';
                }
                field(accountNumber; Rec."Account Number")
                {
                    Caption = 'Account Number';
                }
                field(address1; Rec."Address 1")
                {
                    Caption = 'Address 1';
                }
                field(address2; Rec."Address 2")
                {
                    Caption = 'Address 2';
                }
                field(city; Rec.City)
                {
                    Caption = 'City';
                }
                field(contactPerson; Rec."Contact Person")
                {
                    Caption = 'Contact Person';
                }
                field(country; Rec.Country)
                {
                    Caption = 'Country';
                }
                field(email; Rec.Email)
                {
                    Caption = 'Email';
                }
                field(mobileNumber; Rec."Mobile Number")
                {
                    Caption = 'Mobile Number';
                }
                field(modeOfContact; Rec."Mode Of Contact")
                {
                    Caption = 'Mode Of Contact';
                }
                field(state; Rec.State)
                {
                    Caption = 'State';
                }
                field(systemCreatedAt; Rec.SystemCreatedAt)
                {
                    Caption = 'SystemCreatedAt';
                }
                field(systemCreatedBy; Rec.SystemCreatedBy)
                {
                    Caption = 'SystemCreatedBy';
                }
                field(systemId; Rec.SystemId)
                {
                    Caption = 'SystemId';
                }
                field(systemModifiedAt; Rec.SystemModifiedAt)
                {
                    Caption = 'SystemModifiedAt';
                }
                field(systemModifiedBy; Rec.SystemModifiedBy)
                {
                    Caption = 'SystemModifiedBy';
                }
                field(zipCode; Rec."Zip Code")
                {
                    Caption = 'Zip Code';
                }
            }
        }
    }
}
