codeunit 50105 SubscribeEvent
{
    var
        Text000: Label 'Amount is not more than 0';

    [EventSubscriber(ObjectType::Codeunit, 50104, 'OnCheckAmt', '', false, false)]
    local procedure ValidateAmount(Amount: Decimal)
    begin
        if Amount > 0 then
            Error(Text000);
    end;

    [EventSubscriber(ObjectType::Table, Database::"Sales Header", 'onAfterCopySellToCustomerAddressFieldsFromCustomer', '', false, false)]
    local procedure onAfterCopySellToCustomerAddressFieldsFromCustomer(var SalesHeader: Record "Sales Header"; SellToCustomer: Record Customer; CurrentFieldNo: Integer; var SkipBillToContact: Boolean)
    begin
        SalesHeader."Customer Home Page" := SellToCustomer."Home Page";
        SalesHeader."Customer Fax No." := SellToCustomer."Fax No.";
    end;
}
