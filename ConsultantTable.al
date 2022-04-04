table 50011 Consultant
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Consultant ID"; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; Name; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Title; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Record Creation Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Resource Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Resource."No.";
        }
    }

    keys
    {
        key(PK; "Consultant ID")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin
        "Record Creation Date" := TODAY;
    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}