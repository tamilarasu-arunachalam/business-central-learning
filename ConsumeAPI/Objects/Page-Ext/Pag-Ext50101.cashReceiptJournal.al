pageextension 50101 "cashReceiptJournal" extends "Cash Receipt Journal"
{
    layout
    {
        addafter(Amount)
        {
            field("Due Date"; Rec."Due Date")
            {
                ApplicationArea = all;
            }
            field("Job No."; Rec."Job No.")
            {
                ApplicationArea = all;
            }
        }
    }
}
