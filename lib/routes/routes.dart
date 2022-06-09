import 'package:get/get.dart';
import 'package:mental_health_app/pages/home_page.dart';
import 'package:mental_health_app/pages/notification_page.dart';

class RoutesClass {

  // strings
  static String home = '/';
  static String notification = '/notification';

  // functions
  static String getHomeRoute() => home;
  static String getNotificationPage() => notification;

  // lists
  static List<GetPage> routes = [
    GetPage(name: home, page: () => const HomePage()),
    GetPage(
        name: notification,
        page: () => const NotificationPage(),
        transition: Transition.cupertino,
        transitionDuration: const Duration(seconds: 1)
    )
  ];
}
