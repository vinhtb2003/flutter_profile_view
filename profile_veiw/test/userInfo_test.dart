import 'package:profile_view/models/district.dart';
import 'package:profile_view/models/province.dart';
import 'package:profile_view/models/ward.dart';
import 'package:profile_view/bai2/addressInfo.dart';
import 'package:profile_view/bai2/userInfo.dart';
import 'package:flutter_test/flutter_test.dart';
void main() {
  group(' Test UserInfo', () {
    test('Create UserInfo object from map', () {
      // Arrange
      var address = AddressInfo(
        province: Province(name: 'Test Province'),
        district: District(name: 'Test District'),
        ward: Ward(name: 'Test Ward'),
        street: 'Test Street',
      );
      var userMap = {
        'name': 'Nguyễn Phú Đức',
        'email': 'ducnguyenad112@gmail.com',
        'phoneNumber': '123456789',
        'birthDate': DateTime.now().millisecondsSinceEpoch,
        'address': address.toMap(),
      };

      // Act
      var user = UserInfo.fromMap(userMap);

      // Assert
      expect(user.name, equals('Nguyễn Phú Đức'));
      expect(user.email, equals('ducnguyenad112@gmail.com'));
      expect(user.phoneNumber, equals('123456789'));
      expect(user.birthDate, isA<DateTime>());
      expect(user.address, isA<AddressInfo>());
    });

    test('Convert UserInfo object to map', () {
      // Arrange
      var address = AddressInfo(
        province: Province(name: 'Test Province'),
        district: District(name: 'Test District'),
        ward: Ward(name: 'Test Ward'),
        street: 'Test Street',
      );
      var user = UserInfo(
        name: 'Nguyễn Phú Đức',
        email: 'ducnguyenad112@gmail.com',
        phoneNumber: '123456789',
        birthDate: DateTime.now(),
        address: address,
      );

      // Act
      var userMap = user.toMap();

      // Assert
      expect(userMap['name'], equals('Nguyễn Phú Đức'));
      expect(userMap['email'], equals('ducnguyenad112@gmail.com'));
      expect(userMap['phoneNumber'], equals('123456789'));
      expect(userMap['birthDate'], isNotNull);
      expect(userMap['address'], isA<Map>());
    });

    test('UserInfo object toJson/fromJson', () {
      // Arrange
      var address = AddressInfo(
        province: Province(name: 'Test Province'),
        district: District(name: 'Test District'),
        ward: Ward(name: 'Test Ward'),
        street: 'Test Street',
      );
      var user = UserInfo(
        name: 'Nguyễn Phú Đức',
        email: 'ducnguyenad112@gmail.com',
        phoneNumber: '123456789',
        birthDate: DateTime.now(),
        address: address,
      );

      // Act
      var jsonString = user.toJson();
      var decodedMap = UserInfo.fromJson(jsonString).toMap();

      // Assert
      expect(decodedMap['name'], equals('Nguyễn Phú Đức'));
      expect(decodedMap['email'], equals('ducnguyenad112@gmail.com'));
      expect(decodedMap['phoneNumber'], equals('123456789'));
      expect(decodedMap['birthDate'], isNotNull);
      expect(decodedMap['address'], isA<Map>());
    });

    test('Equality of UserInfo objects', () {
      // Arrange
      var address1 = AddressInfo(
        province: Province(name: 'Test Province 1'),
        district: District(name: 'Test District'),
        ward: Ward(name: 'Test Ward'),
        street: 'Test Street',
      );
      var address2 = AddressInfo(
        province: Province(name: 'Test Province 2'),
        district: District(name: 'Test District'),
        ward: Ward(name: 'Test Ward'),
        street: 'Test Street',
      );
      var user1 = UserInfo(
        name: 'Nguyễn Phú Đức',
        email: 'ducnguyenad112@gmail.com',
        phoneNumber: '123456789',
        birthDate: DateTime.now(),
        address: address1,
      );
      var user2 = UserInfo(
        name: 'Đỗ Đường Bách',
        email: 'doduongbach@gmail.com',
        phoneNumber: '123456789',
        birthDate: DateTime.now(),
        address: address2,
      );

      // Act & Assert
      expect(user1 == user2, equals(false));
    });
  });
}
