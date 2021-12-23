page 50104 "Sub Form"
{
    AutoSplitKey = true;
    Caption = 'Sub Form';
    PageType = ListPart;
    SourceTable = "Sub Form";
    MultipleNewLines = True;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Type"; Rec."Type")
                {
                    ToolTip = 'Specifies the value of the Type field';
                    ApplicationArea = All;
                }
                field("Line No"; Rec."Line No")
                {
                    ApplicationArea = All;
                }
                field("Item No."; Rec."Item No")
                {
                    ToolTip = 'Specifies the value of the Item No. field';
                    ApplicationArea = All;
                }

                field("Item Description"; Rec."Item Description")
                {
                    ToolTip = 'Specifies the value of the Item Description field';
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
                {
                    ToolTip = 'Specifies the value of the Quantity field';
                    ApplicationArea = All;
                }
                field("Unit Cost"; Rec."Unit Cost")
                {
                    ToolTip = 'Specifies the value of the Unit Cost field';
                    ApplicationArea = All;
                }
                field("Line Amount"; Rec."Line Amount")
                {
                    ToolTip = 'Specifies the value of the Line Amount field';
                    ApplicationArea = All;
                }

                field("Line Discount Percentage"; Rec."Line Discount Percentage")
                {
                    ToolTip = 'Specifies the value of the Line Discount Percentage field';
                    ApplicationArea = All;
                }
                field("Line Discount"; Rec."Line Discount")
                {
                    ToolTip = 'Specifies the value of the Line Discount field';
                    ApplicationArea = All;
                }
            }
        }
    }

}
