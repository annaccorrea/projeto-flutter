import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:projeto/aula08/classes/login_details.dart';

class LoginTextField extends StatefulWidget {
  const LoginTextField({
    super.key,
    required this.tipoLogin,
    required controller,
  }) : _controller = controller;

  final TextEditingController _controller;
  final TiposDeLogin tipoLogin;

  @override
  State<LoginTextField> createState() => _LoginTextFieldState();
}

class _LoginTextFieldState extends State<LoginTextField> {
  var loginDetails = LoginDetails.loginDetails();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget._controller,
      decoration: InputDecoration(
        prefixIcon: loginDetails[widget.tipoLogin]!.prefixIcon,
        label: Text(loginDetails[widget.tipoLogin]!.label),
        hintText: loginDetails[widget.tipoLogin]!.hintText,
        border: OutlineInputBorder(),
      ),
    );
  }
}
