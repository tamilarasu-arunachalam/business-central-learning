report 50100 PostingDateUpd
{
    ApplicationArea = All;
    Caption = 'PostingDateUpd';
    UsageCategory = ReportsAndAnalysis;
    ProcessingOnly = true;
    UseRequestPage = false;
    dataset
    {
        dataitem(SalesHeader; "Sales Header")
        {
            DataItemTableView = order(ascending) where("Posting Date" = filter('27/01/2023'));
            trigger OnPreDataItem()
            begin

            end;

            trigger OnAfterGetRecord()
            begin
                // if "Posting Date" = 20230130D then begin
                //     "Posting Date" := 20230127D;
                //     Modify();
                // end;
                "Posting Date" := 20230130D;
                Modify();
            end;

            trigger OnPostDataItem()
            begin
                Message(Text001);
            end;
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
    var
        Text001: Label 'Posting Date Updated';
}