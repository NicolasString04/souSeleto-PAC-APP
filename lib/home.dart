import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 204, 204, 204),
      appBar: AppBar(
        title: Image.network(
          'https://i.imgur.com/6cfISV7.png',
          width: 80,
          height: 80,
        ),
        centerTitle: false,
        backgroundColor: Color.fromARGB(255, 2, 2, 2),
        toolbarHeight: 80,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Ícone centralizado acima do campo de texto do CPF
            Icon(
              Icons.person, // Ícone de usuário
              size: 100, // Tamanho do ícone
              color: const Color.fromARGB(255, 0, 0, 0), // Cor do ícone
            ),

            SizedBox(height: 20), // Espaço entre o ícone e o campo de texto
            Text(
              "CPF",
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.start,
            ),
            SizedBox(
              width: 200, // tamanho do campo de texto
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  hintText: 'Digite seu CPF',
                ),
              ),
            ),
            SizedBox(
                height: 20), // Espaço entre o campo de texto e o próximo texto
            Text(
              "Senha",
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              width: 200, // largura do campo de text
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  hintText: 'Digite sua senha',
                ),
              ),
            ),
            SizedBox(height: 20), // Espaço entre o campo de texto e o botão
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Formulario()),
                );
              },
              child: Text(
                'Entrar',
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 75,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[],
          ),
          color: Color.fromARGB(255, 57, 177, 61),
        ),
      ),
    );
  }
}

class Formulario extends StatelessWidget {
  const Formulario({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 204, 204, 204),
      appBar: AppBar(
        title: Image.network(
          'https://i.imgur.com/6cfISV7.png',
          width: 80,
          height: 80,
        ),
        centerTitle: false,
        backgroundColor: Color.fromARGB(255, 2, 2, 2),
        toolbarHeight: 80,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              width: 500,
              height: 100,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero)),
                child: Text('CHAMADA',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.w600)),
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: 500,
              height: 100) 
          ],
        ),
      ),
    );
  }
}
