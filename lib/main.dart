import 'package:flutter/material.dart';
import 'package:proyecto_citamedic/constants.dart';
import 'package:proyecto_citamedic/signin_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auth Screen 1',
      //defino los temas y colores a usar en conjunto con las fuentes
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.lightBlue),
        brightness: Brightness.light,
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: TextTheme(
          display1: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          button: TextStyle(color: kPrimaryColor),
          headline:
              TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
        ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue.withOpacity(.4),
            ),
          ),
        ),
      ),
      home: WelcomeScreen(),
    );
  }
}

//
class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          //defino el fondo de pantalla
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/background1_app.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          //defino el texto y el tamaño
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Realiza tu consulta aquí",
                          style: Theme.of(context).textTheme.display1),
                    ],
                  ),
                ),
                //la ruta que sigue a la pantalla de login
                FittedBox(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return SignInScreen();
                        },
                      ));
                    },
                    //defino los atributos del boton y el texto dentro  de el
                    child: Container(
                      margin: EdgeInsets.only(bottom: 150),
                      padding:
                          EdgeInsets.symmetric(horizontal: 35, vertical: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: kPrimaryColor,
                      ),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "EMPEZA AHORA",
                            style: Theme.of(context).textTheme.button.copyWith(
                                  color: Colors.white,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
