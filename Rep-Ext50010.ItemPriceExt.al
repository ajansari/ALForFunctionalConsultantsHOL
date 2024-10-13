reportextension 50010 ItemPriceExtExample extends "Item Price List"
{
    dataset
    {
        add(Item)
        {
            column(ReplenishmentSystem2; "Replenishment System")
            {
            }
        }
    }
    rendering
    {
        layout(MyLayoutName)
        {
            Type = RDLC;
            LayoutFile = 'naneyourpath.rdl';
        }
    }
}
