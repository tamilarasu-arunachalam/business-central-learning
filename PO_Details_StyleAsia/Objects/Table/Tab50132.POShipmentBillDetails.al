table 50132 "PO Shipment Bill Details"
{
    Caption = 'PO Shipment Bill Details';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; ShipmentNo; Code[20])
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
        field(6; SupplierCode; Code[20])
        {
            Caption = 'SupplierCode';
            DataClassification = ToBeClassified;
        }
        field(7; "Billing Address Type"; Text[50])
        {
            Caption = 'Billing Address Type';
            DataClassification = ToBeClassified;
        }
        field(8; "Billing Address Street1"; Text[100])
        {
            Caption = 'Billing Address Street1';
            DataClassification = ToBeClassified;
        }
        field(9; "Billing Address Street2"; Text[100])
        {
            Caption = 'Billing Address Street2';
            DataClassification = ToBeClassified;
        }
        field(10; "Billing Address Street3"; Text[100])
        {
            Caption = 'Billing Address Street3';
            DataClassification = ToBeClassified;
        }
        field(11; "Billing Address Street4"; Text[100])
        {
            Caption = 'Billing Address Street4';
            DataClassification = ToBeClassified;
        }
        field(12; "Billing Address City"; Text[50])
        {
            Caption = 'Billing Address City';
            DataClassification = ToBeClassified;
        }
        field(13; "Billing Address State"; Text[50])
        {
            Caption = 'Billing Address State';
            DataClassification = ToBeClassified;
        }
        field(14; "Billing Address Country"; Text[50])
        {
            Caption = 'Billing Address Country';
            DataClassification = ToBeClassified;
        }
        field(15; "Billing Address Zipcode"; Integer)
        {
            Caption = 'Billing Address Zipcode';
            DataClassification = ToBeClassified;
        }
        field(16; "Supplier Contact First Name"; Text[50])
        {
            Caption = 'Supplier Contact First Name';
            DataClassification = ToBeClassified;
        }
        field(17; "Supplier Contact Last Name"; Text[50])
        {
            Caption = 'Supplier Contact Last Nam';
            DataClassification = ToBeClassified;
        }
        field(18; "Bill Number"; Code[20])
        {
            Caption = 'Bill Number';
            DataClassification = ToBeClassified;
        }
        field(19; "Bill Date"; Date)
        {
            Caption = 'Bill Date';
            DataClassification = ToBeClassified;
        }
        field(20; "Supplier Invoice Number"; Code[20])
        {
            Caption = 'Supplier Invoice Number';
            DataClassification = ToBeClassified;
        }
        field(21; "Supplier Invoice Date"; Date)
        {
            Caption = 'Supplier Invoice Date';
            DataClassification = ToBeClassified;
        }
        field(22; "Bank Reference"; Text[50])
        {
            Caption = 'Bank Reference';
            DataClassification = ToBeClassified;
        }
        field(23; CBM; Decimal)
        {
            Caption = 'CBM';
            DataClassification = ToBeClassified;
        }
        field(24; "Total Casepacks"; Integer)
        {
            Caption = 'Total Casepacks';
            DataClassification = ToBeClassified;
        }
        field(25; "PO Invoice Number"; Code[20])
        {
            Caption = 'PO Invoice Number';
            DataClassification = ToBeClassified;
        }
        field(26; "PO Invoice Date"; Date)
        {
            Caption = 'PO Invoice Date';
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
