import 'package:flutter/material.dart';
import 'package:pethealth/animais.dart';
import 'package:pethealth/clientes.dart';
import 'package:pethealth/leis.dart';
import 'package:pethealth/login.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen();
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
                leading: Icon(Icons.menu),
                title: Text('Menu'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                }),
            ListTile(
                leading: Icon(Icons.home),
                title: Text('Logout'),
                subtitle: Text('Finalizar Sessão'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                }),
            ListTile(
                leading: Icon(Icons.pets),
                title: Text('Animais'),
                subtitle: Text('Animais Cadastrados'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyApp()));
                }),
            ListTile(
                leading: Icon(Icons.person_2_rounded),
                title: Text('Clientes'),
                subtitle: Text('Clientes cadastrados'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Clientes()));
                }),
            ListTile(
                leading: Icon(Icons.announcement),
                title: Text('Leia Sobre'),
                subtitle: Text('Diretrizes Organizacionais'),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Leis()));
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
        Text('Seja Bem Vindo(a) Geo',
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
                'Contrato Pet Health:',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: 'Inria Sans',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  height: 2.5,
                ),
              ),
              Text('Renovado',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: 'Inria Sans',
                    fontSize: 14,
                    color: Colors.white,
                    height: 2.5,
                  )),
              Text('Função:',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: 'Inria Sans',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    height: 2.5,
                  )),
              Text('Administrativa',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: 'Inria Sans',
                    fontSize: 14,
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
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
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
