page 50141 "CSD My Seminars"
{
    PageType = ListPart;
    SourceTable = "CSD My Seminar";
    Caption = 'My Seminars';

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Seminar No."; "Seminar No.")
                {

                }
                field(Name; CSDSeminar.Name)
                {

                }
                field(Duration; CSDSeminar."Seminar Duration")
                {

                }
                field(Price; CSDSeminar."Seminar Price")
                {

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Open)
            {
                trigger OnAction();
                begin
                    OpenSeminarCard;
                end;
            }
        }
    }

    var
        CSDSeminar: Record "CSD Seminar";

    trigger OnOpenPage()
    begin
        SetRange("User ID", UserId);
    end;

    trigger OnAfterGetRecord()
    begin
        if CSDSeminar.Get("Seminar No.") then;
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        Clear(CSDSeminar);
    end;

    local procedure OpenSeminarCard()
    begin
        if CSDSeminar."No." <> '' then
            page.Run(page::"CSD Seminar Card", CSDSeminar);
    end;
}