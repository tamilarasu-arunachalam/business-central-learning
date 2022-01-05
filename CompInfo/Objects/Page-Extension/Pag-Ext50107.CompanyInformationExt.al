pageextension 50107 "CompanyInformationExt" extends "Company Information"
{
    layout
    {
        addafter(Picture)
        {
            field("Address Details1"; Rec."Address Details1")
            {
                ApplicationArea = All;

            }
            field("Address Details2"; Rec."Address Details2")
            {
                ApplicationArea = All;

            }
            field("Address Details3"; Rec."Address Details3")
            {
                ApplicationArea = All;

            }
            group("Company Overview")
            {
                Caption = 'Company Overview';
                field(ComapnyOverView; ComapnyOverView)
                {
                    ApplicationArea = Basic, Suite;
                    Importance = Additional;
                    MultiLine = true;
                    ShowCaption = false;
                    ToolTip = 'Specifies the Company Overview being offered.';

                    trigger OnValidate()
                    begin
                        Rec.SetCompanyOverView(ComapnyOverView);
                    end;
                }
            }
            group("General Terms")
            {
                Caption = 'General Terms & Conditions';
                field(GeneralTerms; GeneralTerms)
                {
                    ApplicationArea = Basic, Suite;
                    Importance = Additional;
                    MultiLine = true;
                    ShowCaption = false;
                    ToolTip = 'Specifies the General Terms & Conditions being offered.';

                    trigger OnValidate()
                    begin
                        Rec.SetGeneralTermsConditions(GeneralTerms);
                    end;
                }
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        ComapnyOverView := Rec.GetCompanyOverView();
        GeneralTerms := Rec.GetGeneralTermsConditions();
    end;

    var
        ComapnyOverView: Text;
        GeneralTerms: Text;
}