import 'package:get/get.dart';

class MyController extends GetxController {
  /// Get.find => Get 안에 등록된 Controller를 불러오는 역할
  /// MyController return 타입
  /// get은 불러온다는 키워드.
  /// to 변수명
  static MyController get to => Get.find<MyController>();

  RxInt count = 0.obs;

  void countUp() {
    count.value++;
  }
}
