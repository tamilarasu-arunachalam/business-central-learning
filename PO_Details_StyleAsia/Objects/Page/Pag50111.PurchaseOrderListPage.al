page 50111 "Purchase Order List Page"
{
    ApplicationArea = All;
    Caption = 'Purchase List';
    PageType = List;
    SourceTable = PO_headers;
    UsageCategory = Lists;
    CardPageId = PO_cards;
    InsertAllowed = false;
    ModifyAllowed = false;
    DeleteAllowed = false;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("PO Number"; Rec."PO Number")
                {
                    ToolTip = 'Specifies the value of the PO Number field.';
                    ApplicationArea = All;
                }
                field("PO Date"; Rec."PO Date")
                {
                    ToolTip = 'Specifies the value of the PO Date field.';
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Supplier Code"; Rec."Supplier Code")
                {
                    ToolTip = 'Specifies the value of the Supplier Code field.';
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Supplier Name"; Rec."Supplier Name")
                {
                    ToolTip = 'Specifies the value of the Supplier Name field.';
                    ApplicationArea = All;
                }
                field("Supplier Contact"; Rec."Supplier Contact")
                {
                    ToolTip = 'Specifies the value of the Supplier Contact field.';
                    ApplicationArea = All;
                }
                field("PO Status"; Rec."PO Status")
                {
                    ToolTip = 'Specifies the value of the PO Status field.';
                    ApplicationArea = All;
                }
                field("Ship Date"; Rec."Ship Date")
                {
                    ToolTip = 'Specifies the value of the Ship Date field.';
                    ApplicationArea = All;
                }
                field(CreatedDateTime; Rec.CreatedDateTime)
                {
                    ToolTip = 'Specifies the value of the CreatedDateTime field.';
                    ApplicationArea = All;
                }
                field(LastModifiedDateTime; Rec.LastModifiedDateTime)
                {
                    ToolTip = 'Specifies the value of the LastModifiedDateTime field.';
                    ApplicationArea = All;
                }
                field("Shipping Method"; Rec."Shipping Method")
                {
                    ToolTip = 'Specifies the value of the Shipping Method field.';
                    ApplicationArea = All;
                }
                field("Ship Via"; Rec."Ship Via")
                {
                    ToolTip = 'Specifies the value of the Ship Via field.';
                    ApplicationArea = All;
                }
                field(Discount; Rec.Discount)
                {
                    ToolTip = 'Specifies the value of the Discount field.';
                    ApplicationArea = All;
                }
                field("Cancel Date"; Rec."Cancel Date")
                {
                    ToolTip = 'Specifies the value of the Cancel Date field.';
                    ApplicationArea = All;
                }
                field("Payment Terms"; Rec."Payment Terms")
                {
                    ToolTip = 'Specifies the value of the Payment Terms field.';
                    ApplicationArea = All;
                }
                field("Total Amount"; Rec."Total Amount")
                {
                    ToolTip = 'Specifies the value of the Total Amount field.';
                    ApplicationArea = All;
                }
                field("IsLocal Purchase"; Rec."IsLocal Purchase")
                {
                    ToolTip = 'Specifies the value of the IsLocal Purchase field.';
                    ApplicationArea = All;
                }
                field(Destination; Rec.Destination)
                {
                    ToolTip = 'Specifies the value of the Destination field.';
                    ApplicationArea = All;
                }
                field(Orgin; Rec.Orgin)
                {
                    ToolTip = 'Specifies the value of the Orgin field.';
                    ApplicationArea = All;
                }
                field("Cost Type"; Rec."Cost Type")
                {
                    ToolTip = 'Specifies the value of the Cost Type field.';
                    ApplicationArea = All;
                }
                field("Special Remarks"; Rec."Special Remarks")
                {
                    ToolTip = 'Specifies the value of the Special Remarks field.';
                    ApplicationArea = All;
                }
                field("Shipping & Handling Remarks"; Rec."Shipping & Handling Remarks")
                {
                    ToolTip = 'Specifies the value of the Shipping & Handling Remarks field.';
                    ApplicationArea = All;
                }
                field("General Remarks"; Rec."General Remarks")
                {
                    ToolTip = 'Specifies the value of the General Remarks field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
