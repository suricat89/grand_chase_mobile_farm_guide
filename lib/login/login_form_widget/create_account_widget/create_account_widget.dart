import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grand_chase_farm_guide/core/app_colors.dart';
import 'package:grand_chase_farm_guide/core/text_styles.dart';
import 'package:grand_chase_farm_guide/login/login_form_widget/create_account_widget/create_account_controller.dart';
import 'package:grand_chase_farm_guide/shared/models/password_criteria_model.dart';

class CreateAccountWidget extends StatelessWidget {
  final CreateAccountController _controller = CreateAccountController();

  CreateAccountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.maxFinite,
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
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "A senha deve conter:",
                    style: TextStyles.subtitle2,
                    textAlign: TextAlign.left,
                  ),
                  ValueListenableBuilder<List<PasswordCriteriaModel>>(
                    valueListenable: _controller.passwordCriteriaNotifier,
                    builder: (_, passwordCriteria, __) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: passwordCriteria
                            .map(
                              (criteriaItem) => Text(
                                criteriaItem.description,
                                textAlign: TextAlign.left,
                                style: TextStyles.body2.copyWith(
                                  color: criteriaItem.isValid
                                      ? Colors.green
                                      : Colors.red,
                                ),
                              ),
                            )
                            .toList(),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  child: Text(
                    "CANCELAR",
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
                  onPressed: () {
                    _controller.displayPassword = false;
                    _controller.userName = '';
                    _controller.password = '';
                    Navigator.pop(context);
                  },
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "CRIAR",
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
