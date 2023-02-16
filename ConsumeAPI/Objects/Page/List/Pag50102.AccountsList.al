page 50102 "Accounts List"
{
    ApplicationArea = All;
    Caption = 'Accounts List';
    PageType = List;
    SourceTable = Accounts;
    UsageCategory = Lists;
    CardPageId = "Accounts Card";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Account Name"; Rec."Account Name")
                {
                    ToolTip = 'Specifies the value of the Account Name field.';
                    ApplicationArea = all;
                }
                field("Account Number"; Rec."Account Number")
                {
                    ToolTip = 'Specifies the value of the Account Number field.';
                    ApplicationArea = all;
                }
                field("Address 1"; Rec."Address 1")
                {
                    ToolTip = 'Specifies the value of the Address 1 field.';
                    ApplicationArea = all;
                }
                field("Address 2"; Rec."Address 2")
                {
                    ToolTip = 'Specifies the value of the Address 2 field.';
                    ApplicationArea = all;
                }
                field(City; Rec.City)
                {
                    ToolTip = 'Specifies the value of the City field.';
                    ApplicationArea = all;
                }
                field("Contact Person"; Rec."Contact Person")
                {
                    ToolTip = 'Specifies the value of the Contact Person field.';
                    ApplicationArea = all;
                }
                field(Country; Rec.Country)
                {
                    ToolTip = 'Specifies the value of the Country field.';
                    ApplicationArea = all;
                }
                field(Email; Rec.Email)
                {
                    ToolTip = 'Specifies the value of the Email field.';
                    ApplicationArea = all;
                }
                field("Mobile Number"; Rec."Mobile Number")
                {
                    ToolTip = 'Specifies the value of the Mobile Number field.';
                    ApplicationArea = all;
                }
                field("Mode Of Contact"; Rec."Mode Of Contact")
                {
                    ToolTip = 'Specifies the value of the Mode Of Contact field.';
                    ApplicationArea = all;
                }
                field(State; Rec.State)
                {
                    ToolTip = 'Specifies the value of the State field.';
                    ApplicationArea = all;
                }
                field("Zip Code"; Rec."Zip Code")
                {
                    ToolTip = 'Specifies the value of the Zip Code field.';
                    ApplicationArea = all;
                }
            }
        }
    }
}
