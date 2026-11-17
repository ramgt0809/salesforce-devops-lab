
@IsTest
private class RevenueCalculatorTest {

    @IsTest
    static void testCalculateTotal() {
        Decimal result =
            RevenueCalculator.calculateTotal(100, 5);

        System.assertEquals(500, result);
    }

    @IsTest
    static void testZeroQuantity() {
        Decimal result =
            RevenueCalculator.calculateTotal(100, 0);

        System.assertEquals(0, result);
    }
}