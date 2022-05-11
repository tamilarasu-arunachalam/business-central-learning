table 50130 "PO Shipment Header"
{
    Caption = 'PO Shipment Header';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; ShipmentNo; Code[20])
        {
            Caption = 'ShipmentNo';
            DataClassification = ToBeClassified;
        }
        field(2; "Cargo Type"; Text[50])
        {
            Caption = 'Cargo Type';
            DataClassification = ToBeClassified;
        }
        field(3; "Shipment Status"; Text[50])
        {
            Caption = 'Shipment Status';
            DataClassification = ToBeClassified;
        }
        field(4; "Entry No"; Code[20])
        {
            Caption = 'Entry No';
            DataClassification = ToBeClassified;
        }
        field(5; "Entry Date"; Date)
        {
            Caption = 'Entry Date';
            DataClassification = ToBeClassified;
        }
        field(6; "Expected Arrival Date"; Date)
        {
            Caption = 'Expected Arrival Date';
            DataClassification = ToBeClassified;
        }
        field(7; "Vessel Name"; Text[50])
        {
            Caption = 'Vessel Name';
            DataClassification = ToBeClassified;
        }
        field(8; "Pickup Terminal"; Text[50])
        {
            Caption = 'Pickup Terminal';
            DataClassification = ToBeClassified;
        }
        field(9; "Received Date"; Date)
        {
            Caption = 'Received Date';
            DataClassification = ToBeClassified;
        }
        field(10; Remarks; Text[255])
        {
            Caption = 'Remarks';
            DataClassification = ToBeClassified;
        }
        field(11; LFD; Date)
        {
            Caption = 'LFD';
            DataClassification = ToBeClassified;
        }
        field(12; CreatedDateTime; DateTime)
        {
            Caption = 'CreatedDateTime';
            DataClassification = ToBeClassified;
        }
        field(13; LastModifiedDateTime; DateTime)
        {
            Caption = 'LastModifiedDateTime';
            DataClassification = ToBeClassified;
        }
        field(14; "Shipment Total CasePacks"; Integer)
        {
            Caption = 'Shipment Total CasePacks';
            DataClassification = ToBeClassified;
        }
        field(15; "Total CBM"; Decimal)
        {
            Caption = 'Shipment Total CasePacks';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; ShipmentNo)
        {
            Clustered = true;
        }
    }
}
