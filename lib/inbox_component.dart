import 'dart:async';

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'mail.dart';
import 'mail_service.dart';
import 'mail_list_component.dart';

@Component(
  selector: 'my-inbox-component',
  templateUrl: 'inbox_component.html',
  directives: const [MailListComponent],
  providers: const [MailService, ROUTER_BINDINGS]
)

class InboxComponent implements OnInit {
  String title = "Inbox";
  List<Mail> mail = [];

  final MailService _mailService;
  InboxComponent(this._mailService);

  Future<Null> getMail() async {
    mail = await _mailService.getMail();
  }

  void ngOnInit() {
    getMail();
    print('got mail');
  }
}
