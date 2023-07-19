import 'package:flutter/material.dart';
import 'package:vonjeo/pages/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    var largeur = MediaQuery.of(context).size.width;
    var longueur = MediaQuery.of(context).size.height;
    return Scaffold(
      
      body: Container(
        height: longueur,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF2e64ab), Color(0xFF001e3e)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 10), // Ajout d'une marge au-dessus de l'image
              Container(
                height:
                    150, // Ajuster la hauteur du Container selon vos besoins
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'images/logo.png',
                      height: 80,
                      width: 80,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "LOGO\n“We can’t help everyone but everyone\n can help someone”",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFFF0F0F0),
                        fontFamily: 'regular',
                      ),
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 16),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(
                      16.0), // Ajout d'une marge intérieure au conteneur
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                        10.0), // Bords arrondis pour le conteneur
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Log in to HAZA-HAY",
                        style: TextStyle(
                          fontSize: 2,
                          color: Color(0xFF222222),
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 8),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Username or Email address",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF333333),
                            fontFamily: 'regular',
                          ),
                          textAlign: TextAlign.left,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Password",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF333333),
                                fontFamily: 'regular',
                              ),
                              textAlign: TextAlign.left,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              "Forgot password",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF3676CB),
                                fontFamily: 'regular',
                              ),
                              textAlign: TextAlign.left,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      TextField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          hintText: 'Mot de passe',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(_isPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                _isPasswordVisible = !_isPasswordVisible;
                              });
                            },
                          ),
                        ),
                        obscureText: !_isPasswordVisible,
                      ),
                      SizedBox(height: 16),
                      Container(
                        width: double.infinity,
                        height: 50.0,
                        margin: EdgeInsets.symmetric(vertical: 10.0),
                        child: ElevatedButton(
                          onPressed:toNewPage,
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                          child: Text('Log in'),
                        ),
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Divider(
                            color: Colors.black,
                            thickness: 1,
                            height: 20,
                          ),
                          Container(
                            color: Colors.white, // Fond blanc pour le texte
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    16), // Marge intérieure pour le conteneur
                            child: Text(
                              "Don't have an account?",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        height: 50.0,
                        margin: EdgeInsets.symmetric(vertical: 10.0),
                        child: ElevatedButton(
                          onPressed: toNewPage,
                          style: ElevatedButton.styleFrom(
                            primary: Colors
                                .white, // Utilisation du même fond blanc que le texte
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'regular',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void toNewPage() {
    Navigator.push(context,
        new MaterialPageRoute(builder: (BuildContext context) {
      return new RegisterPage(title: "register");
    }));
  }
}
