import 'package:dart_challenge/unit_test_1/unit_test_1.dart';
import 'package:dart_challenge/unit_test_4/unit_test_4.dart';
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
  group('unitTest4', () {
    test('should return true for a valid password', () {
      expect(unitTest4('Abc123!'), true);
      expect(unitTest4('P@ssw0rd'), true);
    });

    test('should return false for a password shorter than 6 characters', () {
      expect(unitTest4('Abc12'), false);
      expect(unitTest4('P@ss'), false);
    });

    test('should return false for a password without numbers', () {
      expect(unitTest4('AbcDef!'), false);
      expect(unitTest4('P@ssword'), false);
    });

    test('should return false for a password without special characters', () {
      expect(unitTest4('Abc123'), false);
      expect(unitTest4('Password1'), false);
    });

    test('should return false for a password without letters', () {
      expect(unitTest4('123!@#'), false);
      expect(unitTest4('1234567!@#'), false);
    });
  });
}
