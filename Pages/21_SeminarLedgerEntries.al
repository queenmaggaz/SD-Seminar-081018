page 50121 "CSD Seminar Ledger Entries"
// CSD1.00 - 2018-01-01 - D. E. Veloper
// Chapter 7 - Lab 2-9

{
    Caption='Seminar Ledger Entries';
    PageType = List;
    SourceTable = "CSD Seminar Ledger Entry";
    Editable=false;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Posting Date";"Posting Date")
                {
                }
                field("Document No.";"Document No.")
                {
                }
                field("Document Date";"Document Date")
                {
                    Visible=false;
                }
                field("Entry Type";"Entry Type")
                {
                }
                field("Seminar No.";"Seminar No.")
                {
                }
                field(Description;Description)
                {
                }
                field("Bill-to Customer No.";"Bill-to Customer No.")
                {
                }
                field("Charge Type";"Charge Type")
                {
                }
                field(Type;Type)
                {
                }
                field(Quantity;Quantity)
                {
                }
                field("Unit Price";"Unit Price")
                {
                }
                field("Total Price";"Total Price")
                {
                }
                field(Chargeable;Chargeable)
                {
                }
                field("Participant Contact No.";"Participant Contact No.")
                {
                }
                field("Participant Name";"Participant Name")
                {
                }
                field("Instructor Resource No.";"Instructor Resource No.")
                {
                }
                field("Room Resource No.";"Room Resource No.")
                {
                }
                field("Starting Date";"Starting Date")
                {
                }
                field("Seminar Registration No.";"Seminar Registration No.")
                {
                }
                field("Entry No.";"Entry No.")
                {     
                }
            }
        }
        area(factboxes)
        {
            systempart("Notes";Notes)
            {
            }
            systempart("links";Links)
            {
            }
        }
    }
    actions
    {
        area(navigation)
        {
            group("&Seminar Registration")
            {
                Caption = '&Seminar Registration';
                action("Co&mments")
                {
                    Caption = 'Co&mments';
                    Image = Comment;
                    RunObject = page "CSD Seminar Comment List";
                    RunPageLink = "No."=Field("Document No.");
                    RunPageView = where("Table Name"=const("Posted Seminar Registration"));
                }
                action("&Charges")
                {
                    Caption = '&Charges';
                    Image = Costs;
                    RunObject = Page  "CSD Posted Seminar Charges";
                    RunPageLink = "Document No."=Field("Document No.");
                }
            }
        }

        area(Processing)
        {
            action("&Navigate")
            {
                Caption = '&Navigate';
                Image = Navigate;
                Promoted = true;
                PromotedCategory = Process;
                
                trigger OnAction()
                var
                    Navigate : Page Navigate;
                begin
                    Navigate.SetDoc("Posting Date","Document No.");
                    Navigate.Run;
                end;
            }
        }
    }
}
