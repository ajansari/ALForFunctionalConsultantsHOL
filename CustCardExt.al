pageextension 50010 CustomerCardExt extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        addafter(Name)
        {
            field(Name2; "Name 2")
            {
                ApplicationArea = All;
                CaptionML = ENU = 'DBA Name';
            }
        }
        addafter("Salesperson Code")
        {
            field(SICCode; "SIC Code")
            {
                ApplicationArea = All;
                ShowMandatory = true;
                Importance = Promoted;
                ToolTipML = ENU = 'Please enter the US Standard Industry Code for this Customer. This field is mandatory.';
            }
            field(PartnerRenewalDate; "Partnership Renewal Date")
            {
                ApplicationArea = All;
                Visible = false;
            }
            field(CustomerType; "Customer Type")
            {
                ApplicationArea = All;
                Importance = Additional;
            }
            field(EliteCustomer; "Elite Customer")
            {
                ApplicationArea = All;
                Importance = Promoted;
            }
            field(AcctComments; "Account Comments")
            {
                ApplicationArea = All;
            }
        }

    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}