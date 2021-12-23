page 50108 Sales
{

    ApplicationArea = All;
    Caption = 'Sales';
    PageType = List;
    SourceTable = Sales;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Amount; Rec.Amount)
                {
                    ToolTip = 'Specifies the value of the Amount field';
                    ApplicationArea = All;
                }
                field("Person Id"; Rec."Person Id")
                {
                    ToolTip = 'Specifies the value of the Person Id field';
                    ApplicationArea = All;
                }
                field("Person Name"; Rec."Person Name")
                {
                    ToolTip = 'Specifies the value of the Person Name field';
                    ApplicationArea = All;
                }
                field("Sales id"; Rec."Sales id")
                {
                    ToolTip = 'Specifies the value of the Sales id field';
                    ApplicationArea = All;
                }
            }
        }
    }
    actions
    {
        area(Creation)
        {
            action("Sales Query")
            {
                ApplicationArea = All;
                Image = Report;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = query Sales_Report;

                trigger OnAction()
                begin

                end;
            }
        }
    }
}
