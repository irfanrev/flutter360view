import 'package:get/get.dart';
import 'package:video_360/video_360.dart';

class VideoController extends GetxController {

  late Video360Controller controller;

  RxString durationText = ''.obs;
  RxString totalText = ''.obs;



  onVideo360ViewCreated(Video360Controller controller) {
    controller = controller;
  }

  @override
  void onInit() {
    
    super.onInit();
  }

}