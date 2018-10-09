codeunit 50102 "CSD Seminar Reg Printed"
// Chapter 0 - Lab 1-2
//      - Added Codeunit

{
    TableNo = "CSD Seminar Reg. Header";

    trigger OnRun()
    begin
        Find;
        "No. Printed" += 1;
        Modify;
        Commit;
    end;
}