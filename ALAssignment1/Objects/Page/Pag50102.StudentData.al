page 50102 "Student Data"
{
    ApplicationArea = All;
    Caption = 'Student Data';
    PageType = Document;
    SourceTable = Student;
    UsageCategory = Lists;
    CardPageId = "Student Card";
    PromotedActionCategories = 'New,Process,Manage,Insert,Modify,Delete,Post';
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Student No"; Rec."Student No")
                {
                    ToolTip = 'Specifies the value of the Person Id field';
                    ApplicationArea = All;
                }
                field("Student Name"; Rec."Student Name")
                {
                    ToolTip = 'Specifies the value of the Name field';
                    ApplicationArea = All;
                }
                field("Student Place"; Rec."Student Place")
                {
                    ToolTip = 'Specifies the value of the Place field';
                    ApplicationArea = All;
                }
                field(Email; Rec.Email)
                {
                    ToolTip = 'Specifies the value of the Email field';
                    ApplicationArea = All;
                }
                field(DOB; Rec.DOB)
                {
                    ToolTip = 'Specifies the value of the DOB field';
                    ApplicationArea = All;
                }
                field(Qualification; Rec.Qualification)
                {
                    ToolTip = 'Specifies the value of the Qualification field';
                    ApplicationArea = All;
                }
                field(District; Rec.District)
                {
                    ToolTip = 'Specifies the value of the District field';
                    ApplicationArea = All;
                }
                field(State; Rec.State)
                {
                    ToolTip = 'Specifies the value of the State field';
                    ApplicationArea = All;
                }
                field(Country; Rec.Country)
                {
                    ToolTip = 'Specifies the value of the Country field';
                    ApplicationArea = All;
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            group(ALFunctions)
            {
                action("My Code Unit")
                {
                    ApplicationArea = All;
                    Image = TestFile;
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = codeunit "My Code unit";

                    // trigger OnAction()
                    // begin

                    // end;
                }
                action("Insert")
                {
                    ApplicationArea = All;
                    Image = Insert;
                    Promoted = true;
                    PromotedCategory = Process;

                    trigger OnAction()
                    var
                        InsertStudent: Codeunit "Insert Student";
                    begin
                        InsertStudent.Run(Rec);
                    end;
                }
                action("Modify Student")
                {
                    ApplicationArea = All;
                    Image = Edit;
                    Promoted = true;
                    PromotedCategory = Process;

                    trigger OnAction()
                    var
                        ModifyStudent: Codeunit "Modify Student";
                    begin
                        ModifyStudent.Run(Rec);
                    end;
                }
                action("Delete Student")
                {
                    ApplicationArea = All;
                    Image = Delete;
                    Promoted = true;
                    PromotedCategory = Process;

                    trigger OnAction()
                    var
                        DeleteStudent: Codeunit "Delete Student";
                    begin
                        DeleteStudent.Run(Rec);
                    end;
                }
                action("Insert All")
                {
                    ApplicationArea = All;
                    Image = Insert;
                    Promoted = true;
                    PromotedCategory = Process;

                    trigger OnAction()
                    var
                        InsertStudent: Codeunit "Insert Student";
                    begin
                        InsertAll(Rec);
                    end;
                }
                action("Modify All")
                {
                    ApplicationArea = All;
                    Image = Edit;
                    Promoted = true;
                    PromotedCategory = Process;

                    trigger OnAction()
                    var
                        ModifyStudent: Codeunit "Modify Student";
                    begin
                        ModifyAllStudent();
                    end;
                }
                action("Delete All")
                {
                    ApplicationArea = All;
                    Image = Delete;
                    Promoted = true;
                    PromotedCategory = Process;

                    trigger OnAction()
                    var
                        DeleteStudent: Codeunit "Delete Student";
                    begin
                        DeleteAllStudent();
                    end;
                }
                action("Post Student")
                {
                    ApplicationArea = All;
                    Image = Delete;
                    Promoted = true;
                    PromotedCategory = Process;

                    trigger OnAction()
                    var
                        InsertStudent: Codeunit "Insert Student";
                    begin
                        PostAllStudent(Rec);
                    end;
                }
            }
        }
    }

    procedure DeleteAllStudent()

    var
        // EmployeeDetails: Record EmployeeDetails;
        // EmployeeInsertAll_Details: Record EmployeeInsertAll_Details;
        StudentDetailsAll: Record "Student Details All";
        StudentDetails: Record "Student Details";

    begin
        StudentDetails.DeleteAll();
        StudentDetailsAll.DeleteAll();
    end;

    procedure InsertAll(var Student: Record Student)
    var
        StudentDetailsAll: Record "Student Details All";

    begin
        if not Rec.FindSet() then
            repeat
                StudentDetailsAll."Student No" := Rec."Student No";
                StudentDetailsAll."Student Name" := Rec."Student Name";
                StudentDetailsAll.Insert();
            until Rec.Next() = 0;
    end;

    procedure ModifyAllStudent()
    var
        StudentDetailsAll: Record "Student Details All";
        Student: Record Student;

    begin
        StudentDetailsAll.ModifyAll(StudentDetailsAll."Student No", Rec."Student No");
        StudentDetailsAll.ModifyAll(StudentDetailsAll."Student Name", Rec."Student Name");
    end;

    procedure PostAllStudent(var Student: Record "Student")
    begin
        Option := 'Student,Post Student Details';

        Selected := DIALOG.StrMenu(Option, 1, 'Select any one');

        if Selected = 1 then
            InsertAll(Student);
        Message('Post Student Details, Student Posted successfully');
    end;

    var
        Option: Text[200];
        Selected: Integer;
        Student: Record Student;
}
