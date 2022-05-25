import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class textController extends GetxController{
  var nama = ''.obs;
  var jumlah = ''.obs;
  var harga = ''.obs;
  TextEditingController namaCtrl = TextEditingController();
  TextEditingController jumlahCtrl = TextEditingController();
  TextEditingController hargaCtrl = TextEditingController();

  onPressed(){
    nama(namaCtrl.text);
    jumlah(jumlahCtrl.text);
    harga(hargaCtrl.text);
  }
  @override
  void onClose() {
    namaCtrl.dispose();
    jumlahCtrl.dispose();
    hargaCtrl.dispose();
    super.onClose();
  }
}