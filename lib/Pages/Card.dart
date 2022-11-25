import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pub_dev/model/all_pacakage/package.dart';

class DataCard extends ConsumerWidget {
  final Package package;

  DataCard({Key? key, required this.package}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 180,
      width: 100,
      child: Card(
        color: Color(0xFFffffff),
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.elliptical(55, 35),
            topLeft: Radius.elliptical(28, 22),
            bottomRight: Radius.elliptical(25, 20),
            bottomLeft: Radius.elliptical(55, 35),
          ),
        ),
        child: InkWell(
          onTap: () {
            GoRouter.of(context).push('/Detail?packageid=${package.name}');
          },
          child: Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 15),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${package.latest?.pubspec?.name}',
                      style: TextStyle(
                        color: Color(0xFF1572d3),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '${package.latest?.pubspec?.description}',
                      maxLines: 2,
                      style: TextStyle(
                        color: Color(0xFf6f757d),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          'v ${package.latest?.pubspec?.version}',
                          style: TextStyle(
                            color: Color(0xff5f86d8),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
