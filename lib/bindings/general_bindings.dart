import 'package:get/get.dart';
import 'package:safe_safai_shop/data/repositories/services/netwrok_managers.dart';


class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkManager());
  }

}
