import 'package:ejemplo_1/domain/controller/authcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:http/http.dart' as http;

class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  TextEditingController controlUser = TextEditingController();
  TextEditingController controlPass = TextEditingController();
  AuthController controladorUser = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Welcome'),
        ),
        body: Container(
            height: 500,
            width: 800,
            margin: const EdgeInsets.only(top: 60.0),
            child: Align(
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.all(20),
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        controladorUser.users?.isNotEmpty == true
                            ? 'Bievenido ${controladorUser.users![0].nombre}'
                            : 'Bienvenido Mario',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w200,
                            fontFamily: 'Open Sans',
                            fontSize: 20),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          // boxShadow: [
                          //   BoxShadow(
                          //       blurRadius: 1,
                          //       color: Color.fromARGB(255, 129, 123, 123),
                          //       spreadRadius: 0.4)
                          // ],
                        ),
                        child: const CircleAvatar(
                          radius: 80,
                          backgroundColor: Colors.white,
                          backgroundImage: NetworkImage(
                              'https://cdn1.iconfinder.com/data/icons/characters-and-objects/512/workflow_office___man_computer_work_job_wireless_online_work_from_home.png'),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            )));
  }
}
