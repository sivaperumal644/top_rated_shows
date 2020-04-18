import 'package:json_annotation/json_annotation.dart';

part 'message.g.dart';

@JsonSerializable()
class Message {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'user_id')
  String userId;
  @JsonKey(name: 'message')
  String message;

  Message({
    this.id,
    this.userId,
    this.message,
  });

  factory Message.fromJson(Map<String, dynamic> map) => _$MessageFromJson(map);
  Map<String, dynamic> toJson() => _$MessageToJson(this);
}
