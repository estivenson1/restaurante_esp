import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurante_esp/Views/login_or_register_page.dart';
import 'package:restaurante_esp/components/rounded_button.dart';

class SpecialtyDishPage extends StatelessWidget {
  static const String id= 'specialty_dish_page';
  const SpecialtyDishPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 60),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.orangeAccent, Colors.deepOrange])),
              child: Image.network(
                "https:\/\/elrancherito.com.co\/wp-content\/uploads\/2020\/06\/FotosWeb_Rancherito-04-600x600.png",
                height: 200,
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Con frijol, carne asada, carne molida o chicharrón, huevo frito, papa, yuca, ensalada, tajada de maduro, arroz y arepa.',
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            RoundedButton(title: 'Iniciar', colour: Colors.lightBlueAccent, onPressed: (){Navigator.pushNamed(context, LoginOrRegisterPage.id);}),

          ],
        ),

      ),

    );
  }
}
