table 50100 "Person"
{
    Caption = 'Person';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Person Id"; Code[20])
        {
            TableRelation = Customer;
            Caption = 'Person Id';
            DataClassification = ToBeClassified;
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
            DataClassification = ToBeClassified;
        }
        field(3; Place; Text[100])
        {
            Caption = 'Place';
            DataClassification = ToBeClassified;
        }
        field(4; DOB; Date)
        {
            Caption = 'DOB';
            DataClassification = ToBeClassified;
        }
        field(5; Email; Text[50])
        {
            Caption = 'Email';
            DataClassification = ToBeClassified;
        }
        field(6; "Mobile Number"; Integer)
        {
            Caption = 'Mobile Number';
            DataClassification = ToBeClassified;
        }
        field(7; Qualification; Enum Qualification)
        {
            Caption = 'Qualification';
            DataClassification = ToBeClassified;
        }
        field(8; District; Text[100])
        {
            Caption = 'District';
            DataClassification = ToBeClassified;
        }
        field(9; State; Text[20])
        {
            Caption = 'State';
            DataClassification = ToBeClassified;
        }
        field(10; Country; Text[20])
        {
            Caption = 'Country';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Person Id")
        {
            Clustered = true;
        }
    }

}
