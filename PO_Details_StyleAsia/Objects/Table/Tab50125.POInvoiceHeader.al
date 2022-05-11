table 50125 "PO Invoice Header"
{
    Caption = 'PO Invoice Header';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "PO Invoice Number"; Code[20])
        {
            Caption = 'PO Invoice Number';
            DataClassification = ToBeClassified;
        }
        field(2; "PO Invoice Date"; Date)
        {
            Caption = 'PO Invoice Date';
            DataClassification = ToBeClassified;
        }
        field(3; "Supplier Invoice Number"; Code[20])
        {
            Caption = 'Supplier Invoice Number';
            DataClassification = ToBeClassified;
        }
        field(4; "Supplier Invoice Date"; Date)
        {
            Caption = 'Supplier Invoice Date';
            DataClassification = ToBeClassified;
        }
        field(5; "Due Date"; Date)
        {
            Caption = 'Due Date';
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
        field(8; "Billing Address Street1"; Text[50])
        {
            Caption = 'Billing Address Street1';
            DataClassification = ToBeClassified;
        }
        field(9; "Billing Address Street2"; Text[50])
        {
            Caption = 'Billing Address Street2';
            DataClassification = ToBeClassified;
        }
        field(10; "Billing Address Street3"; Text[50])
        {
            Caption = 'Billing Address Street3';
            DataClassification = ToBeClassified;
        }
        field(11; "Billing Address Street4"; Text[50])
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
            Caption = 'Supplier Contact Last Name';
            DataClassification = ToBeClassified;
        }
        field(18; PaymentTermsId; Code[20])
        {
            Caption = 'PaymentTermsId';
            DataClassification = ToBeClassified;
        }
        field(19; PaymentTerm; Text[20])
        {
            Caption = 'PaymentTerm';
            DataClassification = ToBeClassified;
        }
        field(20; "Bank Reference"; Text[50])
        {
            Caption = 'Bank Reference';
            DataClassification = ToBeClassified;
        }
        field(21; "Paid Status"; Text[20])
        {
            Caption = 'Paid Status';
            DataClassification = ToBeClassified;
        }
        field(22; IsPosted; Boolean)
        {
            Caption = 'IsPosted';
            DataClassification = ToBeClassified;
        }
        field(23; "Total Invoice Amount"; Decimal)
        {
            Caption = 'Total Invoice Amount';
            DataClassification = ToBeClassified;
        }
        field(24; Discount; Decimal)
        {
            Caption = 'Discount';
            DataClassification = ToBeClassified;
        }
        field(25; Remarks; Text[255])
        {
            Caption = 'Remarks';
            DataClassification = ToBeClassified;
        }
        field(26; CreatedDateTime; DateTime)
        {
            Caption = 'CreatedDateTime';
            DataClassification = ToBeClassified;
        }
        field(27; LastModifiedDateTime; DateTime)
        {
            Caption = 'LastModifiedDateTime';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "PO Invoice Number")
        {
            Clustered = true;
        }
    }
}
