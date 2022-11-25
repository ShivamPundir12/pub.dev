// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dev_dependencies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DevDependencies _$DevDependenciesFromJson(Map<String, dynamic> json) =>
    DevDependencies(
      analyzer: json['analyzer'] as String?,
      expectError: json['expect_error'] as String?,
      mockito: json['mockito'] as String?,
      test: json['test'] as String?,
      trotter: json['trotter'] as String?,
    );

Map<String, dynamic> _$DevDependenciesToJson(DevDependencies instance) =>
    <String, dynamic>{
      'analyzer': instance.analyzer,
      'expect_error': instance.expectError,
      'mockito': instance.mockito,
      'test': instance.test,
      'trotter': instance.trotter,
    };
