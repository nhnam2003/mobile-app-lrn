import 'package:go_router/go_router.dart';
import 'package:lrn_app_flutter/common/widgets/navigation/bottom_nav.dart'; 

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const BottomNav(),
      ),
    ],
  );
}
