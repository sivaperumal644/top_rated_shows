import 'package:json_annotation/json_annotation.dart';

part 'tvshows.g.dart';

@JsonSerializable()
class TVShows{
  @JsonKey(name:'rank')
  String rank;
  @JsonKey(name:'name')
  String name;
  @JsonKey(name:'date')
  String date;
  @JsonKey(name:'description')
  String description;
  @JsonKey(name:'img')
  String img;
  @JsonKey(name:'rating')
  String rating;
  @JsonKey(name:'trailer')
  String trailer;

  TVShows({
    this.rank,
    this.name,
    this.date,
    this.description,
    this.img,
    this.rating,
    this.trailer
  });

  factory TVShows.fromJson(Map<String, dynamic> map) => _$TVShowsFromJson(map);
  Map<String, dynamic> toJson() => _$TVShowsToJson(this);
}