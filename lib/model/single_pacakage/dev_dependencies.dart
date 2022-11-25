import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dev_dependencies.g.dart';

@JsonSerializable()
class DevDependencies {
  String? analyzer;
  @JsonKey(name: 'expect_error')
  String? expectError;
  String? mockito;
  String? test;
  String? trotter;

  DevDependencies({
    this.analyzer,
    this.expectError,
    this.mockito,
    this.test,
    this.trotter,
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
      analyzer.hashCode ^
      expectError.hashCode ^
      mockito.hashCode ^
      test.hashCode ^
      trotter.hashCode;
}
