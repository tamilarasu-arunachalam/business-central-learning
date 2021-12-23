codeunit 50102 "Delete Student"
{
    TableNo = "Student";

    trigger OnRun()
    var
        StudentDetails: Record "Student Details";
        Student: Record "Student";
    begin
        // Delete
        StudentDetails.get(Rec."Student No");
        If StudentDetails.Delete() then
            Message(Text001, StudentDetails."Student No")
        else
            Message(Text002, StudentDetails."Student No");
    end;

    var
        myInt: Integer;
        StudentDetails: Record "Student Details";
        Text001: Label 'Student No. %1 is deleted';
        Text002: Label 'Student No. %1 is not deleted';
}
