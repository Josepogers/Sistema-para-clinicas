import 'package:flutter/material.dart';

Widget botaoParaPages(
    BuildContext context, String titulo, IconData icone, Widget pagina) {
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
      MaterialPageRoute(builder: (context) => pagina),
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icone, color: Color(0xFF145388), size: 40),
        const SizedBox(height: 8),
        Text(
          titulo,
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
