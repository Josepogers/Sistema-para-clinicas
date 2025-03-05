import 'package:clinica_hd/pages/recepcao_page.dart';
import 'package:flutter/material.dart';
import 'package:clinica_hd/components/botao_para_pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clínica HD',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
        centerTitle: true,
        backgroundColor: const Color(0xFF145388),
        elevation: 4,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              botaoParaPages(
                  context, 'Recepção', Icons.receipt_long, RecepcaoPage()),
              botaoParaPages(
                  context, 'Técnica', Icons.engineering, RecepcaoPage()),
              botaoParaPages(
                  context, 'Administração', Icons.business, RecepcaoPage()),
            ]),
            const SizedBox(height: 100),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              botaoParaPages(
                  context, 'Laudos', Icons.description, RecepcaoPage()),
              botaoParaPages(
                  context, 'Gerência', Icons.manage_accounts, RecepcaoPage()),
              botaoParaPages(
                  context, 'Faturamento', Icons.attach_money, RecepcaoPage()),
            ]),
          ],
        ),
      ),
    );
  }
}
