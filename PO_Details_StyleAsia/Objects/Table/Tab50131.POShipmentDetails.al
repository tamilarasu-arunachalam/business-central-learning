table 50131 "PO Shipment Details"
{
    // Caption = 'PO Shipment Details';
    // DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "Shipment No"; Code[20])
        {
            Caption = 'Shipment No';
            DataClassification = ToBeClassified;
        }
        field(2; "Shipment Status"; Text[100])
        {
            Caption = 'Shipment Status';
            DataClassification = ToBeClassified;
        }
        field(3; "Entry Date"; Date)
        {
            Caption = 'Entry Date';
            DataClassification = ToBeClassified;
        }
        field(4; "Expected Arrival Date"; Date)
        {
            Caption = 'Expected Arrival Date';
            DataClassification = ToBeClassified;
        }
        field(5; "Received Date"; Date)
        {
            Caption = 'Received Date';
            DataClassification = ToBeClassified;
        }
        field(6; "PO Number"; Code[20])
        {
            Caption = 'PO Number';
            DataClassification = ToBeClassified;
        }
        field(7; ItemCode; Code[20])
        {
            Caption = 'ItemCode';
            DataClassification = ToBeClassified;
        }
        field(8; ItemDescription; Text[255])
        {
            Caption = 'ItemDescription';
            DataClassification = ToBeClassified;
        }
        field(9; SupplierCode; Text[50])
        {
            Caption = 'SupplierCode';
            DataClassification = ToBeClassified;
        }
        field(10; "Color/Type"; Text[50])
        {
            Caption = 'Color/Type';
            DataClassification = ToBeClassified;
        }
        field(11; "Order Qty"; Integer)
        {
            Caption = 'Order Qty';
            DataClassification = ToBeClassified;
        }
        field(12; "Case Packs"; Integer)
        {
            Caption = 'Case Packs';
            DataClassification = ToBeClassified;
        }
        field(13; "Shipped Qty"; Integer)
        {
            Caption = 'Shipped Qty';
            DataClassification = ToBeClassified;
        }
        field(14; "Total Casepacks"; Integer)
        {
            Caption = 'Total Casepacks';
            DataClassification = ToBeClassified;
        }
        field(15; LocationName; Text[50])
        {
            Caption = 'LocationName';
            DataClassification = ToBeClassified;
        }
        field(16; CreatedDateTime; DateTime)
        {
            Caption = 'CreatedDateTime';
            DataClassification = ToBeClassified;
        }
        field(17; LastModifiedDateTime; DateTime)
        {
            Caption = 'LastModifiedDateTime';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Shipment No","PO Number",ItemCode,"Color/Type")
        {
            Clustered = true;
        }
    }
}
