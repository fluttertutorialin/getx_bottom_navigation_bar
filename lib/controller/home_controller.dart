import 'package:get/get.dart';
import '../model/user_info_entity.dart';

class HomeController extends GetxController with StateMixin<UserInfoEntity> {
@override
  void onInit() {
    super.onInit();
    print("init");
  }
}
