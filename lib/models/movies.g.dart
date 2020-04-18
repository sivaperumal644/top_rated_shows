// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movies _$MoviesFromJson(Map<String, dynamic> json) {
  return Movies(
    rank: json['rank'] as String,
    name: json['name'] as String,
    date: json['date'] as String,
    description: json['description'] as String,
    img: json['img'] as String,
    rating: json['rating'] as String,
    trailer: json['trailer'] as String,
  );
}

Map<String, dynamic> _$MoviesToJson(Movies instance) => <String, dynamic>{
      'rank': instance.rank,
      'name': instance.name,
      'date': instance.date,
      'description': instance.description,
      'img': instance.img,
      'rating': instance.rating,
      'trailer': instance.trailer,
    };
