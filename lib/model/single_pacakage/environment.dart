import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'environment.g.dart';

@JsonSerializable()
class Environment {
  String? sdk;

  Environment({this.sdk});

  factory Environment.fromJson(Map<String, dynamic> json) {
    return _$EnvironmentFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EnvironmentToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Environment) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => sdk.hashCode;
}
