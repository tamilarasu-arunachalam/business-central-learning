page 50128 "PO Invoice List"
{
    ApplicationArea = All;
    Caption = 'PO Invoice List';
    PageType = List;
    SourceTable = "PO Invoice Header";
    UsageCategory = Lists;
    CardPageId="PO Invoice Card";
    InsertAllowed=false;
    ModifyAllowed=false;
    DeleteAllowed=false;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("PO Invoice Number"; Rec."PO Invoice Number")
                {
                    ToolTip = 'Specifies the value of the PO Invoice Number field.';
                    ApplicationArea = All;
                }
                field("PO Invoice Date"; Rec."PO Invoice Date")
                {
                    ToolTip = 'Specifies the value of the PO Invoice Date field.';
                    ApplicationArea = All;
                }
                field("Supplier Invoice Number"; Rec."Supplier Invoice Number")
                {
                    ToolTip = 'Specifies the value of the Supplier Invoice Number field.';
                    ApplicationArea = All;
                }
                field("Supplier Invoice Date"; Rec."Supplier Invoice Date")
                {
                    ToolTip = 'Specifies the value of the Supplier Invoice Date field.';
                    ApplicationArea = All;
                }
                field("Due Date"; Rec."Due Date")
                {
                    ToolTip = 'Specifies the value of the Due Date field.';
                    ApplicationArea = All;
                }
                field(SupplierCode; Rec.SupplierCode)
                {
                    ToolTip = 'Specifies the value of the SupplierCode field.';
                    ApplicationArea = All;
                }
                field("Billing Address Type"; Rec."Billing Address Type")
                {
                    ToolTip = 'Specifies the value of the Billing Address Type field.';
                    ApplicationArea = All;
                }
                field("Billing Address Street1"; Rec."Billing Address Street1")
                {
                    ToolTip = 'Specifies the value of the Billing Address Street1 field.';
                    ApplicationArea = All;
                }
                field("Billing Address Street2"; Rec."Billing Address Street2")
                {
                    ToolTip = 'Specifies the value of the Billing Address Street2 field.';
                    ApplicationArea = All;
                }
                field("Billing Address Street3"; Rec."Billing Address Street3")
                {
                    ToolTip = 'Specifies the value of the Billing Address Street3 field.';
                    ApplicationArea = All;
                }
                field("Billing Address Street4"; Rec."Billing Address Street4")
                {
                    ToolTip = 'Specifies the value of the Billing Address Street4 field.';
                    ApplicationArea = All;
                }
                field("Billing Address City"; Rec."Billing Address City")
                {
                    ToolTip = 'Specifies the value of the Billing Address City field.';
                    ApplicationArea = All;
                }
                field("Billing Address State"; Rec."Billing Address State")
                {
                    ToolTip = 'Specifies the value of the Billing Address State field.';
                    ApplicationArea = All;
                }
                field("Billing Address Country"; Rec."Billing Address Country")
                {
                    ToolTip = 'Specifies the value of the Billing Address Country field.';
                    ApplicationArea = All;
                }
                field("Billing Address Zipcode"; Rec."Billing Address Zipcode")
                {
                    ToolTip = 'Specifies the value of the Billing Address Zipcode field.';
                    ApplicationArea = All;
                }
                field("Supplier Contact First Name"; Rec."Supplier Contact First Name")
                {
                    ToolTip = 'Specifies the value of the Supplier Contact First Name field.';
                    ApplicationArea = All;
                }
                field("Supplier Contact Last Name"; Rec."Supplier Contact Last Name")
                {
                    ToolTip = 'Specifies the value of the Supplier Contact Last Name field.';
                    ApplicationArea = All;
                }
                field(PaymentTermsId; Rec.PaymentTermsId)
                {
                    ToolTip = 'Specifies the value of the PaymentTermsId field.';
                    ApplicationArea = All;
                }
                field(PaymentTerm; Rec.PaymentTerm)
                {
                    ToolTip = 'Specifies the value of the PaymentTerm field.';
                    ApplicationArea = All;
                }
                field("Bank Reference"; Rec."Bank Reference")
                {
                    ToolTip = 'Specifies the value of the Bank Reference field.';
                    ApplicationArea = All;
                }
                field("Paid Status"; Rec."Paid Status")
                {
                    ToolTip = 'Specifies the value of the Paid Status field.';
                    ApplicationArea = All;
                }
                field(IsPosted; Rec.IsPosted)
                {
                    ToolTip = 'Specifies the value of the IsPosted field.';
                    ApplicationArea = All;
                }
                field("Total Invoice Amount"; Rec."Total Invoice Amount")
                {
                    ToolTip = 'Specifies the value of the Total Invoice Amount field.';
                    ApplicationArea = All;
                }
                field(Discount; Rec.Discount)
                {
                    ToolTip = 'Specifies the value of the Discount field.';
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
