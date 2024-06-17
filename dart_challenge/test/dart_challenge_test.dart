import 'package:dart_challenge/unit_test_1/unit_test_1.dart';
import 'package:test/test.dart';

void main() {
  group('unitTest1', () {
    test('should return divisors for a positive number', () {
      expect(unitTest1(12), [1, 2, 3, 4, 6, 12]);
      expect(unitTest1(20), [1, 2, 4, 5, 10, 20]);
    });

    test('should return [1] for 1', () {
      expect(unitTest1(1), [1]);
    });

    test('should return an empty list for 0', () {
      expect(unitTest1(0), []);
    });

    test('should return an empty list for negative numbers', () {
      expect(unitTest1(-4), []);
      expect(unitTest1(-10), []);
    });
  });
}
