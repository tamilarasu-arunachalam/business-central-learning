table 50127 "POPayments"
{
    Caption = 'POPayments';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "Payment Number"; Code[20])
        {
            Caption = 'Payment Number';
            DataClassification = ToBeClassified;
        }
        field(2; "Payment Type"; Text[50])
        {
            Caption = 'Payment Type';
            DataClassification = ToBeClassified;
        }
        field(3; SupplierCode; Code[20])
        {
            Caption = 'SupplierCode';
            DataClassification = ToBeClassified;
        }
        field(4; "PO Invoice Number"; Code[20])
        {
            Caption = 'PO Invoice Number';
            DataClassification = ToBeClassified;
        }
        field(5; PONumber; Code[20])
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
        field(8; IsPosted; Boolean)
        {
            Caption = 'IsPosted';
            DataClassification = ToBeClassified;
        }
        field(9; "Posted Date"; Date)
        {
            Caption = 'Posted Date';
            DataClassification = ToBeClassified;
        }
        field(10; "Payment Details"; Text[255])
        {
            Caption = 'Payment Details';
            DataClassification = ToBeClassified;
        }
        field(11; Remarks; Text[255])
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
        key(PK; "Payment Number",SupplierCode,PONumber)
        {
            Clustered = true;
        }
    }
    // trigger OnInsert()
    // begin
    //     // FieldNo("12");
    //     Message('Data Inserted : pop up');
    // end;
}