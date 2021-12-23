page 50109 SalesPerson
{
    
    ApplicationArea = All;
    Caption = 'SalesPerson';
    PageType = List;
    SourceTable = SalesPerson;
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Person; Rec.Person)
                {
                    ToolTip = 'Specifies the value of the Person field';
                    ApplicationArea = All;
                }
                field("person id"; Rec."person id")
                {
                    ToolTip = 'Specifies the value of the person id field';
                    ApplicationArea = All;
                }
                field("sales total"; Rec."sales total")
                {
                    ToolTip = 'Specifies the value of the sales total field';
                    ApplicationArea = All;
                }
            }
        }
    }
    
}
