import 'package:flutter/material.dart';
import 'package:pethealth/animais.dart';
import 'package:pethealth/home.dart';
import 'package:pethealth/leis.dart';

void main() => runApp(Clientes());

class Clientes extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ClientListPage(),
      debugShowCheckedModeBanner: false,
    );
  }

  void _openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }
}

class Client {
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String email;
  final String image;

  Client({
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.email,
    required this.image,
  });
}

class ClientListPage extends StatelessWidget {
  final List<Client> clients = [
    Client(
      firstName: 'Neymar',
      lastName: 'Júnior',
      phoneNumber: '11 9 3456789',
      email: 'ohneymaroh@example.com',
      image: 'assets/imagens/john.jpg',
    ),
    Client(
      firstName: 'Alexandre',
      lastName: 'Francisco',
      phoneNumber: '11 9 87654321',
      email: 'aleale@outlook.com',
      image: 'assets/imagens/jane.jpg',
    ),
    Client(
      firstName: 'Geovanna',
      lastName: 'Barbosa',
      phoneNumber: '11 9 87654321',
      email: 'barbosa@id.com',
      image: 'assets/imagens/red.jpg',
    ),
    Client(
      firstName: 'Norton',
      lastName: 'Rodrigues',
      phoneNumber: '11 9 87654321',
      email: 'avast.clean',
      image: 'assets/imagens/purple.jpg',
    ),
    Client(
      firstName: 'Pedro',
      lastName: 'Henrique',
      phoneNumber: '11 9 87654321',
      email: 'pedroh@example.com',
      image: 'assets/imagens/green.jpg',
    ),
    Client(
      firstName: 'Rodrigo',
      lastName: 'Macedo',
      phoneNumber: '11 9 87654321',
      email: 'maiscedorodri@outlook',
      image: 'assets/imagens/blue.jpg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Clientes'),
      ),
      body: ListView.builder(
        itemCount: clients.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(clients[index].image),
            ),
            title: Text(
              '${clients[index].firstName} ${clients[index].lastName}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Phone: ${clients[index].phoneNumber}'),
                Text('Email: ${clients[index].email}'),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        height: 60,
        color: Color.fromARGB(0, 255, 255, 255),
        child: Row(
          children: [
            SizedBox(
              width: 30,
            ),
            IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
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
                color: Colors.black,
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
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyApp()));
              },
            ),
            IconButton(
              icon: Icon(
                Icons.person_2_rounded,
                color: Colors.black,
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
