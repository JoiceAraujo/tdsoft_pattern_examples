import 'package:pattern_examples/decorator/base_decorator.dart';

import 'decorator/decorators/facebook_decorator.dart';
import 'decorator/decorators/slack_decorator.dart';
import 'decorator/decorators/sms_decorator.dart';
import 'decorator/notifier.dart';

/// Decorator main
void main() {
  final bool isSmsEnable = true;
  final bool isSlackEnable = true;
  final bool isFacebookEnable = true;

  final notifier = Notifier(['email1@email.com', 'email2@email.com']);
  var stack = BaseDecorator(notifier: notifier);

  if (isFacebookEnable) {
    stack = FacebookDecorator(notifier: stack);
  }
  if (isSlackEnable) {
    stack = SlackDecorator(notifier: stack);
  }
  if (isSmsEnable) {
    stack = SmsDecorator(notifier: stack);
  }

  stack.send('Um erro ocorreu no Firebase da aplicação');
}
