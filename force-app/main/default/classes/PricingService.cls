public with sharing class PricingService {
    public static Decimal calculatePrice(
        Decimal unitPrice,
        Integer quantity
    ) {
        return unitPrice * quantity;
    }
}
