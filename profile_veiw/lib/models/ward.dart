import 'dart:convert';

class Ward {
  String? id;
  String? name;
  String? level;
  String? districtId;
  String? providerId;
  Ward({
    this.id,
    this.name,
    this.level,
    this.districtId,
    this.providerId,
  });


  Ward copyWith({
    String? id,
    String? name,
    String? level,
    String? districtId,
    String? providerId,
  }) {
    return Ward(
      id: id ?? this.id,
      name: name ?? this.name,
      level: level ?? this.level,
      districtId: districtId ?? this.districtId,
      providerId: providerId ?? this.providerId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'level': level,
      'districtId': districtId,
      'providerId': providerId,
    };
  }

  factory Ward.fromMap(Map<String, dynamic> map) {
    return Ward(
      id: map['id'] != null ? map['id'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      level: map['level'] != null ? map['level'] as String : null,
      districtId: map['districtId'] != null ? map['districtId'] as String : null,
      providerId: map['providerId'] != null ? map['providerId'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Ward.fromJson(String source) => Ward.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Ward(id: $id, name: $name, level: $level, districtId: $districtId, providerId: $providerId)';
  }

  @override
  bool operator ==(covariant Ward other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.level == level &&
      other.districtId == districtId &&
      other.providerId == providerId;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      level.hashCode ^
      districtId.hashCode ^
      providerId.hashCode;
  }
}
