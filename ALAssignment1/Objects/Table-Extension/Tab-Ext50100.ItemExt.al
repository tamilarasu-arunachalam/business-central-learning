tableextension 50100 "ItemExt" extends Item
{
    fields
    {
        // Add changes to table fields here
        field(50000; "Deferral Account"; Code[10])
        {
            TableRelation = Location.code;
            DataClassification = ToBeClassified;
        }
        field(50001; "Deferral Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50002; Color; Option)
        {
            OptionCaption = ',Red,Blue,Green,Yellow';
            OptionMembers = ,Red,Blue,Green,Yellow;
            DataClassification = ToBeClassified;
        }
        field(50003; "Defferal Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
    }

    var
        myInt: Integer;
}