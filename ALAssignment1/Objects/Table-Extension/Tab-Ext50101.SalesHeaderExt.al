tableextension 50101 SalesHeaderExt extends "Sales Header"
{
    fields
    {
        // field(50100; "Calculated Date"; Date)
        // {
        //     Caption = 'Calculated Date';
        //     DataClassification = ToBeClassified;
        // }
        field(50101; "Customer Home Page"; Text[30])
        {
            Caption = 'Customer Home Page';
            DataClassification = ToBeClassified;
        }
        field(50102; "Customer Fax No."; Text[30])
        {
            Caption = 'Customer Fax No.';
            DataClassification = ToBeClassified;
        }
        field(50103; "Deferral Id"; Code[30])
        {
            DataClassification = ToBeClassified;
        }
        field(50104; "Deferral Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
    }
    var
        myInt: Integer;
}