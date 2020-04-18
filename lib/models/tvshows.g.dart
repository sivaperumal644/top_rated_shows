// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tvshows.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TVShows _$TVShowsFromJson(Map<String, dynamic> json) {
  return TVShows(
    rank: json['rank'] as String,
    name: json['name'] as String,
    date: json['date'] as String,
    description: json['description'] as String,
    img: json['img'] as String,
    rating: json['rating'] as String,
    trailer: json['trailer'] as String,
  );
}

Map<String, dynamic> _$TVShowsToJson(TVShows instance) => <String, dynamic>{
      'rank': instance.rank,
      'name': instance.name,
      'date': instance.date,
      'description': instance.description,
      'img': instance.img,
      'rating': instance.rating,
      'trailer': instance.trailer,
    };
