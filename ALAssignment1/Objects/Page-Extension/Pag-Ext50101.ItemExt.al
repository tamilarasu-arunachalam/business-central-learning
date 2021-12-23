pageextension 50101 "ItemExt" extends "Item List"
{
    layout
    {
        addafter("Search Description")
        {
            field("Deferral_Account"; Rec."Deferral Account")
            {
                ApplicationArea = All;

            }
            field("Deferral Amount"; Rec."Deferral Amount")
            {
                ApplicationArea = All;

            }
            field("Colour"; Rec.Color)
            {
                ApplicationArea = All;

            }
            field("Deferral Date"; Rec."Defferal Date")
            {
                ApplicationArea = All;

            }
        }
    }

    actions
    {

    }

    var
        myInt: Integer;
}