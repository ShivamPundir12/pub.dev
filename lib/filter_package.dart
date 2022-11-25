// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:pub_dev/Pages/Providers/fetch_api.dart';

// class FilterPackage extends SearchDelegate {
//   @override
//   List<Widget>? buildActions(BuildContext context) {
//     return [IconButton(onPressed: () {}, icon: Icon(Icons.close))];
//   }

//   @override
//   Widget? buildLeading(BuildContext context) {
//     return IconButton(
//         onPressed: () {
//           query = "";
//         },
//         icon: Icon(Icons.arrow_back));
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     return Consumer(
//       builder: (context, ref, child) {
//         final filter = ref.watch(allPackageProvider);
//         return Container(
//             child: filter.when(
//                 data: (data) {
//                   return Expanded(
//                     child: ListView.builder(
//                         itemCount: data.packages?.length,
//                         itemBuilder: ((context, index) {
//                           return Card(
//                               elevation: 20,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.only(
//                                     topLeft: Radius.circular(20),
//                                     bottomRight: Radius.circular(20),
//                                     topRight: Radius.circular(20),
//                                     bottomLeft: Radius.circular(20)),
//                               ),
//                               child: Container(
//                                   height: 140.0,
//                                   margin: EdgeInsets.only(bottom: 30.0),
//                                   child: Expanded(
//                                     child: Column(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.start,
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           Container(
//                                               width: 250.0,
//                                               child: Padding(
//                                                 padding:
//                                                     const EdgeInsets.all(8.0),
//                                                 child: Text(
//                                                   "${data.packages![index].name}",
//                                                   style: TextStyle(
//                                                       color: Colors.blue,
//                                                       fontSize: 18,
//                                                       fontWeight:
//                                                           FontWeight.w700),
//                                                 ),
//                                               )),
//                                         ]),
//                                   )));
//                         })),
//                   );
//                 },
//                 error: (error, stackTrace) => Text(error.toString()),
//                 loading: () => Center(child: CircularProgressIndicator())));
//       },
//     );
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     return Text("Search Package");
//   }
// }
