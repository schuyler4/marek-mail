import 'dart:async';

import 'package:angular2/router.dart';
import 'package:angular2/core.dart';

import 'mail.dart';
import 'mail_service.dart';

@Component(
  selector: 'my-mail-component',
  template: '''
    <button (click)="goBack()" >back</button>
    <h3>{{ mail.title }}</h3>
    <h4>from: {{ mail.from }}</h4>
    <p>{{ mail.message }}</p>
  ''',
  directives: const [MailService, ROUTER_DIRECTIVES],
  providers: const[ROUTER_PROVIDERS]
)

class MailComponent implements OnInit {
  @Input()
  Mail mail;

  final MailService _mailService;
  final RouteParams _routeParams;
  final Location _location;

  MailComponent(this._location, this._mailService, this._routeParams);

  Future<Null> ngOnInit() async {
    var _id = _routeParams.get('id');
    var id = int.parse(_id ?? '', onError: (_) => null);
    if(id != null) mail = await (_mailService.getMailById(id));
  }

  void goBack() => _location.back();
}
