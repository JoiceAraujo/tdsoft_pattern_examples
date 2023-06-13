import '../base_decorator.dart';

class FacebookDecorator extends BaseDecorator {
  FacebookDecorator({required super.notifier});

  @override
  void send(String message) {
    super.send(message);
    _sendMessageFromFacebook(message);
  }

  void _sendMessageFromFacebook(String message) {
    print('Enviando mensagem: "$message", pelo Facebook \n');
  }
}
