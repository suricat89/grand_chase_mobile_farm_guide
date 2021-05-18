import 'package:flutter/material.dart';
import 'package:grand_chase_farm_guide/shared/enum/drop_types_enum.dart';

class AdventurePageController extends ChangeNotifier {
  bool _evostoneFilterShow = false;
  bool _sCardFilterShow = false;
  bool _bovFilterSelected = false;
  DropTypes _evostoneFilterSelected = DropTypes.none;
  DropTypes _sCardFilterSelected = DropTypes.none;

  bool get evostoneFilterShow => _evostoneFilterShow;
  bool get sCardFilterShow => _sCardFilterShow;
  bool get bovFilterSelected => _bovFilterSelected;
  DropTypes get evostoneFilterSelected => _evostoneFilterSelected;
  DropTypes get sCardFilterSelected => _sCardFilterSelected;

  set evostoneFilterShow(bool value) {
    _evostoneFilterShow = value;
    notifyListeners();
  }

  set sCardFilterShow(bool value) {
    _sCardFilterShow = value;
    notifyListeners();
  }

  set bovFilterSelected(bool value) {
    _bovFilterSelected = value;
    notifyListeners();
  }

  set evostoneFilterSelected(DropTypes value) {
    _evostoneFilterSelected = value;
    notifyListeners();
  }

  set sCardFilterSelected(DropTypes value) {
    _sCardFilterSelected = value;
    notifyListeners();
  }

  evostoneFilterToggle() {
    _evostoneFilterShow = !_evostoneFilterShow;
    notifyListeners();
  }

  sCardFilterToggle() {
    _sCardFilterShow = !_sCardFilterShow;
    notifyListeners();
  }

  bovFilterToggle() {
    _bovFilterSelected = !_bovFilterSelected;
    notifyListeners();
  }
}
