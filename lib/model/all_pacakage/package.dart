import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'latest.dart';

part 'package.g.dart';

@JsonSerializable()
class Package {
  String? name;
  Latest? latest;

  Package({this.name, this.latest});

  factory Package.fromJson(Map<String, dynamic> json) {
    return _$PackageFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PackageToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Package) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => name.hashCode ^ latest.hashCode;
}
