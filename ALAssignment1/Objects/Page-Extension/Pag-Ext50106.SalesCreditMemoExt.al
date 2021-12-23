pageextension 50106 SalesCreditMemoExt extends "Posted Sales Credit Memo"
{
    actions
    {
        addafter(Customer)
        {
            action("Generate Report")
            {
                ApplicationArea = All;
                Image = Report;
                Promoted = true;
                PromotedCategory = Process;
                // RunObject = Report PostedSalesCreditMemoRep;

                trigger OnAction()
                var
                    SalesCrMemoHeader: Record "Sales Cr.Memo Header";
                    PostedSalesCreditMemoRep: Report PostedSalesCreditMemoRep;
                begin
                    SalesCrMemoHeader.SetRange("No.", Rec."No.");
                    if SalesCrMemoHeader.FindFirst() then begin
                        PostedSalesCreditMemoRep.SetTableView(SalesCrMemoHeader);
                        PostedSalesCreditMemoRep.Run();
                    end;
                end;
            }
        }
    }
}