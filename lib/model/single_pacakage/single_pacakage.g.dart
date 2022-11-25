// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_pacakage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SinglePacakage _$SinglePacakageFromJson(Map<String, dynamic> json) =>
    SinglePacakage(
      name: json['name'] as String?,
      latest: json['latest'] == null
          ? null
          : Latest.fromJson(json['latest'] as Map<String, dynamic>),
      versions: (json['versions'] as List<dynamic>?)
          ?.map((e) => Version.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SinglePacakageToJson(SinglePacakage instance) =>
    <String, dynamic>{
      'name': instance.name,
      'latest': instance.latest,
      'versions': instance.versions,
    };
