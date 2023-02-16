page 50104 "Users List"
{
    ApplicationArea = All;
    Caption = 'Users List';
    PageType = List;
    SourceTable = users;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(id; Rec.id)
                {
                    ApplicationArea = all;
                }
                field(name; Rec.name)
                {
                    ApplicationArea = all;
                }
                field(username; Rec.username)
                {
                    ApplicationArea = all;
                }
                field(email; Rec.email)
                {
                    ApplicationArea = all;
                }
                field(street; Rec.street)
                {
                }
                field(suite; Rec.suite)
                {
                    ApplicationArea = all;
                }
                field(city; Rec.city)
                {
                    ApplicationArea = all;
                }
                field(zipcode; Rec.zipcode)
                {
                    ApplicationArea = all;
                }
                field(lat; Rec.lat)
                {
                    ApplicationArea = all;
                }
                field(lon; Rec.lon)
                {
                    ApplicationArea = all;
                }
                field(phone; Rec.phone)
                {
                    ApplicationArea = all;
                }
                field(website; Rec.website)
                {
                    ApplicationArea = all;
                }
            }
        }
    }
    // action
    actions
    {
        area(Processing)
        {
            action("Call API")
            {
                ApplicationArea = All;


                trigger OnAction()
                var
                    http_Client: HttpClient;
                    httpResponseMsg: HttpResponseMessage;
                    response: text;
                begin
                    if http_Client.Get('https://jsonplaceholder.typicode.com/users', httpResponseMsg) then begin
                        httpResponseMsg.Content.ReadAs(response);
                        readResultFromResponse(response);
                        // Message(response);
                    end;
                end;
            }
        }
    }
    // procedure
    local procedure readResultFromResponse(response: Text)
    var
        json_Array: JsonArray;
        json_Object: JsonObject;
        json_Value: JsonValue;
        json_Token: JsonToken;
        i: Integer;
        recUser: Record users;
        userId: Integer;
        jToken: JsonToken;
    begin
        recUser.Reset();
        if recUser.FindLast() then
            userId := userId + 1
        else
            userId := 1;
        // read the response 
        if json_Token.ReadFrom(response) then begin
            if json_Token.IsArray then begin
                json_Array := json_Token.AsArray();
                for i := 0 to json_Array.Count - 1 do begin
                    // get first record from array
                    json_Array.Get(i, json_Token);

                    if json_Token.IsObject then begin
                        // convert json token to object
                        json_Object := json_Token.AsObject();
                        recUser.Reset();
                        recUser.Init();
                        recUser.id := userId;

                        // read json value based on key
                        if json_Object.Get('id', jToken) then begin
                            // check json token has value
                            if jToken.IsValue then begin
                                // Message(jToken.AsValue().AsText());
                                recUser.recordID := jToken.AsValue().AsInteger();
                            end;
                        end;
                        // name
                        if getResultJson(json_Object, 'name', json_Value) then
                            recUser.name := json_Value.AsText();
                        // username
                        if getResultJson(json_Object, 'username', json_Value) then
                            recUser.username := json_Value.AsText();
                        // email
                        if getResultJson(json_Object, 'email', json_Value) then
                            recUser.email := json_Value.AsText();
                        // company
                        // if json_Object.Get('company', json_Token) then begin
                        //     if json_Token.IsObject then begin
                        //         json_Object := json_Token.AsObject();
                        //         if getResultJson(json_Object, 'name', json_Value) then
                        //             recUser.name := json_Value.AsText();
                        //         if getResultJson(json_Object, 'catchPhrase', json_Value) then
                        //             recUser.catchphrase := json_Value.AsText();
                        //         if getResultJson(json_Object, 'bs', json_Value) then
                        //             recUser.bs := json_Value.AsText();
                        //     end;
                        // end;
                        // phone
                        if getResultJson(json_Object, 'phone', json_Value) then
                            recUser.phone := json_Value.AsText();
                        // website
                        if getResultJson(json_Object, 'website', json_Value) then
                            recUser.website := json_Value.AsText();
                        // address
                        if json_Object.Get('address', json_Token) then begin
                            if json_Token.IsObject then begin
                                json_Object := json_Token.AsObject();
                                if getResultJson(json_Object, 'street', json_Value) then
                                    recUser.street := json_Value.AsText();
                                if getResultJson(json_Object, 'suite', json_Value) then
                                    recUser.suite := json_Value.AsText();
                                if getResultJson(json_Object, 'city', json_Value) then
                                    recUser.city := json_Value.AsText();
                                if getResultJson(json_Object, 'zipcode', json_Value) then
                                    recUser.zipcode := json_Value.AsText();
                                if json_Object.Get('geo', json_Token) then begin
                                    if json_Token.IsObject then begin
                                        json_Object := json_Token.AsObject();
                                        if getResultJson(json_Object, 'lat', json_Value) then
                                            recUser.lat := json_Value.AsText();
                                        if getResultJson(json_Object, 'lng', json_Value) then
                                            recUser.lon := json_Value.AsText();
                                    end;
                                end;
                            end;
                        end;
                    end;
                    recUser.Insert();
                    userId += 1;
                end;
            end;
        end;
    end;

    local procedure getResultJson(jObj: JsonObject; keyName: Text; var jValue: JsonValue): Boolean
    var
        json_Token: JsonToken;
    begin
        if not jObj.Get(keyName, json_Token) then exit;
        jValue := json_Token.AsValue();
        exit(true);
    end;
}