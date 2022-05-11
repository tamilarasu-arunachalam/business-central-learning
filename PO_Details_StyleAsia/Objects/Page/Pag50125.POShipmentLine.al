page 50125 "POShipmentLine"
{
    Caption = 'POShipmentLine';
    PageType = ListPart;
    SourceTable = "PO Shipment Details";
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Shipment No"; Rec."Shipment No")
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
                field("PO Number"; Rec."PO Number")
                {
                    ToolTip = 'Specifies the value of the PO Number field.';
                    ApplicationArea = All;
                }
                field(ItemCode; Rec.ItemCode)
                {
                    ToolTip = 'Specifies the value of the ItemCode field.';
                    ApplicationArea = All;
                }
                field(ItemDescription; Rec.ItemDescription)
                {
                    ToolTip = 'Specifies the value of the ItemDescription field.';
                    ApplicationArea = All;
                }
                field(SupplierCode; Rec.SupplierCode)
                {
                    ToolTip = 'Specifies the value of the SupplierCode field.';
                    ApplicationArea = All;
                }
                field("Color/Type"; Rec."Color/Type")
                {
                    ToolTip = 'Specifies the value of the Color/Type field.';
                    ApplicationArea = All;
                }
                field("Order Qty"; Rec."Order Qty")
                {
                    ToolTip = 'Specifies the value of the Order Qty field.';
                    ApplicationArea = All;
                }
                field("Case Packs"; Rec."Case Packs")
                {
                    ToolTip = 'Specifies the value of the Case Packs field.';
                    ApplicationArea = All;
                }
                field("Shipped Qty"; Rec."Shipped Qty")
                {
                    ToolTip = 'Specifies the value of the Shipped Qty field.';
                    ApplicationArea = All;
                }
                field("Total Casepacks"; Rec."Total Casepacks")
                {
                    ToolTip = 'Specifies the value of the Total Casepacks field.';
                    ApplicationArea = All;
                }
                field(LocationName; Rec.LocationName)
                {
                    ToolTip = 'Specifies the value of the LocationName field.';
                    ApplicationArea = All;
                }
                field(CreatedDateTime; Rec.CreatedDateTime)
                {
                    ToolTip = 'Specifies the value of the CreatedDateTime field.';
                    ApplicationArea = All;
                }
                field(LastModifiedDateTime; Rec.LastModifiedDateTime)
                {
                    ToolTip = 'Specifies the value of the LastModifiedDateTime field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
