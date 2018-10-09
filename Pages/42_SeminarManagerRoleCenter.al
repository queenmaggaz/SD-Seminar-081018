page 50142 "CSD Seminar Manager RoleCenter"
{
    PageType = RoleCenter;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Seminar Manager RoleCenter';
    
    layout
    {
        area(RoleCenter)
        {
            group(Column1)
            {
                part(Activities;"CSD Seminar Manager Activities")
                {

                }
                part(MySeminars;"CSD My Seminars")
                {

                }
            }

            group(Column2)
            {
                part(MyCustomers;"My Customers")
                {

                }
                systempart(MyNotifications;MyNotes)
                {

                }
                part(ReportInbox;"Report Inbox Part")
                {

                }
            }
        }
    }
    
    actions
    {
        area(Embedding)
        {
            action(SeminarRegistrations)
            {
               Caption = 'Seminar Registrations';
               Image = List;
               RunObject = page "CSD Posted Seminar Reg. List";
               ToolTip = 'Create seminar registrations';
            }

            action(Seminars)
            {
                Caption = 'Seminars';
                Image = List;
                RunObject = page "CSD Seminar List";
                ToolTip = 'View all seminars';
            }

            action(Instructors)
            {
                
            }
        }
    }
    
    var
        myInt: Integer;
}