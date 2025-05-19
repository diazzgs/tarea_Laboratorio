class Noticia {
  final String? titulo;
  final String? descripcion;
  final String? imagen;
  final String? url;

  Noticia({this.titulo, this.descripcion, this.imagen, this.url});

  factory Noticia.fromJson(Map<String, dynamic> json) {
    return Noticia(
      titulo: json['title'],
      descripcion: json['description'],
      imagen: json['urlToImage'],
      url: json['url'],
    );
  }
}
