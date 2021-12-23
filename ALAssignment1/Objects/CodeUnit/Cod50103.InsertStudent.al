codeunit 50103 "Insert Student"
{
    TableNo = Student;

    trigger OnRun()
    begin
        If StudentDetails.FindSet() then
            repeat
                StudentDetails.Init();
                StudentDetails."Student No" := Rec."Student No";
                StudentDetails."Student Name" := Rec."Student Name";
                StudentDetails.Qualification := Rec.Qualification;
                StudentDetails.DOB := Rec.DOB;
                StudentDetails.Email := Rec.Email;
                StudentDetails."Student Place" := Rec."Student Place";
                StudentDetails.District := Rec.District;
                StudentDetails.State := Rec.State;
                StudentDetails.Country := Rec.Country;
                StudentDetails.Insert();
            until StudentDetails.Next() = 0;
    end;

    var
        StudentDetails: Record "Student Details";
        myInt: Integer;

        Text001: Label 'Student No. %1 is inserted';
        Text002: Label 'Student No. %1 is not inserted';
}