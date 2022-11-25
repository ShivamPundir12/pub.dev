import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'dependencies.dart';
import 'dev_dependencies.dart';
import 'environment.dart';

part 'pubspec.g.dart';

@JsonSerializable()
class Pubspec {
  String? name;
  String? description;
  String? version;
  String? homepage;
  String? repository;
  Environment? environment;
  Dependencies? dependencies;
  @JsonKey(name: 'dev_dependencies')
  DevDependencies? devDependencies;

  Pubspec({
    this.name,
    this.description,
    this.version,
    this.homepage,
    this.repository,
    this.environment,
    this.dependencies,
    this.devDependencies,
  });

  factory Pubspec.fromJson(Map<String, dynamic> json) {
    return _$PubspecFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PubspecToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Pubspec) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      name.hashCode ^
      description.hashCode ^
      version.hashCode ^
      homepage.hashCode ^
      repository.hashCode ^
      environment.hashCode ^
      dependencies.hashCode ^
      devDependencies.hashCode;
}
