codeunit 50100 "My Code Unit"
{
    trigger OnRun()
    var
        Customer: Record Customer;
        GLEntry: Record "G/L Entry";
        Student: Record "Student";
        StudentDetails: Record "Student Details";
    begin
        // Bool := Customer.GET('01445544');
        // IF Customer.Get('01445544') THEN
        //     MESSAGE(Customer.Name)
        // ELSE
        //     ERROR('Does not exist');

        //setrange
        // Customer.SetRange(Name, 'New Concepts Furniture');
        // If Customer.FindLast then
        //     Message(Customer.Address);

        //setfilter
        // Customer.SetFilter("No.",'10000..60000');
        // Customer.SetFilter("No.",'%1..%2','10000','60000');

        //findlast
        If GLEntry.FindLast then
            MESSAGE('%1', GLEntry."Entry No.");

        //findfirst
        // If GLEntry.FindFirst then
        //     MESSAGE('%1', GLEntry."Entry No.");

        // Insert
        // Customer.Init();
        // Customer."No." := '1120';
        // Customer.Name := 'Tamil';
        // Customer."Phone No." := '9123456780';
        // Customer.Address := 'Tiruppur';
        // If Customer.Insert then
        //     Message(Text001, Customer."No.")
        // else
        //     Message(Text002, Customer."No.");

        // Modify
        // Customer.get('1120');
        // Customer.Address := 'Coimbatore';
        // Customer.Modify;

        // Calc field
        // Customer.get('01445544');
        // Customer.CalcFields(Balance, "Net Change");
        // Message('%1 & %2', Customer.Balance, Customer."Net Change");

        //Insert to student details
        StudentDetails.Init();
        // StudentDetails."Student No" := Rec.
        // StudentDetails."Student Name" := Student."Student Name";
        // StudentDetails."Student Place" := Student."Student Place";
        // StudentDetails.DOB := Student.DOB;
        // StudentDetails.Email := Student.Email;
        // StudentDetails.Qualification := Student.Qualification;
        // StudentDetails.District := Student.District;
        // StudentDetails.State := Student.State;
        // StudentDetails.Country := Student.Country;
        // If StudentDetails.Insert then
        //     Message(Text004, StudentDetails."Student No")
        // else
        //     Message(Text005, StudentDetails."Student No");

    end;


    var
        myInt: Integer;
        Text001: Label 'Customer No. %1 is inserted';
        Text002: Label 'Customer No. %1 is already exists';
        Text003: Label 'Customer No. %1 is modified';
        Text004: Label 'Student No. %1 is inserted';
        Text005: Label 'Student No. %1 is already exists';
}