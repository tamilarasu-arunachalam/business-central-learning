report 50102 SalesQuery
{
    ApplicationArea = All;
    Caption = 'SalesQuery';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = './Layout/SalesQuery.rdlc';
    dataset
    {
        dataitem(Integer; Integer)
        {
            column(Amount; SalesReport.Amount)
            {
            }
            column(PersonName; SalesReport.PersonName)
            {
            }
            column(Salesid; SalesReport.Salesid)
            {
            }
            column(SalesTotal; SalesReport.sales_total)
            {
            }
            trigger OnAfterGetRecord()
            begin
                if not SalesReport.Read() then
                    CurrReport.Break();
            end;

            trigger OnPostDataItem()
            begin
                SalesReport.Close();
            end;

            trigger OnPreDataItem()
            begin
                SalesReport.Open()
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
        SalesReport: Query Sales_Report;
}
