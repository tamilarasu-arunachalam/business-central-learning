pageextension 50101 "GeneralLedger" extends "General Ledger Entries"
{
    layout
    {
        addafter("G/L Account Name")
        {
            field("Vendor Name";Rec."Vendor Name")
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
    }
}