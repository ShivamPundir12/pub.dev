import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package.dart';

part 'all_pacakage.g.dart';

@JsonSerializable()
class AllPacakage {
  @JsonKey(name: 'next_url')
  String? nextUrl;
  List<Package>? packages;

  AllPacakage({this.nextUrl, this.packages});

  factory AllPacakage.fromJson(Map<String, dynamic> json) {
    return _$AllPacakageFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AllPacakageToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! AllPacakage) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => nextUrl.hashCode ^ packages.hashCode;
}
