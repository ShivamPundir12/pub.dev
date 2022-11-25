// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'latest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Latest _$LatestFromJson(Map<String, dynamic> json) => Latest(
      version: json['version'] as String?,
      pubspec: json['pubspec'] == null
          ? null
          : Pubspec.fromJson(json['pubspec'] as Map<String, dynamic>),
      archiveUrl: json['archive_url'] as String?,
      packageUrl: json['package_url'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$LatestToJson(Latest instance) => <String, dynamic>{
      'version': instance.version,
      'pubspec': instance.pubspec,
      'archive_url': instance.archiveUrl,
      'package_url': instance.packageUrl,
      'url': instance.url,
    };
