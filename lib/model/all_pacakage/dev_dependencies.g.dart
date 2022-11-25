// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dev_dependencies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DevDependencies _$DevDependenciesFromJson(Map<String, dynamic> json) =>
    DevDependencies(
      lints: json['lints'] as String?,
      test: json['test'] as String?,
      buildRunner: json['build_runner'] as String?,
      jsonSerializable: json['json_serializable'] as String?,
    );

Map<String, dynamic> _$DevDependenciesToJson(DevDependencies instance) =>
    <String, dynamic>{
      'lints': instance.lints,
      'test': instance.test,
      'build_runner': instance.buildRunner,
      'json_serializable': instance.jsonSerializable,
    };
