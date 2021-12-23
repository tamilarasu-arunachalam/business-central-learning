table 50106 SalesPerson
{
    Caption = 'SalesPerson';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; Person; Text[10])
        {
            Caption = 'Person';
            DataClassification = ToBeClassified;
        }
        field(2; "person id"; Text[10])
        {
            Caption = 'person id';
            DataClassification = ToBeClassified;
        }
        field(3; "sales total"; Decimal)
        {
            Caption = 'sales total';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; Person)
        {
            Clustered = true;
        }
    }
    
}
