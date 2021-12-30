tableextension 50100 "GeneralLedger" extends "G/L Entry"
{
    fields
    {
        // Add changes to table fields here
        field(50100; "Vendor Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
    }
    
    // var
    //     myInt: Integer;
}