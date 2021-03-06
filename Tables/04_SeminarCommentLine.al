table 50104 "CSD Seminar Comment Line"
{
    Caption = 'Seminar Comment Line';
    LookupPageId = "CSD Seminar Comment List";
    DrillDownPageId = "CSD Seminar Comment List";

    fields
    {
        field(10; "Table Name"; Option)
        {
            Caption = 'Table Name';
            OptionMembers = "Seminar","Seminar Registration","Posted Seminar Registration";
            OptionCaption = 'Seminar,Seminar Registration,Posted Seminar Registration';
        }
        field(20; "Document Line No."; Integer)
        {
            Caption = 'Document Line No.';
        }
        field(30; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = if ("Table Name" = const (Seminar)) "CSD Seminar" else
            if ("Table Name" = const ("Seminar Registration")) "CSD Seminar Reg. Header";
        }
        field(40; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(50; "Date"; date)
        {
            Caption = 'Date';
        }
        field(60; "Code"; Code[10])
        {
            Caption = 'Code';
        }
        field(70; "Comment"; Text[80])
        {
            Caption = 'Comment';
        }
    }

    keys
    {
        key(PK; "Table Name", "Document Line No.", "No.", "Line No.")
        {
            Clustered = true;
        }
    }
    procedure SetUpNewLine()
    var
        SeminarCommentline: Record "CSD Seminar Comment Line";
    begin
        SeminarCommentline.SetRange("Table Name", "Table Name");
        SeminarCommentline.SetRange("No.", "No.");
        SeminarCommentline.SetRange("Document Line No.", "Document Line No.");
        SeminarCommentline.SetRange(Date, WorkDate);
        if SeminarCommentline.IsEmpty() then
            date := WorkDate;
    end;
}