import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier{
  int count=0;
  void add(){
   count++;
   notifyListeners();
  }

    void dec(){
   count--;
   notifyListeners();
  }
     void reg(){
   count=0;
   notifyListeners();
  }
}