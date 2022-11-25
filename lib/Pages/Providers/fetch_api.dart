import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:pub_dev/model/all_pacakage/all_pacakage.dart';
import 'package:pub_dev/model/single_pacakage/single_pacakage.dart';

final allPackageProvider = FutureProvider<AllPacakage>((ref) async {
  final response = await http.get(
    Uri.parse('https://pub.dev/api/packages'),
  );
  return AllPacakage.fromJson(jsonDecode(response.body));
});

final PackageProvider =
    FutureProvider.family<SinglePacakage, String>((ref, pacakageid) async {
  final response = await http.get(
    Uri.parse('https://pub.dev/api/packages/$pacakageid'),
  );
  return SinglePacakage.fromJson(jsonDecode(response.body));
});

// Future<void> search({
//     required int page,
//     required String query,
//   }) async {
//     if (query.isEmpty) {
//       state = null;
//       return;
//     }

//     final Dio dio = Dio(
//       BaseOptions(baseUrl: "https://pub.dartlang.org/api/"),
//     );

//     final packageResponse = await dio.get(
//       'search',
//       queryParameters: {
//         'page': '$page',
//         'q': query,
//       },
//     );

//     state = SearchModel.fromJson(packageResponse.data);
//   }

// final searchStateProvider =
//     StateNotifierProvider<SearchState, SearchModel?>((ref) {
//   return SearchState();
// });

// class ApiServices {
//   String endpoint = 'https://pub.dev/api/packages/riverpod';
//   Future<List<AllPackage>> getdata() async {
//     http.Response response = await http.get(Uri.parse(endpoint));
//     if (response.statusCode == 200) {
//       // print(response.body);
//       return AllPackage.fromJson(jsonDecode(response.body));
//     } else {
//       throw Exception(response.reasonPhrase);
//     }
//   }
// }
// final userProvider = Provider<ApiServices>((ref) => ApiServices());
