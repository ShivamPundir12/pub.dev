import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dev_dependencies.g.dart';

@JsonSerializable()
class DevDependencies {
  String? lints;
  String? test;
  @JsonKey(name: 'build_runner')
  String? buildRunner;
  @JsonKey(name: 'json_serializable')
  String? jsonSerializable;

  DevDependencies({
    this.lints,
    this.test,
    this.buildRunner,
    this.jsonSerializable,
  });

  factory DevDependencies.fromJson(Map<String, dynamic> json) {
    return _$DevDependenciesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DevDependenciesToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! DevDependencies) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      lints.hashCode ^
      test.hashCode ^
      buildRunner.hashCode ^
      jsonSerializable.hashCode;
}
