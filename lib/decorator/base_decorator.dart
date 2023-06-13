import 'package:pattern_examples/decorator/interface/notifier_interface.dart';

class BaseDecorator implements NotifierInterface {
  final NotifierInterface _wrappee;

  BaseDecorator({required NotifierInterface notifier}) : _wrappee = notifier;

  @override
  void send(String message) {
    _wrappee.send(message);
  }
}
