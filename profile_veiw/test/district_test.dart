import 'package:flutter_test/flutter_test.dart';
import 'package:profile_view/models/district.dart';

void main() {
  group('Test district', () {
    test('test conStructor', () {
      var district = District(
        id: '001',
        name: 'Quận Ba Đình',
        level: 'Quận',
        provinceId: '01',
      );
      expect(district.id, '001');
      expect(district.name, 'Quận Ba Đình');
      expect(district.level, 'Quận');
      expect(district.provinceId, '01');
    });
  });
}

