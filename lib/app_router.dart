import 'package:auto_route/auto_route.dart';

import 'favorite_page.dart';
import 'home_page.dart';
import 'mypage_page.dart';
import 'root_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: RootRoute.page,
          children: [
            AutoRoute(
              path: 'home',
              page: HomeRouterRoute.page,
              children: [
                AutoRoute(
                  initial: true,
                  page: HomeRoute.page,
                ),
                AutoRoute(
                  path: 'favorite',
                  page: FavoriteRoute.page,
                ),
              ],
            ),
            AutoRoute(
              path: 'mypage',
              page: MypageRoute.page,
            ),
          ],
        ),
      ];
}
