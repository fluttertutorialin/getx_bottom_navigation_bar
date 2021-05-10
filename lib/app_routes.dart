import 'package:get/get.dart';
import 'binding/index_binding.dart';
import 'ui/page/404.dart';
import 'ui/page/index_page.dart';

class AppRoutes {
  static final String main = "/main";

  static final List<GetPage> allPages = []..add(
      GetPage(name: main, page: () => IndexPage(), binding: IndexBinding()),
    );

  static GetPage getNotFoundPage() {
    return GetPage(name: '/notfound', page: () => NotFoundPage());
  }
}
