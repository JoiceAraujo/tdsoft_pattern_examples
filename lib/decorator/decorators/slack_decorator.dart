import 'package:pattern_examples/decorator/base_decorator.dart';

class SlackDecorator extends BaseDecorator {
  SlackDecorator({required super.notifier});

  @override
  void send(String message) {
    super.send(message);
    _sendMessageFromSlack(message);
  }

  void _sendMessageFromSlack(String message) {
    print('Enviando mensagem: "$message", pelo Slack \n');
  }
}
