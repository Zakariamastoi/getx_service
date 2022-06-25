import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'increment_service.dart';

class Services{

  static final Services _instance = Services._();

  Services._();


  factory Services() => _instance;

  Future<void> initServices() async {
    await Get.putAsync<IncrementService>(()  async => IncrementService());
    await Get.putAsync<HomeService>(() => HomeService().initial());

  }
}