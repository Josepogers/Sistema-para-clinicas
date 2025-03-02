import 'package:clinica_hd/recepcao_page.dart';
import 'package:flutter/material.dart';

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

  Widget botaoParaPages(
      BuildContext context, String title, IconData icon, Widget page) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: Color(0xFF145388), width: 2),
        ),
        elevation: 5,
      ),
      onPressed: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Color(0xFF145388), size: 40),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
