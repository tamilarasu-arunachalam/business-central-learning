report 50104 PostedSalesCreditMemoRep
{
    ApplicationArea = All;
    Caption = 'PostedSalesCreditMemoRep';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = './Layout/PostedSalesMemo.rdlc';
    dataset
    {
        dataitem(SalesCrMemoHeader; "Sales Cr.Memo Header")
        {
            RequestFilterFields = "No.";
            PrintOnlyIfDetail = true;
            column(No_; "No.")
            {
            }
            column(SelltoCustomerNo; "Sell-to Customer No.")
            {
            }
            column(SelltoCustomerName; "Sell-to Customer Name")
            {
            }
            column(SelltoAddress; "Sell-to Address")
            {
            }
            column(SelltoCity; "Sell-to City")
            {
            }
            column(SelltoCountryRegionCode; "Sell-to Country/Region Code")
            {
            }
            column(SelltoCounty; "Sell-to County")
            {
            }
            column(SelltoPostCode; "Sell-to Post Code")
            {
            }
            column(PostingDate; "Posting Date")
            {
            }
            column(ExternalDocumentNo; "External Document No.")
            {
            }
            column(Name_CompanyInfo; CompanyInfo.Name)
            {
            }
            column(Address_CompanyInfo; CompanyInfo.Address)
            {
            }
            column(City_CompanyInfo; CompanyInfo.City)
            {
            }
            column(Country_CompanyInfo; CompanyInfo."Country/Region Code")
            {
            }
            column(PostCode_CompanyInfo; CompanyInfo."Post Code")
            {
            }
            column(Picture_CompanyInfo; CompanyInfo.Picture)
            {
            }
            dataitem("Sales Cr.Memo Line"; "Sales Cr.Memo Line")
            {
                DataItemLink = "Document No." = field("No.");
                column(no_CreditMemoLine; "Sales Cr.Memo Line"."Document No.")
                {
                }
                column(desc_CreditMemoLine; "Sales Cr.Memo Line".Description)
                {
                }
                column(qty_CreditMemoLine; "Sales Cr.Memo Line".Quantity)
                {
                }
                column(unitcost_CreditMemoLine; "Sales Cr.Memo Line"."Unit Cost")
                {
                }
                column(lineamt_CreditMemoLine; "Sales Cr.Memo Line"."Line Amount")
                {
                }
            }
            // trigger OnAfterGetRecord()
            //     begin
            //         if not "Sales Cr.Memo Line".Read() then
            //             CurrReport.Break();
            //     end;
            // trigger OnPostDataItem()
            // begin
            //     "Sales Cr.Memo Line".Close()
            // end;
            // trigger OnPreDataItem()
            // begin
            //     "Sales Cr.Memo Line".open()
            // end;
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
     
    
    trigger OnInitReport()
    begin
        CompanyInfo.Get();
        CompanyInfo.CalcFields(Picture);
    end;

    var
        CompanyInfo: Record "Company Information";
        // SalesCreditLine: Record "Sales Cr.Memo Line";
}
