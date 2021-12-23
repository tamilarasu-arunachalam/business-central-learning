page 50107 "Student Details All"
{
    Caption = 'Student Details All';
    PageType = List;
    SourceTable = "Student Details All";
    CardPageId = "Student Details Card";
    UsageCategory = Lists;
    layout
    {
        area(content)
        {
            repeater(General)
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
