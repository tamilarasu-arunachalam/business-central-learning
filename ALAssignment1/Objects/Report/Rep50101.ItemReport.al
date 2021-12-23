report 50101 ItemReport
{
    ApplicationArea = All;
    Caption = 'Item List Report';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = './Layout/ItemList.rdlc';
    dataset
    {
        dataitem(Item; Item)
        {
            column(No; "No.")
            {
                IncludeCaption=true;
            }
            column(Description; Description)
            {
            }
            column(UnitPrice; "Unit Price")
            {
            }
            column(VendorNo; "Vendor No.")
            {
            }
            column(Inventory; Inventory)
            {
            }
            column(ProductionBOMNo; "Production BOM No.")
            {
            }
            column(BaseUnitofMeasure; "Base Unit of Measure")
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
    labels
    {
        ItemNo = 'Item No', Comment = 'Student Details';
        ItemCaption = 'Item Report', Comment = 'Student Details';
    }

    trigger OnInitReport()
    begin
        CompanyInfo.Get();
        CompanyInfo.CalcFields(Picture);
    end;

    var
        CompanyInfo: Record "Company Information";
}