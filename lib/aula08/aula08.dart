import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:projeto/aula08/classes/login_details.dart';
import 'package:projeto/aula08/widgets/login_text_field.dart';
import 'package:projeto/aula08/widgets/tipo_login.dart';
import 'package:projeto/aula09/aula09.dart';

//Scaffold carcaça da tela quer permite criar appbar, body, bottomNavigationBar, drawer
class Aula08 extends StatefulWidget {
  const Aula08({super.key});

  @override
  State<Aula08> createState() => _Aula08State();
}

class _Aula08State extends State<Aula08> {
  bool _senhaEscondida = true;
  late final TextEditingController _userController;
  late final TextEditingController _senhaController;
  List<bool> _selectedList = [true, false, false];
  TiposDeLogin tipoLogin = TiposDeLogin.email;
  var _memorizar = false;

  @override
  void initState() {
    _userController = TextEditingController();
    _senhaController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _userController.dispose();
    _senhaController.dispose();
    super.dispose();
  }

  void _alterarVisibilidade() {
    setState(() {
      _senhaEscondida = !_senhaEscondida;
    });
  }

  void _alterarTipoLogin(int index) {
    setState(() {
      tipoLogin = TiposDeLogin.values[index];
      _selectedList =
          _selectedList.mapIndexed((idx, val) => idx == index).toList();
    });
  }

  void _testarCampos() {
    debugPrint('Usuário: ${_userController.text}');
    debugPrint('Senha: ${_senhaController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.75,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  width: 240,
                  image: AssetImage('assets/images/logoifsp.png'),
                ),
                const SizedBox(
                  height: 8,
                ),
                TipoLogin(
                  selectedList: _selectedList,
                  alterarTipoLogin: _alterarTipoLogin,
                ),
                const SizedBox(
                  height: 8,
                ),
                LoginTextField(
                    tipoLogin: tipoLogin, controller: _userController),
                const SizedBox(height: 16),
                TextField(
                  controller: _senhaController,
                  obscureText: _senhaEscondida,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    label: Text('Senha'),
                    hintText: 'Senha',
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: _alterarVisibilidade,
                      icon: Icon(_senhaEscondida
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text('Memorizar dados'),
                    const SizedBox(
                      width: 8,
                    ),
                    Switch(
                      value: _memorizar,
                      onChanged: (value) {
                        setState(
                          () {
                            _memorizar = value;
                          },
                        );
                      },
                    )
                  ],
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize:
                        Size(MediaQuery.of(context).size.width * 0.75, 40),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/aula09',
                      arguments: {'nome': 'Gabriel'},
                    );
                  },
                  child: const Text('Login'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
