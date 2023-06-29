import 'package:flutter/material.dart';
import 'package:pethealth/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

TextEditingController usuario = TextEditingController();
TextEditingController senha = TextEditingController();

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  final Map<String, String> _users = {
    'g': '1313',
    'camiscamilan@gmail.com': '1212',
  };

  void _submitForm(var usuario, var senha) {
    //if (/*_formKey.currentState!.validate*/)
    {
      //_formKey.currentState!.save();

      // Verificar as credenciais do usuário

      if (_users.containsKey(usuario) && _users[usuario] == senha) {
        // Login bem-sucedido, navegue para a próxima tela

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      } else {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('Erro de login'),
              content: Text('Credenciais inválidas. Tente novamente.'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      }
    }
  }

  void _abrirHome(var _username, var _password) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xff111853),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              width: 228,
              height: 85,
              child: Image.asset(
                'assets/imagens/Logo.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                style: const TextStyle(
                  color: Colors.white,
                ),
                controller: usuario,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person_2, color: Colors.white),
                  hintText: 'Usuário',
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, digite o Usuário';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                style: const TextStyle(
                  color: Colors.white,
                ),
                controller: senha,
                decoration: const InputDecoration(
                  icon: Icon(Icons.password_sharp, color: Colors.white),
                  hintText: 'Senha',
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, digite sua senha';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 50),
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      side: const BorderSide(color: Colors.white)),
                  onPressed: () {
                    //_abrirHome();
                    _submitForm(usuario.text, senha.text);
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.login),
                      SizedBox(width: 5),
                      Text('Login'),
                    ],
                  ),
                ),
              ],
            ),
            // TODO: cat image
          ],
        ),
      ),
    );
  }
}
