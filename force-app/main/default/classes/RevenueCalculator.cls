
public with sharing class RevenueCalculator {

    public static Decimal calculateTotal(
        Decimal unitPrice,
        Integer quantity
    ) {
        if (unitPrice == null || quantity == null) {
            throw new IllegalArgumentException(
                'Price and quantity are required'
            );
        }

        return unitPrice * quantity;
    }
}
