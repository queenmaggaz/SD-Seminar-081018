table 50140 "CSD Seminar Cue"

// CSD1.00 - 2018-10-09 - D. E. Veloper
//  Chapter 10 - Lab 1-1
//      - Created new page
{
    DataClassification = ToBeClassified;
    Caption = 'Seminar Cue';

    fields
    {
        field(10; "Primary Key"; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Primary Key';
        }
        field(20; Planned; Integer)
        {
            Caption = 'Planned';
            FieldClass = FlowField;
            CalcFormula = count ("CSD Seminar Reg. Header" where (Status = const (Planning)));
        }
        field(30; Registered; Integer)
        {
            Caption = 'Registered';
            FieldClass = FlowField;
            CalcFormula = count ("CSD Seminar Reg. Header" where (Status = const (Registration)));
        }
        field(40; Closed; Integer)
        {
            Caption = 'Closed';
            FieldClass = FlowField;
            CalcFormula = count ("CSD Seminar Reg. Header" where (Status = const (Closed)));
        }
    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
}