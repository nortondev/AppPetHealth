import 'package:flutter/material.dart';
import 'package:pethealth/clientes.dart';
import 'package:pethealth/home.dart';
import 'package:pethealth/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff111853),
      appBar: AppBar(
        title: Text('Pet Health'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: _openDrawer,
        ),
      ),
      key: _scaffoldKey,
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
                leading: Icon(Icons.menu), title: Text('Menu'), onTap: () {}),
            ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                subtitle: Text('Voltar Home'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                }),
            ListTile(
                leading: Icon(Icons.abc_sharp),
                title: Text('Animais'),
                subtitle: Text('Animais Cadastrados'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyApp()));
                }),
            ListTile(
                leading: Icon(Icons.abc_sharp),
                title: Text('Clientes'),
                subtitle: Text('Clientes cadastrados'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Clientes()));
                })
          ],
        ),
      ),
      body: Container(
          child: Column(children: [
        SizedBox(
          height: 50,
        ),
        Center(
          child: Image.asset('assets/imagens/perfil.png'),
        ),
        Text(
          'Meu perfil',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Inria Sans',
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Colors.white,
            height: 2.5,
          ),
        ),
        Text('Administrador',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Inria Sans',
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Colors.white,
              height: 2.5,
            )),
        SizedBox(
          height: 50,
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Animais Cadastrados:',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: 'Inria Sans',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  height: 2.5,
                ),
              ),
              Text(
                  'Nome: Raio | Sexo: Macho | Tipo: Beta | Plano: Plano Básico | Cliente: Neymar | Animal: Peixe',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: 'Inria Sans',
                    fontSize: 16,
                    color: Colors.white,
                    height: 2.5,
                  )),
              Text(
                  'Nome: Silva | Sexo: Macho | Tipo: Golden | Plano: Plano Plus | Cliente: Neymar | Animal: Cachorro',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: 'Inria Sans',
                    fontSize: 16,
                    color: Colors.white,
                    height: 2.5,
                  )),
              Text(
                  'Nome: Pandora | Sexo: Fêmea | Tipo: Siâmes | Plano: Plano Básico | Cliente: Neymar | Animal: Gato',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: 'Inria Sans',
                    fontSize: 16,
                    color: Colors.white,
                    height: 2.5,
                  )),
            ],
          ),
        )
      ])),
      bottomNavigationBar: BottomAppBar(
        height: 60,
        color: Color(000848),
        child: Row(children: [
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
        ]),
      ),
    );
  }
}
