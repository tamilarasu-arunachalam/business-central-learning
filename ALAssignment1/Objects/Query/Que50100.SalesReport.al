query 50100 Sales_Report
{
    Caption = 'Sales_Report';
    QueryType = Normal;
    
    elements
    {
        dataitem(Sales; Sales)
        {
            column(Amount; Amount)
            {
            }
            column(PersonName; "Person Name")
            {
            }
            column(Salesid; "Sales id")
            {
            }
            dataitem(SalesPerson;SalesPerson)
            {
                DataItemLink= "Person id"= Sales."Person Id";
                column(sales_total;"sales total")
                {
                        
                }
            }
        }
    }
    
    trigger OnBeforeOpen()
    begin
    
    end;
}
