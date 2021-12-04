import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpecialtyDishPage extends StatelessWidget {
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
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Theme.of(context).primaryColor,
                borderRadius:
                BorderRadius.all(Radius.circular(15.0)),
                elevation: 5.0,
                child: MaterialButton(
                    onPressed: () {
                      //Implement login functionality.
                    },
                    minWidth: 200.0,
                    height: 42.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Iniciar',
                          style: TextStyle(
                              color: Colors.white, fontSize: 15),
                        ),
                      ],
                    )),
              ),
            ),
          ],
        ),

      ),
      
    );
  }
}
