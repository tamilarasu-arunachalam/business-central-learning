page 50101 POPaymentsPage
{
    Caption = 'POPaymentsPage';
    PageType = Card;
    SourceTable = PO_Payments;
    
    layout
    {
        area(content)
        {
            group("GENERAL")
            {
                field("Payment Number"; Rec."Payment Number")
                {
                    ToolTip = 'Specifies the value of the Payment Number field.';
                    ApplicationArea = All;
                }
                field("Payment Type"; Rec."Payment Type")
                {
                    ToolTip = 'Specifies the value of the Payment Type field.';
                    ApplicationArea = All;
                }
                field(SupplierCode; Rec.SupplierCode)
                {
                    ToolTip = 'Specifies the value of the SupplierCode field.';
                    ApplicationArea = All;
                }
                field("PO Invoice Number"; Rec."PO Invoice Number")
                {
                    ToolTip = 'Specifies the value of the PO Invoice Number field.';
                    ApplicationArea = All;
                }
                field(PONumber; Rec.PONumber)
                {
                    ToolTip = 'Specifies the value of the PONumber field.';
                    ApplicationArea = All;
                }
                field("Payment Date"; Rec."Payment Date")
                {
                    ToolTip = 'Specifies the value of the Payment Date field.';
                    ApplicationArea = All;
                }
                field("Payment Amount"; Rec."Payment Amount")
                {
                    ToolTip = 'Specifies the value of the Payment Amount field.';
                    ApplicationArea = All;
                }
                field(IsPosted; Rec.IsPosted)
                {
                    ToolTip = 'Specifies the value of the IsPosted field.';
                    ApplicationArea = All;
                }
                field("Posted Date"; Rec."Posted Date")
                {
                    ToolTip = 'Specifies the value of the Posted Date field.';
                    ApplicationArea = All;
                }
                field("Payment Details"; Rec."Payment Details")
                {
                    ToolTip = 'Specifies the value of the Payment Details field.';
                    ApplicationArea = All;
                    MultiLine=true;
                }
                field(Remarks; Rec.Remarks)
                {
                    ToolTip = 'Specifies the value of the Remarks field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
