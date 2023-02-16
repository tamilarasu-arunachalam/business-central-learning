page 50103 "Accounts Card"
{
    ApplicationArea = All;
    Caption = 'Accounts Card';
    PageType = Card;
    SourceTable = Accounts;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Account Name"; Rec."Account Name")
                {
                    ToolTip = 'Specifies the value of the Account Name field.';
                }
                field("Account Number"; Rec."Account Number")
                {
                    ToolTip = 'Specifies the value of the Account Number field.';
                }
            }
            group(Address)
            {
                field("Address 1"; Rec."Address 1")
                {
                    ToolTip = 'Specifies the value of the Address 1 field.';
                }
                field("Address 2"; Rec."Address 2")
                {
                    ToolTip = 'Specifies the value of the Address 2 field.';
                }
                field(City; Rec.City)
                {
                    ToolTip = 'Specifies the value of the City field.';
                }
                field("Contact Person"; Rec."Contact Person")
                {
                    ToolTip = 'Specifies the value of the Contact Person field.';
                }
                field(Country; Rec.Country)
                {
                    ToolTip = 'Specifies the value of the Country field.';
                }
                field(Email; Rec.Email)
                {
                    ToolTip = 'Specifies the value of the Email field.';
                }
                field("Mobile Number"; Rec."Mobile Number")
                {
                    ToolTip = 'Specifies the value of the Mobile Number field.';
                }

                field(State; Rec.State)
                {
                    ToolTip = 'Specifies the value of the State field.';
                }
                field("Zip Code"; Rec."Zip Code")
                {
                    ToolTip = 'Specifies the value of the Zip Code field.';
                }
            }
            group(Contact)
            {
                field("Mode Of Contact"; Rec."Mode Of Contact")
                {
                    ToolTip = 'Specifies the value of the Mode Of Contact field.';
                }
            }
        }
    }
}
