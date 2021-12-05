import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurante_esp/Views/login_or_register_page.dart';
import 'package:restaurante_esp/components/rounded_button.dart';
import 'package:restaurante_esp/network/api_service.dart';
import 'package:restaurante_esp/network/responses/especialidad_response.dart';

class SpecialtyDishPage extends StatefulWidget  {
  static const String id= 'specialty_dish_page';
  const SpecialtyDishPage({Key? key}) : super(key: key);

  //final apiService = ApiService(Dio(BaseOptions( contentType: "application/json")), baseUrl: 'https://wsc.fabricasoftware.co/api');


  @override
  _SpecialtyDishPageState createState() => _SpecialtyDishPageState();

}

class _SpecialtyDishPageState extends State<SpecialtyDishPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //appBar: AppBar( title: Text("Flutter - Retrofit Implementation"), ),
      body: _buildBody(context),
      //floatingActionButton: FloatingActionButton.extended( onPressed: () { }, label: Icon(Icons.cancel), backgroundColor: Colors.green, ),
    );
  }

  // build list view & manage states
  FutureBuilder<EspecialidadResponse> _buildBody(BuildContext context) {
    final client = ApiService(
        Dio(BaseOptions(contentType: "application/json")));
    return FutureBuilder<EspecialidadResponse>(
      future: client.getEspecialidad(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final EspecialidadResponse posts = snapshot.data!;
          return _buildView(context, posts);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }


  // build list view & its tile
  Widget _buildView(BuildContext context, EspecialidadResponse posts) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 60),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.orangeAccent, Colors.deepOrange])),
            child: Image.network(
              posts.especialidadEntity!.urlFoto!,
              height: 200,
            ),
          ),
          SizedBox(height: 30),
          Text(
            posts.especialidadEntity!.descripcion!,
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          RoundedButton(title: 'Iniciar', colour: Colors.lightBlueAccent, onPressed: (){Navigator.pushNamed(context, LoginOrRegisterPage.id);}),

        ],
      ),

    );
  }

}
