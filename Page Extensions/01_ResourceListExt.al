pageextension 50101 "CSD Resource List Ext" extends "Resource List"
//CSD1.00 - 2018-10-08 - D. E. Veloper
{
    layout
    {
        modify(Type)
        {
            Visible = Showtype;
        }

        addafter(Type)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {

            }
            field("CSD Maximum Participants"; "CSD Maximum Participants")
            {
                Visible = ShowMaxField;
            }
        }
    }

    trigger OnOpenPage()

    begin
        FilterGroup(3);
        Showtype := (GetFilter(Type) = '');
        ShowMaxField := (GetFilter(Type) = format(Type::Machine));
        FilterGroup(0);
    end;

    var
        [InDataSet]
        Showtype: Boolean;
        [InDataSet]
        ShowMaxField: Boolean;
}