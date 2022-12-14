import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pub_dev/Pages/Providers/fetch_api.dart';

class DetailPage extends ConsumerWidget {
  final String package;

  DetailPage({Key? key, required this.package}) : super(key: key);

  AppBar buildAppbar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      automaticallyImplyLeading: false,
      title: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Padding(
          padding: EdgeInsets.only(top: 5),
          child: Text(
            "Pub.dev",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Color(0xFFf2f2f2)),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getDetail = ref.watch(PackageProvider(package));

    return Container(
      // decoration: BoxDecoration(
      //   image: DecorationImage(
      //     image: AssetImage("assets/team-builder-sas.png"),
      //     fit: BoxFit.cover,
      //   ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: buildAppbar(),
        body: Padding(
          padding: EdgeInsets.only(top: 30),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40))),
            child: getDetail.when(
                data: (detail) => Scaffold(
                      backgroundColor: Colors.transparent,
                      body: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    SelectableText(
                                      toolbarOptions: ToolbarOptions(
                                          copy: true,
                                          cut: true,
                                          paste: true,
                                          selectAll: true),
                                      "${detail.latest?.pubspec?.name}",
                                      style: TextStyle(
                                        color: Colors.blue.shade800,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "${detail.latest?.version}",
                                      style: TextStyle(
                                        color: Colors.blue.shade800,
                                        fontSize: 24,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        FlutterClipboard.copy(
                                            "${detail.latest?.pubspec?.name}" +
                                                "${detail.latest?.version}");
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                backgroundColor: Colors.black54,
                                                duration: Duration(seconds: 2),
                                                behavior:
                                                    SnackBarBehavior.floating,
                                                content: Text(
                                                    "^${detail.latest?.version} copied to clipboard")));
                                      },
                                      child: Icon(
                                        Icons.copy,
                                        color: Colors.black38,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "v ${detail.latest?.version}",
                                    style: TextStyle(
                                        color: Color(0xFF3f7fc6), fontSize: 20),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Published",
                                    style: TextStyle(
                                        color: Color(0xFF494950), fontSize: 18),
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Text(
                                    "${detail.latest?.published?.day}/" +
                                        "${detail.latest?.published?.month}/" +
                                        "${detail.latest?.published?.year}",
                                    style: TextStyle(
                                        color: Color(0xFF494950), fontSize: 18),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: Colors.blue.shade100,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                    )),
                                child: Text(
                                  "Null safety",
                                  style: TextStyle(
                                      color: Color(0xFF0274c1),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Text(
                                "Metadata",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blue.shade800,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              SelectableText(
                                toolbarOptions: ToolbarOptions(
                                    copy: true,
                                    cut: true,
                                    paste: true,
                                    selectAll: true),
                                "${detail.latest?.pubspec?.description}",
                                style: TextStyle(
                                    color: Color(0xFF494950), fontSize: 18),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Text(
                                "HomePage",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blue.shade800,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SelectableText(
                                toolbarOptions: ToolbarOptions(
                                    copy: true,
                                    cut: true,
                                    paste: true,
                                    selectAll: true),
                                "${detail.latest?.pubspec?.homepage}",
                                style: TextStyle(
                                    color: Color(0xFF494950), fontSize: 18),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                "Url",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blue.shade800,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SelectableText(
                                toolbarOptions: ToolbarOptions(
                                    copy: true,
                                    cut: true,
                                    paste: true,
                                    selectAll: true),
                                "${detail.latest?.archiveUrl}",
                                style: TextStyle(
                                    color: Color(0xFF494950), fontSize: 18),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                error: (err, s) => Text(err.toString()),
                loading: () => Center(
                      child: CircularProgressIndicator(),
                    )),
          ),
        ),
      ),
    );
  }
}
