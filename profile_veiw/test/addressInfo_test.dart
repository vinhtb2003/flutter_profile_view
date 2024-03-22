import 'package:profile_view/models/district.dart';
import 'package:profile_view/models/province.dart';
import 'package:profile_view/models/ward.dart';

import 'package:profile_view/bai2/addressInfo.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AddressInfo', () {
    test('Create AddressInfo object from map', () {
      // Arrange
      var province = Province(name: 'Test Province');
      var district = District(name: 'Test District');
      var ward = Ward(name: 'Test Ward');
      var addressMap = {
        'province': province.toMap(),
        'district': district.toMap(),
        'ward': ward.toMap(),
        'street': 'Test Street',
      };

      // Act
      var address = AddressInfo.fromMap(addressMap);

      // Assert
      expect(address.province?.name, equals('Test Province'));
      expect(address.district?.name, equals('Test District'));
      expect(address.ward?.name, equals('Test Ward'));
      expect(address.street, equals('Test Street'));
    });

    test('Convert AddressInfo object to map', () {
      // Arrange
      var province = Province(name: 'Test Province');
      var district = District(name: 'Test District');
      var ward = Ward(name: 'Test Ward');
      var address = AddressInfo(
        province: province,
        district: district,
        ward: ward,
        street: 'Test Street',
      );

      // Act
      var addressMap = address.toMap();

      // Assert
      expect(addressMap['province']['name'], equals('Test Province'));
      expect(addressMap['district']['name'], equals('Test District'));
      expect(addressMap['ward']['name'], equals('Test Ward'));
      expect(addressMap['street'], equals('Test Street'));
    });

    test('AddressInfo object toJson/fromJson', () {
      // Arrange
      var province = Province(name: 'Test Province');
      var district = District(name: 'Test District');
      var ward = Ward(name: 'Test Ward');
      var address = AddressInfo(
        province: province,
        district: district,
        ward: ward,
        street: 'Test Street',
      );

      // Act
      var jsonString = address.toJson();
      var decodedMap = AddressInfo.fromJson(jsonString).toMap();

      // Assert
      expect(decodedMap['province']['name'], equals('Test Province'));
      expect(decodedMap['district']['name'], equals('Test District'));
      expect(decodedMap['ward']['name'], equals('Test Ward'));
      expect(decodedMap['street'], equals('Test Street'));
    });

    test('Equality of AddressInfo objects', () {
      // Arrange
      var province1 = Province(name: 'Test Province 1');
      var province2 = Province(name: 'Test Province 2');
      var district = District(name: 'Test District');
      var ward = Ward(name: 'Test Ward');
      var address1 = AddressInfo(
        province: province1,
        district: district,
        ward: ward,
        street: 'Test Street',
      );
      var address2 = AddressInfo(
        province: province2,
        district: district,
        ward: ward,
        street: 'Test Street',
      );

      // Act & Assert
      expect(address1 == address2, equals(false));
    });
  });
}
