import 'package:flutter/material.dart';

class RecepcaoPage extends StatefulWidget {
  const RecepcaoPage({super.key});

  @override
  State<RecepcaoPage> createState() => _RecepcaoPageState();
}

class _RecepcaoPageState extends State<RecepcaoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recepcao'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
            ),
            tooltip: 'Cadastrar paciente',
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.remove,
            ),
            tooltip: 'Remover paciente',
          )
        ],
      ),
    );
  }
}
