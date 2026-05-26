tableextension 50100 "CSD ResourceExt" extends Resource
// CSD1.00 - 2018-01-01 - D. E. Veloper 
{
    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate()
            begin
                Rec.TestField("Unit Cost"); 
            end;
        }
        modify()
    }
    
    keys
    {
        // Add changes to keys here
    }
    
    fieldgroups
    {
        // Add changes to field groups here
    }
    
    var
        myInt: Integer;
}