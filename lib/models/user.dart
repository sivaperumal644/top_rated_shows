import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User{
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'phone_number')
  String phoneNumber;
  @JsonKey(name: 'is_admin')
  bool isAdmin;

  User({
    this.id,
    this.name,
    this.phoneNumber,
    this.isAdmin
  });

  factory User.fromJson(Map<String, dynamic> map) => _$UserFromJson(map);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
