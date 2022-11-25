import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'pubspec.dart';

part 'version.g.dart';

@JsonSerializable()
class Version {
  String? version;
  Pubspec? pubspec;
  @JsonKey(name: 'archive_url')
  String? archiveUrl;
  @JsonKey(name: 'archive_sha256')
  String? archiveSha256;
  DateTime? published;

  Version({
    this.version,
    this.pubspec,
    this.archiveUrl,
    this.archiveSha256,
    this.published,
  });

  factory Version.fromJson(Map<String, dynamic> json) {
    return _$VersionFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VersionToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Version) return false;
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
