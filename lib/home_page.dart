import 'package:clinica_hd/recepcao_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clinica HD'),
        backgroundColor: Color(0xFF145388),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Primeira linha de botões
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RecepcaoPage(),
                  ),
                ),
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.blueGrey[100],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.home,
                        color: Colors.black,
                      ),
                      Text("Recepção", style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 20), // Espaçamento entre os botões
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RecepcaoPage(),
                  ),
                ),
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.blueGrey[100],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.home,
                        color: Colors.black,
                      ),
                      Text("Técnica", style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 20), // Espaçamento entre os botões
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RecepcaoPage(),
                  ),
                ),
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.blueGrey[100],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.home,
                        color: Colors.black,
                      ),
                      Text("Administração",
                          style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // Espaçamento entre as linhas
          SizedBox(height: 20),

          // Segunda linha de botões
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RecepcaoPage(),
                  ),
                ),
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.blueGrey[100],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.home,
                        color: Colors.black,
                      ),
                      Text("Laudos", style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 20), // Espaçamento entre os botões
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RecepcaoPage(),
                  ),
                ),
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.blueGrey[100],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.home,
                        color: Colors.black,
                      ),
                      Text("Gerência", style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 20), // Espaçamento entre os botões
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RecepcaoPage(),
                  ),
                ),
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.blueGrey[100],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.home,
                        color: Colors.black,
                      ),
                      Text("Faturamento",
                          style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
