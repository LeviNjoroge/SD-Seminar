pageextension 50105 "CSD ResourceListExt" extends "Resource List"
// CSD1.00 - 2018-01-01 - D. E. Veloper
{
    layout
    {
        modify(Type){
            Visible = ShowType;
        }
        addafter(Type){
            field("CSD Resource Type"; Rec."CSD Resource Type"){
                ApplicationArea = All;
            }
            field("CSD Maximum Participants"; Rec."CSD Maximum Participants"){
                Visible = ShowMaxField;
                ApplicationArea = All;
            }
        }
    }
    
    trigger OnOpenPage()
    begin
        ShowType := (Rec.GetFilter(Rec.Type)='');
        ShowMaxField := (Rec.GetFilter(Rec.Type)=format(Rec.Type::machine));
    end;

    var
        [InDataSet]
        ShowMaxField : Boolean;
        [InDataSet]
        ShowType : Boolean;
}