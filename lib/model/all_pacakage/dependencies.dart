import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dependencies.g.dart';

@JsonSerializable()
class Dependencies {
  String? meta;
  String? dio;
  String? recase;
  @JsonKey(name: 'json_annotation')
  String? jsonAnnotation;
  String? intl;
  String? crypto;

  Dependencies({
    this.meta,
    this.dio,
    this.recase,
    this.jsonAnnotation,
    this.intl,
    this.crypto,
  });

  factory Dependencies.fromJson(Map<String, dynamic> json) {
    return _$DependenciesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DependenciesToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Dependencies) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      meta.hashCode ^
      dio.hashCode ^
      recase.hashCode ^
      jsonAnnotation.hashCode ^
      intl.hashCode ^
      crypto.hashCode;
}
