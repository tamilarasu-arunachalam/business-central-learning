page 50122 "PO_cards"
{
    Caption = 'Purchase Order Card';
    PageType = Document;
    SourceTable = PO_headers;
    InsertAllowed = false;
    ModifyAllowed = false;
    DeleteAllowed = false;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("PO Number"; Rec."PO Number")
                {
                    ToolTip = 'Specifies the value of the PO Number field.';
                    ApplicationArea = All;
                    Editable = false;
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
                    Editable = false;
                }
                field("Supplier Contact"; Rec."Supplier Contact")
                {
                    ToolTip = 'Specifies the value of the Supplier Contact field.';
                    ApplicationArea = All;
                    Editable = false;
                }
                field("PO Status"; Rec."PO Status")
                {
                    ToolTip = 'Specifies the value of the PO Status field.';
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Ship Date"; Rec."Ship Date")
                {
                    ToolTip = 'Specifies the value of the Ship Date field.';
                    ApplicationArea = All;
                    Editable = false;
                }
                field(CreatedDateTime; Rec.CreatedDateTime)
                {
                    ToolTip = 'Specifies the value of the CreatedDateTime field.';
                    ApplicationArea = All;
                    Editable = false;
                }
                field(LastModifiedDateTime; Rec.LastModifiedDateTime)
                {
                    ToolTip = 'Specifies the value of the LastModifiedDateTime field.';
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Shipping Method"; Rec."Shipping Method")
                {
                    ToolTip = 'Specifies the value of the Shipping Method field.';
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Ship Via"; Rec."Ship Via")
                {
                    ToolTip = 'Specifies the value of the Ship Via field.';
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Discount; Rec.Discount)
                {
                    ToolTip = 'Specifies the value of the Discount field.';
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Cancel Date"; Rec."Cancel Date")
                {
                    ToolTip = 'Specifies the value of the Cancel Date field.';
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Payment Terms"; Rec."Payment Terms")
                {
                    ToolTip = 'Specifies the value of the Payment Terms field.';
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Total Amount"; Rec."Total Amount")
                {
                    ToolTip = 'Specifies the value of the Total Amount field.';
                    ApplicationArea = All;
                    Editable = false;
                }
                field("IsLocal Purchase"; Rec."IsLocal Purchase")
                {
                    ToolTip = 'Specifies the value of the IsLocal Purchase field.';
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Destination; Rec.Destination)
                {
                    ToolTip = 'Specifies the value of the Destination field.';
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Orgin; Rec.Orgin)
                {
                    ToolTip = 'Specifies the value of the Orgin field.';
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Cost Type"; Rec."Cost Type")
                {
                    ToolTip = 'Specifies the value of the Cost Type field.';
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Special Remarks"; Rec."Special Remarks")
                {
                    ToolTip = 'Specifies the value of the Special Remarks field.';
                    ApplicationArea = All;
                    MultiLine = true;
                    Editable = false;
                }
                field("Shipping & Handling Remarks"; Rec."Shipping & Handling Remarks")
                {
                    ToolTip = 'Specifies the value of the Shipping & Handling Remarks field.';
                    ApplicationArea = All;
                    Editable = false;
                }
                field("General Remarks"; Rec."General Remarks")
                {
                    ToolTip = 'Specifies the value of the General Remarks field.';
                    ApplicationArea = All;
                    MultiLine = true;
                    Editable = false;
                }
            }
            group("Purchase Order Line")
            {
                part(POLine; "Purchase Order Card Line")
                {
                    SubPageLink = "PO Number" = field("PO Number");
                    ApplicationArea = all;
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(Shipment)
            {
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = All;
                Image = Shipment;
                RunObject = page "PO Shipment List";
                // RunPageLink="Supplier Code"=field("Supplier Code"); 
                trigger OnAction()
                begin

                end;
            }
            action(Payment)
            {
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = All;
                Image = Payment;
                RunObject = page "PO Payments Lists";
                RunPageLink=PONumber=field("PO Number"); 
                trigger OnAction()
                begin
                end;
            }
        }
    }
}
