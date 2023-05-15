
import 'package:circuitos_app/domain/models/tools_model.dart';
import 'package:flutter/material.dart';


class RepairProvider extends ChangeNotifier{
  InfoModel _info = new InfoModel(route: '', title: '', text: '', image: '');

  InfoModel get info => _info;
  set info(InfoModel info){
    _info = info;
    notifyListeners();
  }
}