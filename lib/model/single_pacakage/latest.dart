import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'pubspec.dart';

part 'latest.g.dart';

@JsonSerializable()
class Latest {
  String? version;
  Pubspec? pubspec;
  @JsonKey(name: 'archive_url')
  String? archiveUrl;
  @JsonKey(name: 'archive_sha256')
  String? archiveSha256;
  DateTime? published;

  Latest({
    this.version,
    this.pubspec,
    this.archiveUrl,
    this.archiveSha256,
    this.published,
  });

  factory Latest.fromJson(Map<String, dynamic> json) {
    return _$LatestFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LatestToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Latest) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      version.hashCode ^
      pubspec.hashCode ^
      archiveUrl.hashCode ^
      archiveSha256.hashCode ^
      published.hashCode;
}
