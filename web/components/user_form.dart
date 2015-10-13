@HtmlImport('user_form.html')
library web.components.user_form;

import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;

@PolymerRegister('user-form')
class UserForm extends PolymerElement {
  UserForm.created() : super.created();

  @property
  String greeting = 'Hello!';
}
