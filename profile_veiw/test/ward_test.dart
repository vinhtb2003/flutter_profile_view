import 'package:flutter_test/flutter_test.dart';
import 'package:profile_view/models/ward.dart';

void main() {
  group('Test ward', () {
    test('test conStructor', () {
      var ward = Ward(
        id: '00001',
        name: 'Phường Phúc Xá',
        level: 'Phường',
        providerId: '001',
        districtId: '01',
      );
      expect(ward.id, '00001');
      expect(ward.name, 'Phường Phúc Xá');
      expect(ward.level, 'Phường');
      expect(ward.providerId, '001');
      expect(ward.districtId, '01');
    });
  });
}
