import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import 'package:solid_test_app/views/home/home_view.dart';
part 'home_route.g.dart';

/// [HomeRoute] is the home route
@TypedGoRoute<HomeRoute>(path: '/')
class HomeRoute extends GoRouteData {
  /// Default constructor
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeView();
  }
}
