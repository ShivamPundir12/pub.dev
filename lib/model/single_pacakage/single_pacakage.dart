import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'latest.dart';
import 'version.dart';

part 'single_pacakage.g.dart';

@JsonSerializable()
class SinglePacakage {
  String? name;
  Latest? latest;
  List<Version>? versions;

  SinglePacakage({this.name, this.latest, this.versions});

  factory SinglePacakage.fromJson(Map<String, dynamic> json) {
    return _$SinglePacakageFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SinglePacakageToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! SinglePacakage) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => name.hashCode ^ latest.hashCode ^ versions.hashCode;
}
