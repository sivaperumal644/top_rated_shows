import 'package:json_annotation/json_annotation.dart';

part 'movies.g.dart';

@JsonSerializable()
class Movies{
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

  Movies({
    this.rank,
    this.name,
    this.date,
    this.description,
    this.img,
    this.rating,
    this.trailer
  });

  factory Movies.fromJson(Map<String, dynamic> map) => _$MoviesFromJson(map);
  Map<String, dynamic> toJson() => _$MoviesToJson(this);
}