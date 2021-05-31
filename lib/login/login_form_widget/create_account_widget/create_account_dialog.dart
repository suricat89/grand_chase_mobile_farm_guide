import 'package:flutter/material.dart';
import 'package:grand_chase_farm_guide/login/login_form_widget/create_account_widget/create_account_widget.dart';

class CreateAccountDialog extends SimpleDialog {
  CreateAccountDialog({Key? key})
      : super(
          key: key,
          title: const Text("Criar conta"),
          children: <Widget>[CreateAccountWidget()],
        );
}
