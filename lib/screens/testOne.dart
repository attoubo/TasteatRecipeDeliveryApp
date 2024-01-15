import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page d\'accueil'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Cliquez sur l\'icône pour aller à la nouvelle page',
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                // Naviguer vers une nouvelle page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NouvellePage()),
                );
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Colors.blue,
                  ),
                  Text(
                    'Nouvelle page',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NouvellePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nouvelle Page'),
      ),
      body: const Center(
        child: Text('Contenu de la nouvelle page'),
      ),
    );
  }
}
