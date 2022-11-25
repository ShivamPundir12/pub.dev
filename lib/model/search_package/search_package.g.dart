// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_package.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchPackage _$SearchPackageFromJson(Map<String, dynamic> json) =>
    SearchPackage(
      packages: (json['packages'] as List<dynamic>?)
          ?.map((e) => Package.fromJson(e as Map<String, dynamic>))
          .toList(),
      next: json['next'] as String?,
    );

Map<String, dynamic> _$SearchPackageToJson(SearchPackage instance) =>
    <String, dynamic>{
      'packages': instance.packages,
      'next': instance.next,
    };
