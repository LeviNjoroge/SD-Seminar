page 50107 "CSD Seminar Comment List"
{
    Caption = 'Seminar Comment List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "CSD Seminar Comment Line";
    Editable = false;
    
    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Date; Rec.Date)
                {
                    ApplicationArea = All;
                }
                field(Code; Rec.Code)
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field(Comment; Rec.Comment)
                {
                    ApplicationArea = All;
                }
                
            }
        }
    }
    
    var
        myInt: Integer;
}