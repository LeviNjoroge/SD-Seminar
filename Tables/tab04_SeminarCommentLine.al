table 50104 "CSD Seminar Comment Line"
{
    DataClassification = ToBeClassified;
    Caption = 'Seminar Comment Line';
    LookupPageId = "CSD Seminar Comment List";
    DrillDownPageId = "CSD Seminar Comment List";
    
    fields
    {
        field(10;"Table Name"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Seminar, "Seminar Registration", "Posted Seminar Registration";
        }
        field(20; "Document Line No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(30; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = if("Table Name" = CONST(Seminar)) "CSD Seminar";
        }
        field(40; "Line No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(50; Date; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(60; Code; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(70; Comment; Text[80])
        {
            DataClassification = ToBeClassified;
        }
    }
}