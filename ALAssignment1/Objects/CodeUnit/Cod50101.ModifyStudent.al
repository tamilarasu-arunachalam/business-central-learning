codeunit 50101 "Modify Student"
{
    TableNo = Student;
    trigger OnRun()

    begin
        // Modify
        StudentDetails.get(Rec."Student No");
        StudentDetails."Student Name" := Rec."Student Name";
        StudentDetails."Student Place" := Rec."Student Place";
        StudentDetails.DOB := Rec.DOB;
        StudentDetails.Email := Rec.Email;
        StudentDetails.Qualification := Rec.Qualification;
        StudentDetails.District := Rec.District;
        StudentDetails.State := Rec.State;
        StudentDetails.Country := Rec.Country;
        If StudentDetails.Modify() then
            Message(Text001, StudentDetails."Student No")
        else
            Message(Text002, StudentDetails."Student No");
    end;

    var
        myInt: Integer;
        StudentDetails: Record "Student Details";
        Text001: Label 'Student No. %1 is modified';
        Text002: Label 'Student No. %1 is not modified';
}
