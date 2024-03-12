import 'package:eventmaster/styles/styles.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40, top: 40), // Define o padding simétrico
            child: AppBar(
              backgroundColor: colorBackground(),
              leading: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D',
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text(
                'Matheus Henrique',
                style: fonteTextoBoldAzul(22),
              ),
            ),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child:
              Column(
                children: [
                  Row(
                    children: [
                      const Icon(Icons.account_circle_outlined, color: Colors.white, size: 30),
                      SizedBox(width: 20),
                      Text('Meu Perfil', style: fonteTextoRegularWhite(18))
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      const Icon(Icons.chat, color: Colors.white, size: 30),
                      SizedBox(width: 20),
                      Text('Mensagens', style: fonteTextoRegularWhite(18))
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      const Icon(Icons.calendar_month_outlined, color: Colors.white, size: 30),
                      SizedBox(width: 20),
                      Text('Filtros', style: fonteTextoRegularWhite(18))
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      const Icon(Icons.bookmark_border_rounded, color: Colors.white, size: 30),
                      SizedBox(width: 20),
                      Text('Salvos', style: fonteTextoRegularWhite(18))
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      const Icon(Icons.mail_outline, color: Colors.white, size: 30),
                      SizedBox(width: 20),
                      Text('Contate-nos', style: fonteTextoRegularWhite(18))
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      const Icon(Icons.settings_outlined, color: Colors.white, size: 30),
                      SizedBox(width: 20),
                      Text('Configurações', style: fonteTextoRegularWhite(18))
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      const Icon(Icons.question_mark_outlined, color: Colors.white, size: 30),
                      SizedBox(width: 20),
                      Text('Ajuda & FAQs', style: fonteTextoRegularWhite(18))
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      const Icon(Icons.exit_to_app, color: Colors.white, size: 30),
                      SizedBox(width: 20),
                      Text('Sair', style: fonteTextoRegularWhite(18))
                    ],
                  ),
                  const SizedBox(height: 30),
                ],
              ),
          ),
        ],
      ),
    );
  }
}