report 50011 "Update Blank Consultant Titles"
{
    UsageCategory = Administration;
    ApplicationArea = All;
    UseRequestPage = true;
    ProcessingOnly = true;

    dataset
    {
        dataitem(ConsultantTable; Consultant)
        {
            trigger OnAfterGetRecord()
            var
            //myInt: Integer;
            begin
                if ConsultantTable.Title = '' then
                    ConsultantTable.Title := PlaceholderTitle;
                ConsultantTable.Modify();
            end;

            trigger OnPostDataItem()
            begin
                Message('Update completed.');
            end;
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(Consultant)
                {
                    field("Enter Placeholder Title for blank values"; PlaceholderTitle)
                    {
                        ApplicationArea = All;

                    }
                }
            }
        }
    }

    var
        PlaceholderTitle: Code[20];
}