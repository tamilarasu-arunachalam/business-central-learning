table 50120 "PO_headers"
{
    Caption = 'PO_header';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "PO Number"; Code[20])
        {
            Caption = 'PO Number';
            DataClassification = ToBeClassified;
        }
        field(2; "PO Date"; Date)
        {
            Caption = 'PO Date';
            DataClassification = ToBeClassified;
        }
        field(3; "Supplier Code"; Code[20])
        {
            Caption = 'Supplier Code';
            DataClassification = ToBeClassified;
        }
        field(4; "Supplier Name"; Text[100])
        {
            Caption = 'Supplier Name';
            DataClassification = ToBeClassified;
        }
        field(5; "Supplier Contact"; Text[100])
        {
            Caption = 'Supplier Contact';
            DataClassification = ToBeClassified;
        }
        field(6; "PO Status"; Text[20])
        {
            Caption = 'PO Status';
            DataClassification = ToBeClassified;
        }
        field(7; "Ship Date"; Date)
        {
            Caption = 'Ship Date';
            DataClassification = ToBeClassified;
        }
        field(8; CreatedDateTime; DateTime)
        {
            Caption = 'CreatedDateTime';
            DataClassification = ToBeClassified;
        }
        field(9; LastModifiedDateTime; DateTime)
        {
            Caption = 'LastModifiedDateTime';
            DataClassification = ToBeClassified;
        }
        field(10; "Shipping Method"; Text[20])
        {
            Caption = 'Shipping Method';
            DataClassification = ToBeClassified;
        }
        field(11; "Ship Via"; Text[50])
        {
            Caption = 'Ship Via';
            DataClassification = ToBeClassified;
        }
        field(12; Discount; Decimal)
        {
            Caption = 'Discount';
            DataClassification = ToBeClassified;
        }
        field(13; "Cancel Date"; Date)
        {
            Caption = 'Cancel Date';
            DataClassification = ToBeClassified;
        }
        field(14; "Payment Terms"; Text[20])
        {
            Caption = 'Payment Terms';
            DataClassification = ToBeClassified;
        }
        field(15; "Total Amount"; Decimal)
        {
            Caption = 'Total Amount';
            DataClassification = ToBeClassified;
        }
        field(16; "IsLocal Purchase"; Boolean)
        {
            Caption = 'IsLocal Purchase';
            DataClassification = ToBeClassified;
        }
        field(17; Destination; Text[50])
        {
            Caption = 'Destination';
            DataClassification = ToBeClassified;
        }
        field(18; Orgin; Text[50])
        {
            Caption = 'Orgin';
            DataClassification = ToBeClassified;
        }
        field(19; "Cost Type"; Text[50])
        {
            Caption = 'Cost Type';
            DataClassification = ToBeClassified;
        }
        field(20; "Special Remarks"; Text[250])
        {
            Caption = 'Special Remarks';
            DataClassification = ToBeClassified;
        }
        field(21; "Shipping & Handling Remarks"; Text[250])
        {
            Caption = 'Shipping & Handling Remarks';
            DataClassification = ToBeClassified;
        }
        field(22; "General Remarks"; Text[250])
        {
            Caption = 'General Remarks';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "PO Number")
        {
            Clustered = true;
        }
    }
}
