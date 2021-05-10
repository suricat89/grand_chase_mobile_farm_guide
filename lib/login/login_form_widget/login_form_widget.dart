import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grand_chase_farm_guide/core/app_colors.dart';
import 'package:grand_chase_farm_guide/login/login_form_widget/login_form_controller.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({Key? key}) : super(key: key);

  @override
  _LoginFormWidgetState createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  LoginFormController _controller = LoginFormController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          ValueListenableBuilder<String>(
            valueListenable: _controller.userNameNotifier,
            builder: (context, value, child) {
              return TextField(
                decoration: InputDecoration(
                  labelText: "Usuário",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12),
                  ),
                ),
                onChanged: (newValue) => _controller.userName = newValue,
              );
            },
          ),
          SizedBox(height: 18),
          ValueListenableBuilder<bool>(
            valueListenable: _controller.displayPasswordNotifier,
            builder: (_, displayPassword, __) {
              return ValueListenableBuilder<String>(
                valueListenable: _controller.passwordNotifier,
                builder: (___, password, ____) {
                  return TextField(
                    obscureText: !_controller.displayPassword,
                    decoration: InputDecoration(
                      labelText: "Senha",
                      suffixIcon: GestureDetector(
                        onTap: () => _controller.displayPassword =
                            !_controller.displayPassword,
                        child: Icon(_controller.displayPassword
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                    ),
                    onChanged: (newValue) => _controller.password = newValue,
                  );
                },
              );
            },
          ),
          ValueListenableBuilder<bool>(
            valueListenable: _controller.keepUserLoggedInNotifier,
            builder: (context, value, child) {
              return CheckboxListTile(
                value: value,
                title: Text(
                  "Manter-me logado",
                  style: GoogleFonts.roboto(color: Colors.black54),
                ),
                contentPadding: const EdgeInsets.all(0),
                controlAffinity: ListTileControlAffinity.leading,
                onChanged: (newValue) {
                  _controller.keepUserLoggedIn = newValue!;
                },
              );
            },
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "CRIAR CONTA",
                    style: GoogleFonts.roboto(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    overlayColor: MaterialStateProperty.all(Colors.black12),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 20)),
                    elevation: MaterialStateProperty.all(0),
                    side: MaterialStateProperty.all(
                      BorderSide(color: AppColors.divider),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "LOGIN",
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.deepPurple),
                    overlayColor:
                        MaterialStateProperty.all(Colors.deepPurple[700]),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 20)),
                    elevation: MaterialStateProperty.all(0),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
