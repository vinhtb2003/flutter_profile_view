import 'package:flutter_test/flutter_test.dart';
import 'package:profile_view/models/province.dart';

void main() {
  group('Test Provience', () {
    test('test conStructor', () {
      var province = Province(
        id: '01',
        name: 'Hà Nội',
        level: 'Thành phố Trung ương',
      );
      expect(province.id, '01');
      expect(province.name, 'Hà Nội');
      expect(province.level, 'Thành phố Trung ương');
    });
  });
}
