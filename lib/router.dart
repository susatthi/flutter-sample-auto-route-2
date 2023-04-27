import 'package:auto_route/auto_route.dart';

import 'home_page.dart';
import 'mypage_page.dart';
import 'root_page.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [];
}
