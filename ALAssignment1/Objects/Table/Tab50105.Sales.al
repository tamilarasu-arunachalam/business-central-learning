table 50105 Sales
{
    Caption = 'Sales';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "Sales id"; Text[10])
        {
            Caption = 'Sales id';
            DataClassification = ToBeClassified;
        }
        field(2; "Person Name"; Text[10])
        {
            Caption = 'Person Name';
            DataClassification = ToBeClassified;
        }
        field(3; "Person Id"; Text[10])
        {
            Caption = 'Person Id';
            DataClassification = ToBeClassified;
        }
        field(4; Amount; Decimal)
        {
            Caption = 'Amount';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Sales id")
        {
            Clustered = true;
        }
    }
    
}
