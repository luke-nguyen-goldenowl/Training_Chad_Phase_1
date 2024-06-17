import 'package:dart_challenge/unit_test_1/unit_test_1.dart';
import 'package:dart_challenge/unit_test_3/unit_test_3.dart';
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

  group('unitTest3', () {
    test('should return true for prime numbers', () {
      expect(unitTest3(2), true);
      expect(unitTest3(3), true);
      expect(unitTest3(5), true);
      expect(unitTest3(7), true);
      expect(unitTest3(11), true);
    });

    test('should return false for non-prime numbers', () {
      expect(unitTest3(1), false);
      expect(unitTest3(4), false);
      expect(unitTest3(6), false);
      expect(unitTest3(8), false);
      expect(unitTest3(9), false);
      expect(unitTest3(15), false);
    });

    test('should return false for negative numbers', () {
      expect(unitTest3(-1), false);
      expect(unitTest3(-3), false);
      expect(unitTest3(-5), false);
    });

    test('should return false for 0 and 1', () {
      expect(unitTest3(0), false);
      expect(unitTest3(1), false);
    });
  });
}
