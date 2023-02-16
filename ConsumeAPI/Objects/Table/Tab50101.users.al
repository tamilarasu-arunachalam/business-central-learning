table 50101 "users"
{
    Caption = 'Users';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; id; Integer)
        {
            Caption = 'ID';
            DataClassification = ToBeClassified;
        }
        field(2; name; Text[25])
        {
            Caption = 'Name';
            DataClassification = ToBeClassified;
        }
        field(3; username; Text[25])
        {
            Caption = 'Username';
            DataClassification = ToBeClassified;
        }
        field(4; email; Text[25])
        {
            Caption = 'Email';
            DataClassification = ToBeClassified;
        }
        field(5; street; Text[25])
        {
            Caption = 'street';
            DataClassification = ToBeClassified;
        }
        field(6; suite; Text[25])
        {
            Caption = 'suite';
            DataClassification = ToBeClassified;
        }
        field(7; city; Text[25])
        {
            Caption = 'city';
            DataClassification = ToBeClassified;
        }
        field(8; zipcode; Text[10])
        {
            Caption = 'Zipcode';
            DataClassification = ToBeClassified;
        }
        field(9; lat; Text[20])
        {
            Caption = 'Latitude';
            DataClassification = ToBeClassified;
        }
        field(10; lon; Text[20])
        {
            Caption = 'Longitude';
            DataClassification = ToBeClassified;
        }
        field(11; phone; Text[25])
        {
            Caption = 'Phone';
            DataClassification = ToBeClassified;
        }
        field(12; website; Text[25])
        {
            Caption = 'Website';
            DataClassification = ToBeClassified;
        }
        field(13; companyname; Text[25])
        {
            Caption = 'Company Name';
            DataClassification = ToBeClassified;
        }
        field(14; catchphrase; Text[100])
        {
            Caption = 'Catch Phrase';
            DataClassification = ToBeClassified;
        }
        field(15; bs; Text[100])
        {
            Caption = 'BS';
            DataClassification = ToBeClassified;
        }
        field(16; recordID; Integer)
        {
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; id)
        {
            Clustered = true;
        }
    }
}
