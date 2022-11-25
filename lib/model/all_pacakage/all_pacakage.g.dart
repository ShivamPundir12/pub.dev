// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_pacakage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllPacakage _$AllPacakageFromJson(Map<String, dynamic> json) => AllPacakage(
      nextUrl: json['next_url'] as String?,
      packages: (json['packages'] as List<dynamic>?)
          ?.map((e) => Package.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AllPacakageToJson(AllPacakage instance) =>
    <String, dynamic>{
      'next_url': instance.nextUrl,
      'packages': instance.packages,
    };
