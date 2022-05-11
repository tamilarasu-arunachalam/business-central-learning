table 50121 "PO_line"
{
    Caption = 'PO_line';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "PO Number"; Code[20])
        {
            Caption = 'PO Number';
            DataClassification = ToBeClassified;
        }
        field(2; "Item Code"; Code[20])
        {
            Caption = 'Item Code';
            DataClassification = ToBeClassified;
        }
        field(3; "Item Description"; Text[250])
        {
            Caption = 'Item Description';
            DataClassification = ToBeClassified;
        }
        field(4; SNo; Integer)
        {
            Caption = 'SNo';
            DataClassification = ToBeClassified;
        }
        field(5; "Preferred Casepack"; Integer)
        {
            Caption = 'Preferred Casepack';
            DataClassification = ToBeClassified;
        }
        field(6; "Color/Type"; Text[100])
        {
            Caption = 'Color/Type';
            DataClassification = ToBeClassified;
        }
        field(7; "Order Qty"; Integer)
        {
            Caption = 'Order Qty';
            DataClassification = ToBeClassified;
        }
        field(8; "Unit Price"; Decimal)
        {
            Caption = 'Unit Price';
            DataClassification = ToBeClassified;
        }
        field(9; "Extended Cost"; Decimal)
        {
            Caption = 'Extended Cost';
            DataClassification = ToBeClassified;
        }
        field(10; "Shipped Qty"; Integer)
        {
            Caption = 'Shipped Qty';
            DataClassification = ToBeClassified;
        }
        field(11; "Invoiced Qty"; Integer)
        {
            Caption = 'Invoiced Qty';
            DataClassification = ToBeClassified;
        }
        field(12; "Supplier Code"; Text[50])
        {
            Caption = 'Supplier Code';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "PO Number")
        {
            Clustered = true;
        }
    }
}
