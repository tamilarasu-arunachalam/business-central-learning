tableextension 50110 "CompanyInformationExt" extends "Company Information"
{
    fields
    {
        field(50001; "Address Details1"; Text[250])
        {
            Caption = 'Address Details1';
            DataClassification = ToBeClassified;
        }
        field(50002; "Address Details2"; Text[250])
        {
            Caption = 'Address Details2';
            DataClassification = ToBeClassified;
        }
        field(50003; "Address Details3"; Text[250])
        {
            Caption = 'Address Details3';
            DataClassification = ToBeClassified;
        }
        field(50004; "Company Overview"; Blob)
        {
            Caption = 'Company Overview';
            DataClassification = ToBeClassified;
        }
        field(50005; "General Terms"; Blob)
        {
            Caption = 'General Terms & Conditions';
            DataClassification = ToBeClassified;
        }
    }

    procedure SetCompanyOverView(CompanyView: Text)
    var
        OutStream: OutStream;
    begin
        Clear("Company Overview");
        "Company Overview".CreateOutStream(OutStream, TEXTENCODING::UTF8);
        OutStream.WriteText(CompanyView);
        Modify;
    end;

    procedure GetCompanyOverView() CompanyView: Text
    var
        TypeHelper: Codeunit "Type Helper";
        InStream: InStream;
    begin
        CalcFields("Company Overview");
        "Company Overview".CreateInStream(InStream, TEXTENCODING::UTF8);
        if not TypeHelper.TryReadAsTextWithSeparator(InStream, TypeHelper.LFSeparator(), CompanyView) then
            Message(ReadingDataSkippedMsg, FieldCaption("Company Overview"));
    end;
    procedure SetGeneralTermsConditions(GeneralTerms: Text)
    var
        OutStream: OutStream;
    begin
        Clear("General Terms");
        "General Terms".CreateOutStream(OutStream, TEXTENCODING::UTF8);
        OutStream.WriteText(GeneralTerms);
        Modify;
    end;

    procedure GetGeneralTermsConditions() GeneralTerms: Text
    var
        TypeHelper: Codeunit "Type Helper";
        InStream: InStream;
    begin
        CalcFields("General Terms");
        "General Terms".CreateInStream(InStream, TEXTENCODING::UTF8);
        if not TypeHelper.TryReadAsTextWithSeparator(InStream, TypeHelper.LFSeparator(), GeneralTerms) then
            Message(ReadingDataSkippedMsg, FieldCaption("General Terms"));
    end;

    var
        ReadingDataSkippedMsg: Label 'Loading field %1 will be skipped because there was an error when reading the data.\To fix the current data, contact your administrator.\Alternatively, you can overwrite the current data by entering data in the field.', Comment = '%1=field caption';
}