import 'package:auto_route/annotations.dart';
import 'package:weather_app/ui/page/form/form_page.dart';
import 'package:weather_app/ui/page/home/home_page.dart';


@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: FormPage, initial: true),
    AutoRoute(page: HomePage),
  ],
)
class $AppRouter {}