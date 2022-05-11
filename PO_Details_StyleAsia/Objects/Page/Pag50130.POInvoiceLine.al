page 50130 "PO Invoice Line"
{
    ApplicationArea = All;
    Caption = 'PO Invoice Line';
    PageType = ListPart;
    SourceTable = "PO Invoice Line";
    UsageCategory = Lists;

    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("PO Invoice Number"; Rec."PO Invoice Number")
                {
                    ToolTip = 'Specifies the value of the PO Invoice Number field.';
                    ApplicationArea = All;
                }
                field("PO Invoice Date"; Rec."PO Invoice Date")
                {
                    ToolTip = 'Specifies the value of the PO Invoice Date field.';
                    ApplicationArea = All;
                }
                field(SupplierCode; Rec.SupplierCode)
                {
                    ToolTip = 'Specifies the value of the SupplierCode field.';
                    ApplicationArea = All;
                }
                field(ShipmentNo; Rec.ShipmentNo)
                {
                    ToolTip = 'Specifies the value of the ShipmentNo field.';
                    ApplicationArea = All;
                }
                field(PONumber; Rec.PONumber)
                {
                    ToolTip = 'Specifies the value of the PONumber field.';
                    ApplicationArea = All;
                }
                field("Supplier Invoice Number"; Rec."Supplier Invoice Number")
                {
                    ToolTip = 'Specifies the value of the Supplier Invoice Number field.';
                    ApplicationArea = All;
                }
                field(ItemCode; Rec.ItemCode)
                {
                    ToolTip = 'Specifies the value of the ItemCode field.';
                    ApplicationArea = All;
                }
                field("Invoiced Qty"; Rec."Invoiced Qty")
                {
                    ToolTip = 'Specifies the value of the Invoiced Qty field.';
                    ApplicationArea = All;
                }
                field("Unit Price"; Rec."Unit Price")
                {
                    ToolTip = 'Specifies the value of the Unit Price field.';
                    ApplicationArea = All;
                }
                field("Item Value"; Rec."Item Value")
                {
                    ToolTip = 'Specifies the value of the Item Value field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
