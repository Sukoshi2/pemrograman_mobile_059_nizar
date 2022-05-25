import 'package:get/get.dart';

class RadioController extends GetxController {
  var selectedRadio = ''.obs;

  onChangedRadio(var radio){
    selectedRadio.value = radio;
  }
}