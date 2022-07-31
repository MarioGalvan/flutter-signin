import 'package:ejemplo_1/utils/articulosController.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class RegisterArticulos extends StatefulWidget {
  const RegisterArticulos({Key? key}) : super(key: key);
  @override
  State<RegisterArticulos> createState() => _RegisterArticulosState();
}

class _RegisterArticulosState extends State<RegisterArticulos> {
  TextEditingController controlIdArticulo = TextEditingController();
  TextEditingController controlDetalle = TextEditingController();
  TextEditingController controlMarca = TextEditingController();
  TextEditingController controlMedida = TextEditingController();
  TextEditingController controlCantBodega = TextEditingController();
  TextEditingController controlFoto = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: Colors.white, width: 0)),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: const CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      'https://cdn0.iconfinder.com/data/icons/3d-web-front-vol-1/512/3d-web-front-vol-1/1000/Full_Cart.png'),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: controlIdArticulo,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Id Articulo',
                  hintStyle: const TextStyle(fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  contentPadding: const EdgeInsets.all(16),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: controlDetalle,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Detalle',
                  hintStyle: const TextStyle(fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  contentPadding: const EdgeInsets.all(16),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: controlMarca,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Marca',
                  hintStyle: const TextStyle(fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  contentPadding: const EdgeInsets.all(16),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: controlMedida,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Medida',
                  hintStyle: const TextStyle(fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  contentPadding: const EdgeInsets.all(16),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: controlCantBodega,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Cantidad en Bodega',
                  hintStyle: const TextStyle(fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  contentPadding: const EdgeInsets.all(16),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      margin: const EdgeInsets.only(top: 10.0),
                      child: ElevatedButton.icon(
                        onPressed: () {
                          addArticulos(
                              controlIdArticulo.text,
                              controlDetalle.text,
                              controlMarca.text,
                              controlMedida.text,
                              controlCantBodega.text);
                        },
                        icon: const Icon(Icons.shop_2_outlined),
                        label: const Text('Agregar Articulo'),
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0))),
                        ),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
