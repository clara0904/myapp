import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(), debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Widget buildInfoCard({required IconData icon, required String text}) {
    return Container(
      height: 65,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.all(13.0),
      padding: const EdgeInsets.all(13.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon, color: Colors.teal, size: 25),
          Expanded(
            child: Center(
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.teal,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.teal,
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 140, 
            width: 140,  
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80), 
              image: const DecorationImage(
                image: AssetImage('imagens/perfil.jpg'),
                fit: BoxFit.cover,
              ),
            ),
        ),
        const Text(
          'Maria Clara',
          style: TextStyle(
            fontFamily: 'Pacifico',
            fontSize: 38,
            color: Colors.white,
          ),
        ),
        const Text(
          'FRONT-END DEVELOPER',
          style: TextStyle(
            fontFamily: 'SourceSansPro',
            fontSize: 25,
            color: Colors.white,
          ),
        ),

        const Padding(
          padding: EdgeInsets.symmetric(
            vertical: 5.0, horizontal: 120.0),
            child: Divider(
              thickness: 1.1,
              color: Colors.white,
            ),
          ),
      
          buildInfoCard(icon: Icons.phone, text: '+55 86 99804-5041'),
          buildInfoCard(icon: Icons.email, text: 'mclaradearaujop@aluno.uespi.br'), 
        
        ],
        ),
      ),
    );
  }
}
