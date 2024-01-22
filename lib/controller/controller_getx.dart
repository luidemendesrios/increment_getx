import 'package:get/get.dart';
//2 -> main.dart| 
class Controller extends GetxController{
  String title = 'App exemplo GetX';
  int valor = 0;

  void incrementValor(){
    valor++;
    update();
  }
}