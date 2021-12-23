pageextension 50100 "ItemCardExt" extends "Item Card"
{
    layout
    {
        // Add changes to page layout here
        addafter("Costs & Posting")
        {
            group("Deferral Details")
            {
                field("Deferral Account"; Rec."Deferral Account")
                {
                    Caption = 'Deferral Account';
                    ApplicationArea = All;
                }
                field("Deferral Amount"; Rec."Deferral Amount")
                {
                    Caption = 'Deferral Amount';
                    ApplicationArea = All;
                }
                field(Color; Rec.Color)
                {
                    Caption = 'Color';
                    ApplicationArea = All;
                }
                field("Deferral Date"; Rec."Defferal Date")
                {
                    Caption = 'Deferral Date';
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}