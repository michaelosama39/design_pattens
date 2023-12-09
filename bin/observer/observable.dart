import 'observer.dart';

abstract class Observable {
  notify();
  add(Observer observer);
  remove(Observer observer);
  List<Observer> observers = [];
}
