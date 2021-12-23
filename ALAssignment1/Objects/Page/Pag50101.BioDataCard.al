page 50101 "Bio Data Card"
{

    Caption = 'Bio Data';
    PageType = Card;
    SourceTable = Person;

    layout
    {
        area(content)
        {
            group("Personal Details")
            {
                field("Person Id"; Rec."Person Id")
                {
                    ToolTip = 'Specifies the value of the Person Id field';
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field';
                    ApplicationArea = All;
                }
                field(DOB; Rec.DOB)
                {
                    ToolTip = 'Specifies the value of the DOB field';
                    ApplicationArea = All;
                }
                field(Qualification; Rec.Qualification)
                {
                    ToolTip = 'Specifies the value of the Qualification field';
                    ApplicationArea = All;
                }
            }
            group("Contact Details")
            {
                field(Email; Rec.Email)
                {
                    ToolTip = 'Specifies the value of the Email field';
                    ApplicationArea = All;
                }
                field("Mobile Number"; Rec."Mobile Number")
                {
                    ToolTip = 'Specifies the value of the Mobile Number field';
                    ApplicationArea = All;
                }
                field(Place; Rec.Place)
                {
                    ToolTip = 'Specifies the value of the Place field';
                    ApplicationArea = All;
                }
                field(District; Rec.District)
                {
                    ToolTip = 'Specifies the value of the District field';
                    ApplicationArea = All;
                }
                field(State; Rec.State)
                {
                    ToolTip = 'Specifies the value of the State field';
                    ApplicationArea = All;
                }
                field(Country; Rec.Country)
                {
                    ToolTip = 'Specifies the value of the Country field';
                    ApplicationArea = All;
                }
            }
        }
    }
    
}
