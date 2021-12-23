pageextension 50102 SalesHeaderExt extends "Sales order"
{
    layout
    {
        addafter("sell-to Post Code")
        {
            field("Customer Home Page"; Rec."Customer Home Page")
            {
                ApplicationArea = All;
            }
            field("Customer Fax No."; Rec."Customer Fax No.")
            {
                ApplicationArea = All;
            }
            field("Deferral Id"; Rec."Deferral Id")
            {
                ApplicationArea = All;
            }
            field("Deferral Amount"; Rec."Deferral Amount")
            {
                ApplicationArea = All;
            }
        }
        // addafter("Status")
        // {
        //     field("Calculated Date"; Rec."Calculated Date")
        //     {
        //         ApplicationArea = All;
        //     }
        // }
    }
    actions
    {
        addafter(Action3)
        {
            // action(CalcDate)
            // {
            //     ApplicationArea = All;

            //     trigger OnAction()
            //     begin
            //         CalculatedDate();
            //     end;
            // }
            action("SO Report")
            {
                ApplicationArea = All;
                Image = Report;
                Promoted = true;
                PromotedCategory = Process;
                // RunObject = Report DocumentReport;

                trigger OnAction()
                var
                    SalesHeader: Record "Sales Header";
                    DocumentReport: Report DocumentReport;
                begin
                    SalesHeader.SetRange("No.", Rec."No.");
                    if SalesHeader.FindFirst() then begin
                        DocumentReport.SetTableView(SalesHeader);
                        DocumentReport.Run();
                    end;
                end;
            }
        }
    }
    // procedure CalculatedDate()
    // var
    //     SalesHeader: Record "Sales header";
    //     PaymentTerms: Record "Payment Terms";
    // begin
    //     If PaymentTerms.Get(Rec."Payment Terms Code") then
    //         Rec."Calculated Date" := calcDate((PaymentTerms."Due Date Calculation"), Rec."Posting Date");
    // end;
}
