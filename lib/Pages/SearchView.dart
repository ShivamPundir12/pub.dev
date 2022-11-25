import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pub_dev/Pages/Providers/SearchProvider.dart';
import 'package:pub_dev/Pages/homeview.dart';
import 'package:pub_dev/model/search_package/search_package.dart';

class SearchView extends ConsumerWidget {
  const SearchView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade500,
        title: Text(
          'Pub.Dev',
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/back.jpg"),
                fit: BoxFit.cover,
                colorFilter:
                    ColorFilter.mode(Colors.black45, BlendMode.darken))),
        child: Consumer(
          builder: (context, ref, child) {
            final searchProvider = ref.watch(searchStateProvider.notifier);
            return Expanded(
              child: Column(
                children: [
                  ListTile(
                    title: Padding(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: TextField(
                        toolbarOptions: ToolbarOptions(
                            copy: true,
                            cut: true,
                            selectAll: true,
                            paste: true),
                        onChanged: (value) {
                          searchProvider.search(page: 0, query: value);
                        },
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(CupertinoIcons.multiply),
                            onPressed: () {
                              context.replace('/Search');
                              ref.refresh(searchStateProvider.notifier).stream;
                            },
                          ),
                          contentPadding: EdgeInsets.only(left: 16.0),
                          hintText: 'Search packgaes',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(40.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: StreamBuilder<SearchPackage?>(
                      stream: searchProvider.stream,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return HomeView();
                        }
                        if (!snapshot.hasData) {
                          return const Center(
                            child: Text(
                              "Pacakge not  found",
                              textScaleFactor: 2.0,
                            ),
                          );
                        }
                        return ListView(
                          children: snapshot.data!.packages!
                              .map(
                                (e) => ListTile(
                                  contentPadding:
                                      const EdgeInsets.only(left: 24.0),
                                  title: Text(
                                    e.package.toString(),
                                  ),
                                  onTap: () {
                                    context
                                        .push('/Detail?packageid=${e.package}');
                                  },
                                ),
                              )
                              .toList(),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
