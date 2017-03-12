import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'mail.dart';

@Component(
  selector: 'my-mail-list',
  templateUrl: 'mail_list_component.html'
)

class MailListComponent {
  @Input()
  String title;
  @Input()
  List<Mail> mail;
}
