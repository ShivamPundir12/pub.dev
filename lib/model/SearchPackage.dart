// import 'dart:convert';

// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:http/http.dart' as http;
// import 'package:pub_dev/model/all_pacakage/all_pacakage.dart';

// final filterPackageProvider =
//     FutureProvider<AllPacakage>((ref, {String? query}) async {
//   List<AllPacakage> result = [];
//   final response = await http.get(
//     Uri.parse('https://pub.dev/api/search'),
//   );
//   try {
//     if (query != null) {
//       result = result
//           .where((element) =>
//               element.name!.toLowerCase().contains(query.toLowerCase()))
//           .toList();
//     }
//   } on Exception catch (e) {
//     print(e.toString());
//   }
//   return Package.fromJson(jsonDecode(response.body));
// });
