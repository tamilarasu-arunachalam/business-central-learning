table 50100 "Accounts"
{
    Caption = 'Accounts';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Account Number"; Text[10])
        {
            Caption = 'Account Number';
            DataClassification = ToBeClassified;
        }
        field(2; "Account Name"; Text[25])
        {
            Caption = 'Account Name';
            DataClassification = ToBeClassified;
        }
        field(3; Email; Text[25])
        {
            Caption = 'Email';
            DataClassification = ToBeClassified;
        }
        field(4; "Mobile Number"; Text[25])
        {
            Caption = 'Mobile Number';
            DataClassification = ToBeClassified;
        }
        field(5; "Address 1"; Text[25])
        {
            Caption = 'Address 1';
            DataClassification = ToBeClassified;
        }
        field(6; "Address 2"; Text[25])
        {
            Caption = 'Address 2';
            DataClassification = ToBeClassified;
        }
        field(7; City; Text[25])
        {
            Caption = 'City';
            DataClassification = ToBeClassified;
        }
        field(8; State; Text[25])
        {
            Caption = 'State';
            DataClassification = ToBeClassified;
        }
        field(9; "Zip Code"; Text[25])
        {
            Caption = 'Zip Code';
            DataClassification = ToBeClassified;
        }
        field(10; Country; Text[25])
        {
            Caption = 'Country';
            DataClassification = ToBeClassified;
        }
        field(11; "Contact Person"; Text[25])
        {
            Caption = 'Contact Person';
            DataClassification = ToBeClassified;
        }
        field(12; "Mode Of Contact"; Option)
        {
            Caption = 'Mode Of Contact';
            DataClassification = ToBeClassified;
            OptionMembers = "Email","Phone call";
        }
    }
    keys
    {
        key(PK; "Account Number")
        {
            Clustered = true;
        }
    }
}
