pageextension 50103 CustomerCardExt extends "Customer Card"
{
    layout
    {
        modify("Credit Limit (LCY)")
        {
            trigger OnAfterValidate()
            begin
                IntegrationEvent.OnCheckAmt(Rec."Credit Limit (LCY)");
            end;
        }
    }
    var
        IntegrationEvent: Codeunit IntegrationEvent;
}
