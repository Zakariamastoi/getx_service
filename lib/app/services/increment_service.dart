import 'package:get/get.dart';
import 'package:getx_srvices/app/controllers/home_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IncrementService extends GetxService {
  RxInt counter = 0.obs;
  Future<void> incrementCount() async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
     counter.value = (sharedPreferences.getInt("counter") ?? 0) +1;
     Get.find<HomeService>().counter.value = counter.value;
    print("Pressed $counter times");
    await sharedPreferences.setInt("counter", counter.value);
  }
}