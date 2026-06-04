page 50106 "CSD Seminar Comment Sheet"
{
    Caption = 'Seminar Comment Sheet';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "CSD Seminar Comment Line";
    
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