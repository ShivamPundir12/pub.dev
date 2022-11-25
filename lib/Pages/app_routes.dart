import 'package:go_router/go_router.dart';
import 'package:pub_dev/Pages/Detail_page.dart';
import 'package:pub_dev/Pages/SearchView.dart';

class AppRoutes {
  static final GoRouter router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => SearchView()),
    GoRoute(
        path: '/Detail',
        builder: (context, state) =>
            DetailPage(package: state.queryParams['packageid']!)),
    GoRoute(path: '/Search', builder: (context, state) => SearchView())
  ]);

  // AppRoutes({Key? key, required this.package}) : super();
}
