import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../clases/noticia.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List<Noticia>> noticiasFuture = getNoticias();

  static Future<List<Noticia>> getNoticias() async {
    final url = Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=78494cb91ff34ef8819d2009e39f911d');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final Map<String, dynamic> body = jsonDecode(response.body);
      final List articles = body['articles'];
      return articles.map((e) => Noticia.fromJson(e)).toList();
    } else {
      throw Exception('Error al cargar noticias');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Noticias')),
      body: FutureBuilder(
        future: noticiasFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else if (snapshot.hasData) {
            final noticias = snapshot.data!;
            return buildNoticias(noticias);
          } else {
            return const Text('No hay noticias disponibles');
          }
        },
      ),
    );
  }

  Widget buildNoticias(List<Noticia> noticias) {
    return ListView.separated(
      itemCount: noticias.length,
      separatorBuilder: (_, __) => const Divider(thickness: 1),
      itemBuilder: (context, index) {
        final noticia = noticias[index];
        return ListTile(
          leading: noticia.imagen != null
              ? Image.network(noticia.imagen!, width: 100, fit: BoxFit.cover)
              : const SizedBox(width: 100, child: Icon(Icons.image)),
          title: Text(noticia.titulo ?? 'Sin título'),
          subtitle: Text(noticia.descripcion ?? 'Sin descripción'),
          trailing: const Icon(Icons.arrow_forward_ios),
        );
      },
    );
  }
}
