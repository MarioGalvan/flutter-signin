import 'package:flutter/material.dart';

class CardArticle extends StatelessWidget {
  const CardArticle({Key? key, required this.articulo}) : super(key: key);
  final articulo;
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                  'https://media.sketchfab.com/models/076c19aff68a4afdb55ff66f72cbead6/thumbnails/a31b45a4f55744b6b48c245c3bed9a86/6fdf835e85ed4dbca9cff4888e87ce96.jpeg'),
            ),
            title: Text('${articulo['titulo']}'),
            subtitle: Text(
              '${articulo['marca']}',
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(1),
            child: Text(
              'Cantidad en Bodega: ${articulo['cantBodega']}',
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
             
              ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white, // background
                  onPrimary: Colors.deepPurple, // foreground
                ),

                icon: const Icon(
                  // <-- Icon
                  Icons.edit,
                  size: 24.0,
                ),
                label: const Text('Editar'), // <-- Text
              ),
               ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(
                  // <-- Icon
                  Icons.delete,
                  size: 24.0,
                ),
                label: const Text('Eliminar'), // <-- Text
              ),
            ],
          ),
        ],
      ),
    );
  }
}
