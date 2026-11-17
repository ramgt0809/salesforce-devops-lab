@IsTest
private class PricingServiceTest {
    @IsTest
    static void testCalculatePrice() {
        Test.startTest();
        Decimal result = PricingService.calculatePrice(125.50, 4);
        Test.stopTest();

        System.assertEquals(502.00, result, 'Price should equal unit price times quantity');
    }

    @IsTest
    static void testZeroQuantity() {
        System.assertEquals(0, PricingService.calculatePrice(125.50, 0),
            'A zero quantity should result in a zero total');
    }

    @IsTest
    static void testNegativeQuantity() {
        System.assertEquals(-50, PricingService.calculatePrice(25, -2),
            'The service currently multiplies signed quantities without validation');
    }
}
