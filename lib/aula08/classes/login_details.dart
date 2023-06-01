import 'package:flutter/material.dart';

enum TiposDeLogin { email, cpf, telefone }

class LoginDetails {
  late String label;
  late String hintText;
  late Icon prefixIcon;

  LoginDetails({
    required this.label,
    required this.hintText,
    required this.prefixIcon,
  });

  static Map<TiposDeLogin, LoginDetails> loginDetails() {
    return {
      TiposDeLogin.email: LoginDetails(
          label: 'E-mail',
          hintText: 'usuario@mail.com',
          prefixIcon: const Icon(Icons.mail)),
      TiposDeLogin.cpf: LoginDetails(
          label: 'CPF',
          hintText: 'xxx.xxx.xxx-xx',
          prefixIcon: const Icon(Icons.credit_card)),
      TiposDeLogin.telefone: LoginDetails(
          label: 'Telefone',
          hintText: '(15) 11111-1111',
          prefixIcon: const Icon(Icons.phone))
    };
  }
}
