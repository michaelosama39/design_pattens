
import 'observable.dart';
import 'observer.dart';

void main(List<String> arguments) {
  // print('Hello world: ${calculate()}!');
}

class User implements Observer{
  String? name;

  User(String name){
    this.name = name;
  }

  sendEmail(dynamic state){
    print('user ${name} $state');
  }

  @override
  update(state) {
    sendEmail(state);
  }
}

class IPhone implements Observable{
  @override
  late List<Observer> observers;
  late bool availble;

  IPhone(){
    this.availble = false;
    this.observers = [];
  }

  @override
  add(Observer observer) {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  notify() {
    // TODO: implement notify
    throw UnimplementedError();
  }

  @override
  remove(Observer observer) {
    // TODO: implement remove
    throw UnimplementedError();
  }

}