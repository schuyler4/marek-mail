import 'dart:async';

import 'package:angular2/core.dart';

import 'mail.dart';
import 'mock_mail.dart';

@Injectable()
class MailService {
  Future<List<Mail>> getMail() async => await mockMail;
  Future<Mail> getMailById(int id) async =>
    (await getMail().firstWhere((mail) => mail.id == id));
}
