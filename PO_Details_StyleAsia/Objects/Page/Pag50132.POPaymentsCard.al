page 50132 "PO Payments Card"
{
    Caption = 'PO Payments Card';
    PageType = Card;
    SourceTable = POPayments;
    // InsertAllowed=false;
    // ModifyAllowed=false;
    // DeleteAllowed=false;
    
    layout
    {
        area(content)
        {
            group(General)
            {
                field("Payment Number"; Rec."Payment Number")
                {
                    ToolTip = 'Specifies the value of the Payment Number field.';
                    ApplicationArea = All;
                    Editable=false;
                }
                field("Payment Type"; Rec."Payment Type")
                {
                    ToolTip = 'Specifies the value of the Payment Type field.';
                    ApplicationArea = All;
                    Editable=false;
                }
                field(SupplierCode; Rec.SupplierCode)
                {
                    ToolTip = 'Specifies the value of the SupplierCode field.';
                    ApplicationArea = All;
                    Editable=false;
                }
                field("PO Invoice Number"; Rec."PO Invoice Number")
                {
                    ToolTip = 'Specifies the value of the PO Invoice Number field.';
                    ApplicationArea = All;
                    Editable=false;
                }
                field(PONumber; Rec.PONumber)
                {
                    ToolTip = 'Specifies the value of the PONumber field.';
                    ApplicationArea = All;
                    Editable=false;
                }
                field("Payment Date"; Rec."Payment Date")
                {
                    ToolTip = 'Specifies the value of the Payment Date field.';
                    ApplicationArea = All;
                    Editable=false;
                }
                field("Payment Amount"; Rec."Payment Amount")
                {
                    ToolTip = 'Specifies the value of the Payment Amount field.';
                    ApplicationArea = All;
                    Editable=false;
                }
                field(IsPosted; Rec.IsPosted)
                {
                    ToolTip = 'Specifies the value of the IsPosted field.';
                    ApplicationArea = All;
                    Editable=false;
                }
                field("Posted Date"; Rec."Posted Date")
                {
                    ToolTip = 'Specifies the value of the Posted Date field.';
                    ApplicationArea = All;
                    Editable=false;
                }
                field("Payment Details"; Rec."Payment Details")
                {
                    ToolTip = 'Specifies the value of the Payment Details field.';
                    ApplicationArea = All;
                    Editable=false;
                }
                field(Remarks; Rec.Remarks)
                {
                    ToolTip = 'Specifies the value of the Remarks field.';
                    ApplicationArea = All;
                    Editable=false;
                }
                field(CreatedDateTime; Rec.CreatedDateTime)
                {
                    ToolTip = 'Specifies the value of the CreatedDateTime field.';
                    ApplicationArea = All;
                    Editable=false;
                }
                field(LastModifiedDateTime; Rec.LastModifiedDateTime)
                {
                    ToolTip = 'Specifies the value of the LastModifiedDateTime field.';
                    ApplicationArea = All;
                    Editable=false;
                }
            }
        }
    }
}
