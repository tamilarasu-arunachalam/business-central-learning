/// <summary>
/// Page PO_PaymentsList (ID 50100).
/// </summary>
page 50100 PO_PaymentsList
{
    ApplicationArea = All;
    Caption = 'PO_PaymentsList';
    PageType = List;
    SourceTable = PO_Payments;
    UsageCategory = Lists;
    CardPageId=POPaymentsPage;
    layout
    {
        area(content)
        {
            repeater(General)
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
                }
                field(Remarks; Rec.Remarks)
                {
                    ToolTip = 'Specifies the value of the Remarks field.';
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
            }
        }
    }
}
