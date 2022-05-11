table 50126 "PO Invoice Line"
{
    Caption = 'PO Invoice Line';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "PO Invoice Number"; Code[20])
        {
            Caption = 'PO Invoice Number';
            DataClassification = ToBeClassified;
        }
        field(2; "PO Invoice Date"; Date)
        {
            Caption = 'PO Invoice Date';
            DataClassification = ToBeClassified;
        }
        field(3; SupplierCode; Code[20])
        {
            Caption = 'SupplierCode';
            DataClassification = ToBeClassified;
        }
        field(4; ShipmentNo; Code[20])
        {
            Caption = 'ShipmentNo';
            DataClassification = ToBeClassified;
        }
        field(5; PONumber; Code[20])
        {
            Caption = 'PONumber';
            DataClassification = ToBeClassified;
        }
        field(6; "Supplier Invoice Number"; Code[20])
        {
            Caption = 'Supplier Invoice Number';
            DataClassification = ToBeClassified;
        }
        field(7; ItemCode; Code[20])
        {
            Caption = 'ItemCode';
            DataClassification = ToBeClassified;
        }
        field(8; "Invoiced Qty"; Integer)
        {
            Caption = 'Invoiced Qty';
            DataClassification = ToBeClassified;
        }
        field(9; "Unit Price"; Decimal)
        {
            Caption = 'Unit Price';
            DataClassification = ToBeClassified;
        }
        field(10; "Item Value"; Decimal)
        {
            Caption = 'Item Value';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "PO Invoice Number",ShipmentNo,ItemCode)
        {
            Clustered = true;
        }
    }
}
