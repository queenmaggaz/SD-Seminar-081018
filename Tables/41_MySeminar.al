table 50141 "CSD My Seminar"

// CSD1.00 - 2018-10-09 - D. E. Veloper
//   Chapter 10 - Lab 1-3
//      - Created new page
{
    DataClassification = ToBeClassified;
    Caption = 'My Seminars';

    fields
    {
        field(10; "User ID"; Code[50])
        {
            Caption = 'User ID';
            TableRelation = User;
            DataClassification = ToBeClassified;
        }
        field(20; "Seminar No."; Code[20])
        {
            Caption = 'Seminar No.';
            DataClassification = ToBeClassified;
            TableRelation = "CSD Seminar";
        }
    }

    keys
    {
        key(PK; "User ID", "Seminar No.")
        {
            Clustered = true;
        }
    }
}