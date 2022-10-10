import 'package:mobx/mobx.dart';
part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {
  @observable
  String name = '';

  @observable
  String surname = '';

  @computed
  String get completeName => '$name $surname';

  @action
  changeName(String newName) {
    name = newName;
  }

  @action
  changeSurname(String newName) {
    surname = newName;
  }
}
