// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pubspec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pubspec _$PubspecFromJson(Map<String, dynamic> json) => Pubspec(
      name: json['name'] as String?,
      description: json['description'] as String?,
      version: json['version'] as String?,
      homepage: json['homepage'] as String?,
      repository: json['repository'] as String?,
      environment: json['environment'] == null
          ? null
          : Environment.fromJson(json['environment'] as Map<String, dynamic>),
      dependencies: json['dependencies'] == null
          ? null
          : Dependencies.fromJson(json['dependencies'] as Map<String, dynamic>),
      devDependencies: json['dev_dependencies'] == null
          ? null
          : DevDependencies.fromJson(
              json['dev_dependencies'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PubspecToJson(Pubspec instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'version': instance.version,
      'homepage': instance.homepage,
      'repository': instance.repository,
      'environment': instance.environment,
      'dependencies': instance.dependencies,
      'dev_dependencies': instance.devDependencies,
    };
