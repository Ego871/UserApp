import 'package:go_router/go_router.dart';
import '../presentation/screens/screens.dart';


final appRouter = GoRouter(
  initialLocation: "/",
  routes: [
  GoRoute(path: "/", builder: (context, state) {
    return const HomeScreen();
  },
  ),
  GoRoute(path: "/register", builder: (context, state) {
    return const RegisterScreen();
  },
  ),
  GoRoute(path: "/profile/:name/:age/:ocupation",builder: (context, state) {
    final name = state.pathParameters["name"] ?? '';
    final age = int.parse(state.pathParameters["age"] ?? '0');
    final ocupation = state.pathParameters["ocupation"] ?? '';
    return ProfileScreen(name: name, age: age, ocupation: ocupation,);
  },
  ),
]);