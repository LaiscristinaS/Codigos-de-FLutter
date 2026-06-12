import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RankingFIFA(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RankingFIFA extends StatelessWidget {
  final List<Map<String, dynamic>> selecoes = [
    {'pais': 'Brasil', 'bandeira': '🇧🇷', 'titulos': 5},
    {'pais': 'Alemanha', 'bandeira': '🇩🇪', 'titulos': 4},
    {'pais': 'Itália', 'bandeira': '🇮🇹', 'titulos': 4},
    {'pais': 'Argentina', 'bandeira': '🇦🇷', 'titulos': 3},
    {'pais': 'França', 'bandeira': '🇫🇷', 'titulos': 2},
    {'pais': 'Uruguai', 'bandeira': '🇺🇾', 'titulos': 2},
    {'pais': 'Espanha', 'bandeira': '🇪🇸', 'titulos': 1},
    {'pais': 'Inglaterra', 'bandeira': '🇬🇧', 'titulos': 1},
    {'pais': 'Portugal', 'bandeira': '🇵🇹', 'titulos': 0},
    {'pais': 'Holana', 'bandeira': '🇳🇱', 'titulos': 0},
    {'pais': 'Estados Unidos', 'bandeira': '🇺🇸', 'titulos': 0},    
  ];
  @override
  Widget build(BuildContext) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Copa do mundo FIFA'),
         centerTitle: true,
       ),
      
      body: ListView.builder(
        itemCount: selecoes.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.blue[400],
            margin: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            elevation: 3,
            child: ListTile(
              leading: Text(
                selecoes[index]['bandeira'],
                style: TextStyle(fontSize: 32,),
             ),
             title: Text(
               selecoes[index]['pais'],
               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,),
             ),
             subtitle: Text('Títulos mundiais: ${selecoes[index]['titulos']}',),
             trailing: Icon(
               Icons.emoji_events,
             color: Colors.amber,
             ),
             onTap: () {
               ScaffoldMessenger.of(context).showSnackBar(
                 SnackBar(
                   content: Text(
                     '${selecoes[index]['pais']} possui'
                     '${selecoes[index]['titulos']} '
                     'titulo(s) mundial(is)',
                   ),
                   duration: Duration(seconds: 2),
                  ),
               );
             }
             ),
          );
        },
      ),
    );
  }
}
