import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pub_dev/model/search_package/search_package.dart';

class SearchState extends StateNotifier<SearchPackage?> {
  SearchState() : super(null);
  static const _scheme = 'https';
  static const _host = 'pub.dartlang.org';
  SearchPackage? get searchResults => state;
  Future<SearchPackage?> search({
    required int page,
    required String query,
  }) async {
    if (query.isEmpty) {
      state = null;
    }

    final dio = Dio();
    final uri = Uri(
      scheme: _scheme,
      host: _host,
      path: 'api/search',
      queryParameters: <String, String>{'page': '$page', 'q': query},
    );

    final response = await dio.getUri(
      uri,
    );

    state = SearchPackage.fromJson(response.data);
    return state;

    // Returns {packages: [{ package: string }]}
  }
}

final searchStateProvider =
    StateNotifierProvider<SearchState, SearchPackage?>((ref) {
  return SearchState();
});
