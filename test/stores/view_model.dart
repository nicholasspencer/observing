import 'package:mobx/mobx.dart';

part 'view_model.g.dart';

class ViewModel = _ViewModel with _$ViewModel;

abstract class _ViewModel with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
