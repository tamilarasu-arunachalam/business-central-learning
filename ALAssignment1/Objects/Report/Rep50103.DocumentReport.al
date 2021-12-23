report 50103 DocumentReport
{
    ApplicationArea = All;
    Caption = 'DocumentReport';
    UsageCategory = ReportsAndAnalysis;

    DefaultLayout = RDLC;
    RDLCLayout = './Layout/DocumentReport.rdlc';
    dataset
    {
        dataitem(Sales_Header; "Sales Header")
        {
            RequestFilterFields = "No.";
            PrintOnlyIfDetail = true;
            column(DocumentType; "Document Type")
            {
            }
            column(No; "No.")
            {
            }
            column(SelltoCustomerName; "Sell-to Customer Name")
            {
            }
            column(SelltoPhoneNo; "Sell-to Phone No.")
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
            column(SelltoPostCode; "Sell-to Post Code")
            {
            }
            column(PostingDate; "Posting Date")
            {
            }
            column(YourReference; "Your Reference")
            {
            }
            column(VATRegistrationNo; "VAT Registration No.")
            {
            }
            column(Name_CompanyInfo; CompanyInfo.Name)
            {

            }
            column(Address_CompanyInfo; CompanyInfo.Address)
            {

            }
            column(Address2_CompanyInfo; CompanyInfo."Address 2")
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
            column(PhoneNo_CompanyInfo; CompanyInfo."Phone No.")
            {

            }
            column(Picture_CompanyInfo; CompanyInfo.Picture)
            {

            }
            dataitem("Sales Line"; "Sales Line")
            {
                DataItemLink = "Document type" = field("Document Type"), "Document No." = field("No.");
                column(SalesLineNo; "Sales Line"."No.")
                {
                }
                column(SalesLineDocNo; "Sales Line"."Document No.")
                {
                }
                column(Description; "Sales Line".Description)
                {
                }
                column(Quantity; "Sales Line"."Quantity")
                {
                }
                column(UnitPrice; "Sales Line"."Unit Price")
                {
                }
                column(Discount; "Sales Line"."Line Discount %")
                {
                }
                column(Amount; "Sales Line".Amount)
                {
                }
                column(LineDiscountAmount; "Sales Line"."Line Discount Amount")
                {
                }
            }
            trigger OnAfterGetRecord()
            begin
                If Customer.get("Sell-to Customer No.") then;
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
    trigger OnInitReport()
    begin
        CompanyInfo.Get();
        CompanyInfo.CalcFields(Picture);
    end;

    var
        Customer: Record Customer;
        CompanyInfo: Record "Company Information";
        SalesHeader: Record "Sales Header";
}
