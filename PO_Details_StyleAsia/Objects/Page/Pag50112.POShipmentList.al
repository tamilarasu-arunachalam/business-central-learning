page 50112 "PO Shipment List"
{
    ApplicationArea = All;
    Caption = 'PO Shipment List';
    PageType = List;
    SourceTable = "PO Shipment Header";
    UsageCategory = Lists;
    CardPageId="PO Shipment Card";
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
                    ToolTip = 'Specifies the value of the ShipmentNo field.';
                    ApplicationArea = All;
                }
                field("Cargo Type"; Rec."Cargo Type")
                {
                    ToolTip = 'Specifies the value of the Cargo Type field.';
                    ApplicationArea = All;
                }
                field("Shipment Status"; Rec."Shipment Status")
                {
                    ToolTip = 'Specifies the value of the Cargo Type field.';
                    ApplicationArea = All;
                }
                field("Entry No"; Rec."Entry No")
                {
                    ToolTip = 'Specifies the value of the Entry No field.';
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
                field("Vessel Name"; Rec."Vessel Name")
                {
                    ToolTip = 'Specifies the value of the Vessel Name field.';
                    ApplicationArea = All;
                }
                field("Pickup Terminal"; Rec."Pickup Terminal")
                {
                    ToolTip = 'Specifies the value of the Pickup Terminal field.';
                    ApplicationArea = All;
                }
                field("Received Date"; Rec."Received Date")
                {
                    ToolTip = 'Specifies the value of the Received Date field.';
                    ApplicationArea = All;
                }
                field(Remarks; Rec.Remarks)
                {
                    ToolTip = 'Specifies the value of the Remarks field.';
                    ApplicationArea = All;
                }
                field(LFD; Rec.LFD)
                {
                    ToolTip = 'Specifies the value of the LFD field.';
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
                field("Shipment Total CasePacks"; Rec."Shipment Total CasePacks")
                {
                    ToolTip = 'Specifies the value of the Shipment Total CasePacks field.';
                    ApplicationArea = All;
                }
                field("Total CBM"; Rec."Total CBM")
                {
                    ToolTip = 'Specifies the value of the Total CBM field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
