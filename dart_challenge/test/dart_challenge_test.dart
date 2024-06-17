import 'package:dart_challenge/unit_test_2/unit_test_2.dart';
import 'package:test/test.dart';

void main() {
  group('unitTest2', () {
    test('should return common unique elements', () {
      List<int> a = [1, 1, 2, 3, 5, 8, 89, 13, 21, 34, 55];
      List<int> b = [1, 2, 3, 4, 5, 6, 10, 7, 8, 9, 11, 12, 13];
      List<int> expected = [1, 2, 3, 5, 8, 13];
      expect(unitTest2(a, b), equals(expected));
    });

    test('should return empty list when no common elements', () {
      List<int> a = [1, 2, 3];
      List<int> b = [4, 5, 6];
      expect(unitTest2(a, b), isEmpty);
    });

    test('should return common elements for same lists', () {
      List<int> a = [1, 2, 3, 4, 5];
      List<int> b = [1, 2, 3, 4, 5];
      List<int> expected = [1, 2, 3, 4, 5];
      expect(unitTest2(a, b), equals(expected));
    });

    test('should return empty list when one list is empty', () {
      List<int> a = [1, 2, 3];
      List<int> b = [];
      expect(unitTest2(a, b), isEmpty);
    });

    test('should return empty list when both lists are empty', () {
      List<int> a = [];
      List<int> b = [];
      expect(unitTest2(a, b), isEmpty);
    });
  });
}
