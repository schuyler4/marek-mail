import 'package:angular2/core.dart';
  import 'package:angular2/router.dart';

import 'auth_component.dart';
import 'inbox_component.dart';
import 'mail_component.dart';
import 'new_component.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: const [ROUTER_DIRECTIVES],
  providers: const[ROUTER_PROVIDERS]
)

@RouteConfig(const [
  const Route(path: '/auth', name: 'Auth', component: AuthComponent,
   useAsDefault: true),
  const Route(path: '/inbox', name: 'Inbox', component: InboxComponent),
  const Route(path: '/new', name: 'New', component: NewComponent),
])

class AppComponent {}
