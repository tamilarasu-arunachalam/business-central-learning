page 50123 "Purchase Order Card Line"
{
    ApplicationArea = All;
    AutoSplitKey=true;
    Caption = 'Purchase Order Card Line';
    PageType = ListPart;
    SourceTable = PO_line;
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("PO Number"; Rec."PO Number")
                {
                    ToolTip = 'Specifies the value of the PO Number field.';
                    ApplicationArea = All;
                    Editable=false;
                }
                field("Item Code"; Rec."Item Code")
                {
                    ToolTip = 'Specifies the value of the Item Code field.';
                    ApplicationArea = All;
                    Editable=false;
                }
                field("Item Description"; Rec."Item Description")
                {
                    ToolTip = 'Specifies the value of the Item Description field.';
                    ApplicationArea = All;
                    Editable=false;
                }
                field(SNo; Rec.SNo)
                {
                    ToolTip = 'Specifies the value of the SNo field.';
                    ApplicationArea = All;
                    Editable=false;
                }
                field("Preferred Casepack"; Rec."Preferred Casepack")
                {
                    ToolTip = 'Specifies the value of the Preferred Casepack field.';
                    ApplicationArea = All;
                    Editable=false;
                }
                field("Color/Type"; Rec."Color/Type")
                {
                    ToolTip = 'Specifies the value of the Color/Type field.';
                    ApplicationArea = All;
                    Editable=false;
                }
                field("Order Qty"; Rec."Order Qty")
                {
                    ToolTip = 'Specifies the value of the Order Qty field.';
                    ApplicationArea = All;
                    Editable=false;
                }
                field("Unit Price"; Rec."Unit Price")
                {
                    ToolTip = 'Specifies the value of the Unit Price field.';
                    ApplicationArea = All;
                    Editable=false;
                }
                field("Extended Cost"; Rec."Extended Cost")
                {
                    ToolTip = 'Specifies the value of the Extended Cost field.';
                    ApplicationArea = All;
                    Editable=false;
                }
                field("Shipped Qty"; Rec."Shipped Qty")
                {
                    ToolTip = 'Specifies the value of the Shipped Qty field.';
                    ApplicationArea = All;
                    Editable=false;
                }
                field("Invoiced Qty"; Rec."Invoiced Qty")
                {
                    ToolTip = 'Specifies the value of the Invoiced Qty field.';
                    ApplicationArea = All;
                    Editable=false;
                }
                field("Supplier Code"; Rec."Supplier Code")
                {
                    ToolTip = 'Specifies the value of the Supplier Code field.';
                    ApplicationArea = All;
                    Editable=false;
                }
            }
        }
    }
}
