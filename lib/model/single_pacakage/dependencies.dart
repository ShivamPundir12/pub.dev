import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dependencies.g.dart';

@JsonSerializable()
class Dependencies {
  String? collection;
  String? meta;
  @JsonKey(name: 'stack_trace')
  String? stackTrace;
  @JsonKey(name: 'state_notifier')
  String? stateNotifier;

  Dependencies({
    this.collection,
    this.meta,
    this.stackTrace,
    this.stateNotifier,
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
      collection.hashCode ^
      meta.hashCode ^
      stackTrace.hashCode ^
      stateNotifier.hashCode;
}
