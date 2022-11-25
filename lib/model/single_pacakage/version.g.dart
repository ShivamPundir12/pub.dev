// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Version _$VersionFromJson(Map<String, dynamic> json) => Version(
      version: json['version'] as String?,
      pubspec: json['pubspec'] == null
          ? null
          : Pubspec.fromJson(json['pubspec'] as Map<String, dynamic>),
      archiveUrl: json['archive_url'] as String?,
      archiveSha256: json['archive_sha256'] as String?,
      published: json['published'] == null
          ? null
          : DateTime.parse(json['published'] as String),
    );

Map<String, dynamic> _$VersionToJson(Version instance) => <String, dynamic>{
      'version': instance.version,
      'pubspec': instance.pubspec,
      'archive_url': instance.archiveUrl,
      'archive_sha256': instance.archiveSha256,
      'published': instance.published?.toIso8601String(),
    };
