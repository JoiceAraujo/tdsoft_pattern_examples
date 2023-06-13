import '../base_decorator.dart';

class SmsDecorator extends BaseDecorator {
  SmsDecorator({required super.notifier});

  @override
  void send(String message) {
    super.send(message);
    _sendSms(message);
  }

  void _sendSms(String message) {
    print('Enviando mensagem: "$message", por SMS \n');
  }
}
