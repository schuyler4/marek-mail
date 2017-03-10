import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'auth_component.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: const [ROUTER_DIRECTIVES],
  providers: const[ROUTER_PROVIDERS]
)

@RouteConfig(const [
  const Route(path: '/auth', name: 'Auth', component: AuthComponent,
   useAsDefault: true)
])

class AppComponent {}
