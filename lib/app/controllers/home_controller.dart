import 'package:get/get.dart';

class HomeService extends GetxService {
  RxInt counter = 0.obs;
  Future<HomeService> initial() async {
    return this;
  }
}