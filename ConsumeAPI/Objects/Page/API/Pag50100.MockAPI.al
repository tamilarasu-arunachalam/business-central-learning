page 50100 "MockAPI"
{
    PageType = Card;
    Caption = 'My IP Address';
    ApplicationArea = All;
    Editable = false;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            field(UserId; getMyUserId())
            {
                ApplicationArea = All;
            }
            field(Id; getMyId())
            {
                ApplicationArea = All;
            }
            field(Title; getMyTitle())
            {
                ApplicationArea = All;
            }
            field(Completed; getMyStatus())
            {
                ApplicationArea = All;
            }
        }
    }
    // procedure getMyIP(): Text
    // var
    //     Client: HttpClient;
    //     Response: HttpResponseMessage;
    //     JObj: JsonObject;
    //     ResponseTxt: Text;
    // begin
    //     if Client.Get('https://jsonplaceholder.typicode.com/todos/2', Response) then
    //         if Response.IsSuccessStatusCode() then begin
    //             Response.Content.ReadAs(ResponseTxt);
    //             JObj.ReadFrom(ResponseTxt);
    //             exit(getFromJSON(JObj, 'ip'));
    //         end;
    // end;
    procedure getMyTitle(): Text
    var
        Client: HttpClient;
        Response: HttpResponseMessage;
        JObj: JsonObject;
        ResponseTxt: Text;
    begin
        if Client.Get('https://jsonplaceholder.typicode.com/todos/2', Response) then
            if Response.IsSuccessStatusCode() then begin
                Response.Content.ReadAs(ResponseTxt);
                JObj.ReadFrom(ResponseTxt);
                exit(getFromJSON(JObj, 'title'));
            end;
    end;

    procedure getMyUserId(): Text
    var
        Client: HttpClient;
        Response: HttpResponseMessage;
        JObj: JsonObject;
        ResponseTxt: Text;
    begin
        if Client.Get('https://jsonplaceholder.typicode.com/todos/2', Response) then
            if Response.IsSuccessStatusCode() then begin
                Response.Content.ReadAs(ResponseTxt);
                JObj.ReadFrom(ResponseTxt);
                exit(getFromJSON(JObj, 'userId'));
            end;
    end;

    procedure getMyId(): Text
    var
        Client: HttpClient;
        Response: HttpResponseMessage;
        JObj: JsonObject;
        ResponseTxt: Text;
    begin
        if Client.Get('https://jsonplaceholder.typicode.com/todos/2', Response) then
            if Response.IsSuccessStatusCode() then begin
                Response.Content.ReadAs(ResponseTxt);
                JObj.ReadFrom(ResponseTxt);
                exit(getFromJSON(JObj, 'id'));
            end;
    end;

    procedure getMyStatus(): Text
    var
        Client: HttpClient;
        Response: HttpResponseMessage;
        JObj: JsonObject;
        ResponseTxt: Text;
    begin
        if Client.Get('https://jsonplaceholder.typicode.com/todos/2', Response) then
            if Response.IsSuccessStatusCode() then begin
                Response.Content.ReadAs(ResponseTxt);
                JObj.ReadFrom(ResponseTxt);
                exit(getFromJSON(JObj, 'completed'));
            end;
    end;

    procedure getFromJSON(Obj: JsonObject; Member: Text): Text
    var
        Result: JsonToken;
    begin
        if Obj.Get(Member, Result) then
            exit(Result.AsValue().AsText());
    end;
}