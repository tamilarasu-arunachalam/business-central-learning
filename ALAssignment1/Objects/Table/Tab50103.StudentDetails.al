table 50103 "Student Details"
{
    Caption = 'Student Details';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Student No"; Code[20])
        {
            Caption = 'Student No';
            DataClassification = ToBeClassified;
        }
        field(2; "Student Name"; Text[50])
        {
            Caption = 'Student Name';
            DataClassification = ToBeClassified;
        }
        field(3; "Student Place"; Text[20])
        {
            Caption = 'Student Place';
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
        field(6; Qualification; Enum Qualification)
        {
            Caption = 'Qualification';
            DataClassification = ToBeClassified;
        }
        field(7; District; Text[20])
        {
            Caption = 'District';
            DataClassification = ToBeClassified;
        }
        field(8; State; Text[20])
        {
            Caption = 'State';
            DataClassification = ToBeClassified;
        }
        field(9; Country; Text[20])
        {
            Caption = 'Country';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Student No")
        {
            Clustered = true;
        }
    }

}
