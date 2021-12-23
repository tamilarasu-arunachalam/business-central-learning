page 50106 "Student Details Card"
{

    Caption = 'Student Details Card';
    PageType = Card;
    SourceTable = "Student Details";
    layout
    {
        area(content)
        {
            group("Personal Details")
            {
                field("Student No"; Rec."Student No")
                {
                    ToolTip = 'Specifies the value of the Student No field';
                    ApplicationArea = All;
                }
                field("Student Name"; Rec."Student Name")
                {
                    ToolTip = 'Specifies the value of the Student Name field';
                    ApplicationArea = All;
                }
                field("Student Place"; Rec."Student Place")
                {
                    ToolTip = 'Specifies the value of the Student Place field';
                    ApplicationArea = All;
                }
                field(DOB; Rec.DOB)
                {
                    ToolTip = 'Specifies the value of the DOB field';
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
                field(Qualification; Rec.Qualification)
                {
                    ToolTip = 'Specifies the value of the Qualification field';
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
