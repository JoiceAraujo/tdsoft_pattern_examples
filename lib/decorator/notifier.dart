import 'package:pattern_examples/decorator/interface/notifier_interface.dart';

class Notifier implements NotifierInterface {
  final List<String> _emails;

  Notifier(List<String> emails) : _emails = emails;

  @override
  void send(String message) {
    print('Enviando a mensagem: "$message", para os emails: ${_emails.toString()} \n');
  }
}
