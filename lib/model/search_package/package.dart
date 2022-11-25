import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'package.g.dart';

@JsonSerializable()
class Package {
  String? package;

  Package({this.package});

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
  int get hashCode => package.hashCode;
}
