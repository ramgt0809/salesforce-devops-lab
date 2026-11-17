@IsTest
private class RevenueCalculatorTest {

    @IsTest
    static void testCalculateTotal() {
        Decimal result = RevenueCalculator.calculateTotal(100, 5);
        System.assertEquals(500, result);
    }

    @IsTest
    static void testZeroQuantity() {
        Decimal result = RevenueCalculator.calculateTotal(100, 0);
        System.assertEquals(0, result);
    }

    @IsTest
    static void testNullPriceThrowsException() {
        Boolean exceptionThrown = false;
        try {
            RevenueCalculator.calculateTotal(null, 5);
        } catch (System.IllegalArgumentException ex) {
            exceptionThrown = true;
            System.assertEquals('Price and quantity are required', ex.getMessage());
        }
        System.assert(exceptionThrown, 'A null price must be rejected');
    }

    @IsTest
    static void testNullQuantityThrowsException() {
        Boolean exceptionThrown = false;
        try {
            RevenueCalculator.calculateTotal(100, null);
        } catch (System.IllegalArgumentException ex) {
            exceptionThrown = true;
            System.assertEquals('Price and quantity are required', ex.getMessage());
        }
        System.assert(exceptionThrown, 'A null quantity must be rejected');
    }
}
