import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package.dart';

part 'search_package.g.dart';

@JsonSerializable()
class SearchPackage {
  List<Package>? packages;
  String? next;

  SearchPackage({this.packages, this.next});

  factory SearchPackage.fromJson(Map<String, dynamic> json) {
    return _$SearchPackageFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchPackageToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! SearchPackage) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => packages.hashCode ^ next.hashCode;
}
