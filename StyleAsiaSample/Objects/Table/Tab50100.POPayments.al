table 50101 PO_Payments
{
    Caption = 'PO_Payments';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "Payment Number"; Integer)
        {
            Caption = 'Payment Number';
            DataClassification = ToBeClassified;
        }
        field(2; "Payment Type"; Enum PaymentType)
        {
            Caption = 'Payment Type';
            DataClassification = ToBeClassified;
        }
        field(3; SupplierCode; Text[50])
        {
            Caption = 'SupplierCode';
            DataClassification = ToBeClassified;
        }
        field(4; "PO Invoice Number"; Integer)
        {
            Caption = 'PO Invoice Number';
            DataClassification = ToBeClassified;
        }
        field(5; PONumber; Integer)
        {
            Caption = 'PONumber';
            DataClassification = ToBeClassified;
        }
        field(6; "Payment Date"; Date)
        {
            Caption = 'Payment Date';
            DataClassification = ToBeClassified;
        }
        field(7; "Payment Amount"; Decimal)
        {
            Caption = 'Payment Amount';
            DataClassification = ToBeClassified;
        }
        field(8; IsPosted; Enum IsPosted)
        {
            Caption = 'IsPosted';
            DataClassification = ToBeClassified;
        }
        field(9; "Posted Date"; Date)
        {
            Caption = 'Posted Date';
            DataClassification = ToBeClassified;
        }
        field(10; "Payment Details"; Text[100])
        {
            Caption = 'Payment Details';
            DataClassification = ToBeClassified;
        }
        field(11; Remarks; Text[100])
        {
            Caption = 'Remarks';
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
    }
    keys
    {
        key(PK; "Payment Number")
        {
            Clustered = true;
        }
    }
}
