import 'package:flutter/material.dart';
import 'package:pethealth/animais.dart';
import 'package:pethealth/clientes.dart';
import 'package:pethealth/home.dart';
import 'package:pethealth/login.dart';

void main() => runApp(Leis());

class Leis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LGPDPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LGPDPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff111853),
      appBar: AppBar(
        title: Text(
          'Política de Privacidade',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'LGPD',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Seu aplicativo de animais leva a privacidade de seus usuários a sério. Esta política de privacidade descreve como as informações pessoais são coletadas, usadas e compartilhadas quando você utiliza nosso aplicativo.',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            Text(
              '1. Informações Coletadas',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Coletamos informações que você nos fornece diretamente quando utiliza nosso aplicativo, como seu nome, endereço de e-mail e outras informações de perfil.',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            Text(
              '2. Uso das Informações',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Utilizamos as informações coletadas para fornecer, manter e melhorar nosso aplicativo, além de personalizar sua experiência e enviar comunicações relacionadas ao aplicativo.',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            Text(
              '3. Compartilhamento das Informações',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Não compartilhamos informações pessoais dos usuários com terceiros, exceto quando exigido por lei ou quando o usuário autoriza expressamente.',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            Text(
              '4. Segurança',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Tomamos medidas para proteger as informações pessoais dos usuários contra acesso não autorizado, alteração, divulgação ou destruição.',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            Text(
              '5. Alterações nesta Política de Privacidade',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Reservamos o direito de atualizar esta política de privacidade a qualquer momento. Recomendamos que você revise periodicamente esta página para se manter informado sobre eventuais alterações.',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 60,
        color: Color(000848),
        child: Row(
          children: [
            SizedBox(
              width: 30,
            ),
            IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.apps,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Leis()));
              },
            ),
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.pets,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyApp()));
              },
            ),
            IconButton(
              icon: Icon(
                Icons.person_2_rounded,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Clientes()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
