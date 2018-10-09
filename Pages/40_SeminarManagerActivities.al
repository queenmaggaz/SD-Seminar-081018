page 50140 "CSD Seminar Manager Activities"

// CSD1.00 - 2018-10-09 - D. E. Veloper
//    Chapter 10 - Lab 1-2
//      - Created new page

{
    PageType = CardPart;
    SourceTable = "CSD Seminar Cue";
    Caption = 'Seminar Manager Activities';
    Editable = false;

    layout
    {
        area(Content)
        {
            cuegroup(Registrations)
            {
                Caption = 'Registrations';
                field(Planned; Planned)
                {

                }
                field(Registered; Registered)
                {

                }
                actions
                {
                    action(New)
                    {
                        Caption = 'New';
                        RunObject = page "CSD Seminar Registration";
                        RunPageMode = Create;
                    }
                }
            }
            cuegroup("For Posting")
            {
                field(Closed; Closed)
                {

                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        if not get then begin
            init;
            insert;
        end;
    end;
}