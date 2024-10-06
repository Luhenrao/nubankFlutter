import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: const HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(
          top: 30, bottom: 30), // Padding de 30px no topo e no bottom
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Conta',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'R\$1000,00',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Ícones alinhados
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icones(icon: Icons.pix, label: "Área Pix"),
                  Icones(icon: Icons.payment, label: "Pagamentos"),
                  Icones(icon: Icons.qr_code, label: "QRCode"),
                  Icones(icon: Icons.swap_horiz, label: "Transferir"),
                ],
              ),

              const SizedBox(height: 20),

              Divider(
                color: Colors.grey,
                thickness: 1,
                indent: 16,
                endIndent: 16,
              ),
              const SizedBox(height: 20),

              const CartaoCredito(),

              const SizedBox(height: 10),

              Divider(
                color: Colors.grey,
                thickness: 1,
                indent: 16,
                endIndent: 16,
              ),
              const SizedBox(height: 10),

              const Emprestimo(),

              const SizedBox(height: 10),
              Divider(
                color: Colors.grey,
                thickness: 1,
                indent: 16,
                endIndent: 16,
              ),
              const SizedBox(height: 10),

              const DescubraMaisCard(),
            ],
          ),
        ),
      ],
    );
  }
}

//icones
class Icones extends StatelessWidget {
  final IconData icon;
  final String label;

  const Icones({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: const Color(0xffcac3c3),
          child: Icon(icon, color: const Color(0xff000000)),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}

class CartaoCredito extends StatelessWidget {
  const CartaoCredito({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 0, //deixar se, sombra
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Cartão de Crédito',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Fatura Fechada',
              style: TextStyle(fontSize: 18, color: Colors.black45),
            ),
            Text(
              'R\$2.123,39',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Vencimento dia 15',
              style: TextStyle(fontSize: 16, color: Colors.black45),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: null,
              child: Text('Renegociar'),
            ),
          ],
        ),
      ),
    );
  }
}

class Emprestimo extends StatelessWidget {
  const Emprestimo({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0, //sem sombra
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Empréstimo',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Tudo certo! Você está em dia',
              style: TextStyle(fontSize: 18, color: Colors.black45),
            ),
          ],
        ),
      ),
    );
  }
}

class DescubraMaisCard extends StatelessWidget {
  const DescubraMaisCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        //deixar a borda redonda
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 5, // sombra
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            //  Image.asset(
            // 'aase/lib/images/seguroVida.png',
            //   width: 80,
            //      height: 80,
            //    ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Descubra Mais',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  'Seguro de Vida',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  'Cuide bem do que importa.',
                  style: TextStyle(fontSize: 18, color: Colors.black54),
                ),
                SizedBox(height: 5),
                ElevatedButton(
                  onPressed: null,
                  child: Text('Conhecer'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
