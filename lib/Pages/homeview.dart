import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'Card.dart';
import 'Providers/fetch_api.dart';

class HomeView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final snapshot = ref.watch(allPackageProvider);
    return Container(
        child: snapshot.when(
            data: (data) {
              return ListView(children: [
                ...data.packages
                        ?.map((e) => Expanded(
                              child: DataCard(
                                package: e,
                              ),
                            ))
                        .toList() ??
                    []
              ]);
            },
            error: (error, stackTrace) => Text(error.toString()),
            loading: () => Center(child: CircularProgressIndicator())));
  }
}
