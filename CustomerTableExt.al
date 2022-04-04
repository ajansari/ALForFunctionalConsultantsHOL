tableextension 50010 CustomerTableExt extends Customer
{
    fields
    {
        // Add changes to table fields here
        field(50001; "SIC Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            CaptionML = ENU = 'SIC Code';
        }
        field(50002; "Customer Type"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Undefined,"Large Accounts","Small Accounts";
            OptionCaptionML = ENU = ' ,Corporate,SMB', ENG = 'TBD,Enterprise,Small Business';
        }
        field(50003; "Elite Customer"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(50004; "Partnership Renewal Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(50005; "Account Comments"; Text[2048])
        {
            DataClassification = ToBeClassified;
        }
    }

    var
        myInt: Integer;
}