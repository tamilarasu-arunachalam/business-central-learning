
table 50102 "Sub Form"
{
    Caption = 'Sub Form';
    DataClassification = ToBeClassified;

    fields
    {

        field(1; Type; Enum Type)
        {
            Caption = 'Type';
            DataClassification = ToBeClassified;
        }

        field(2; "Student No"; Code[20])
        {
            DataClassification = ToBeClassified;
        }

        field(3; "Line No"; Integer)
        {
            Caption = 'Line No';
            DataClassification = ToBeClassified;
        }
        field(4; "Item No"; Code[20])
        {

            Caption = 'Item No';
            DataClassification = ToBeClassified;

            TableRelation =
           IF ("Type" = CONST("G/L")) "G/L Account" where("No." = field("Item No"))

            else
            if ("Type" = CONST("Item")) "Item" where("No." = field("Item No"));

            trigger OnValidate()
            begin

                if Item.Get("Item No") then begin
                    "Item Description" := Item.Description;
                end
                else
                    if "GLAccount".Get("Item No") then begin
                        "Item Description" := GLAccount.Name;
                    end;

            end;
        }

        field(5; "Item Description"; Text[200])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }

        field(6; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DataClassification = ToBeClassified;
        }
        field(7; "Unit Cost"; Decimal)
        {
            Caption = 'Unit Cost';

            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                "Line Amount" := "Unit Cost" * Quantity;
            end;
        }
        field(8; "Line Amount"; Decimal)
        {
            Caption = 'Line Amount';
            DataClassification = ToBeClassified;
        }
        field(9; "Line Discount Percentage"; Decimal)
        {
            Caption = 'Line Discount Percentage';
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin
                "Line Discount" := "Line Amount" * "Line Discount Percentage" / 100;
            end;
        }
        field(10; "Line Discount"; Decimal)
        {
            Caption = 'Line Discount';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Student No", "Line No")
        {
            Clustered = true;
        }
    }

    var
        GLAccount: Record "G/L Account";

    var
        Item: Record Item;
}
