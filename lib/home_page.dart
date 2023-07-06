import 'package:first_app_fujitsu/modules/api/models/person_model.dart';
import 'package:first_app_fujitsu/modules/api/services/reqres_services.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int counter = 0;
  PersonModel? personModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'API Conexion',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
      body: Center(
        child: Text(
          personModel?.first_name ?? 'Este valor es nulo',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () async {
        personModel = await ServicesReqResApi().getReqResService();
        setState(() {});

        print(personModel!.id);
      }),
    );
  }
}
