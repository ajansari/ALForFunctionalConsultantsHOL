page 50012 "Consultant List"
{
    PageType = List;
    CaptionML = ENU = 'Consultants';
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = Consultant;
    CardPageId = "Consultant Card";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Consultant ID"; "Consultant ID")
                {
                    ApplicationArea = All;
                }
                field(Name; Name)
                {
                    ApplicationArea = All;
                }
                field(Title; Title)
                {
                    ApplicationArea = All;
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Reporting)
        {
            //Here, we use a direct call to the report object
            action("Trial Balance Report - Direct call")
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Report.Run(Report::"Trial Balance");
                end;
            }
            //Here, we use a variable to call the report object
            action("Trial Balance Report - Call using Variable")
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    TrialBalanceReport.Run;
                end;
            }
            action("Update Blank Titles")
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    ConsultantTitleProcRep.Run;
                end;
            }
        }
        area(Navigation)
        {
            //Here, we use a variable and a record filter to call the Resource Card page, filtered on the Resouce Code
            //that is set on the Consultant record
            action("View Resource")
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    ResourceRec.GET("Resource Code");
                    ResourceCard.SetRecord(ResourceRec);
                    ResourceCard.Run;
                    ResourceRec.Reset();
                end;
            }
        }
    }

    var
        TrialBalanceReport: Report "Trial Balance";
        ResourceRec: Record "Resource";
        ResourceCard: Page "Resource Card";
        ConsultantTitleProcRep: Report "Update Blank Consultant Titles";
}