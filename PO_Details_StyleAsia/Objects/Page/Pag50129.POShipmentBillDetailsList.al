page 50129 "PO Shipment Bill Details List"
{
    Caption = 'PO Shipment Bill Details List';
    PageType = ListPart;
    SourceTable = "PO Shipment Bill Details";
    InsertAllowed=false;
    ModifyAllowed=false;
    DeleteAllowed=false;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(ShipmentNo; Rec.ShipmentNo)
                {
                    ToolTip = 'Specifies the value of the Shipment No field.';
                    ApplicationArea = All;
                }
                field("Shipment Status"; Rec."Shipment Status")
                {
                    ToolTip = 'Specifies the value of the Shipment Status field.';
                    ApplicationArea = All;
                }
                field("Entry Date"; Rec."Entry Date")
                {
                    ToolTip = 'Specifies the value of the Entry Date field.';
                    ApplicationArea = All;
                }
                field("Expected Arrival Date"; Rec."Expected Arrival Date")
                {
                    ToolTip = 'Specifies the value of the Expected Arrival Date field.';
                    ApplicationArea = All;
                }
                field("Received Date"; Rec."Received Date")
                {
                    ToolTip = 'Specifies the value of the Received Date field.';
                    ApplicationArea = All;
                }
                field(SupplierCode; Rec.SupplierCode)
                {
                    ToolTip = 'Specifies the value of the SupplierCode field.';
                    ApplicationArea = All;
                }
                field("Billing Address Type"; Rec."Billing Address Type")
                {
                    ToolTip = 'Specifies the value of the Billing Address Type field.';
                    ApplicationArea = All;
                }
                field("Billing Address Street1"; Rec."Billing Address Street1")
                {
                    ToolTip = 'Specifies the value of the Billing Address Street1 field.';
                    ApplicationArea = All;
                }
                field("Billing Address Street2"; Rec."Billing Address Street2")
                {
                    ToolTip = 'Specifies the value of the Billing Address Street2 field.';
                    ApplicationArea = All;
                }
                field("Billing Address Street3"; Rec."Billing Address Street3")
                {
                    ToolTip = 'Specifies the value of the Billing Address Street3 field.';
                    ApplicationArea = All;
                }
                field("Billing Address Street4"; Rec."Billing Address Street4")
                {
                    ToolTip = 'Specifies the value of the Billing Address Street4 field.';
                    ApplicationArea = All;
                }
                field("Billing Address City"; Rec."Billing Address City")
                {
                    ToolTip = 'Specifies the value of the Billing Address City field.';
                    ApplicationArea = All;
                }
                field("Billing Address State"; Rec."Billing Address State")
                {
                    ToolTip = 'Specifies the value of the Billing Address State field.';
                    ApplicationArea = All;
                }
                field("Billing Address Country"; Rec."Billing Address Country")
                {
                    ToolTip = 'Specifies the value of the Billing Address Country field.';
                    ApplicationArea = All;
                }
                field("Billing Address Zipcode"; Rec."Billing Address Zipcode")
                {
                    ToolTip = 'Specifies the value of the Billing Address Zipcode field.';
                    ApplicationArea = All;
                }
                field("Supplier Contact First Name"; Rec."Supplier Contact First Name")
                {
                    ToolTip = 'Specifies the value of the Supplier Contact First Name field.';
                    ApplicationArea = All;
                }
                field("Supplier Contact Last Nam"; Rec."Supplier Contact Last Name")
                {
                    ToolTip = 'Specifies the value of the Supplier Contact Last Nam field.';
                    ApplicationArea = All;
                }
                field("Bill Number"; Rec."Bill Number")
                {
                    ToolTip = 'Specifies the value of the Bill Number field.';
                    ApplicationArea = All;
                }
                field("Bill Date"; Rec."Bill Date")
                {
                    ToolTip = 'Specifies the value of the Bill Date field.';
                    ApplicationArea = All;
                }
                field("Supplier Invoice Number"; Rec."Supplier Invoice Number")
                {
                    ToolTip = 'Specifies the value of the Supplier Invoice Number field.';
                    ApplicationArea = All;
                }
                field("Supplier Invoice Date"; Rec."Supplier Invoice Date")
                {
                    ToolTip = 'Specifies the value of the Supplier Invoice Date field.';
                    ApplicationArea = All;
                }
                field("Bank Reference"; Rec."Bank Reference")
                {
                    ToolTip = 'Specifies the value of the Bank Reference field.';
                    ApplicationArea = All;
                }
                field(CBM; Rec.CBM)
                {
                    ToolTip = 'Specifies the value of the CBM field.';
                    ApplicationArea = All;
                }
                field("Total Casepacks"; Rec."Total Casepacks")
                {
                    ToolTip = 'Specifies the value of the Total Casepacks field.';
                    ApplicationArea = All;
                }
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
            }
        }
    }
}
