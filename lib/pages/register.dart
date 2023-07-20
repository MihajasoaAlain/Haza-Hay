import 'package:flutter/material.dart';
import './login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key, required this.title}) : super(key: key);
  

  final String title;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController =
      TextEditingController();
  final TextEditingController matriculeController = TextEditingController();

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
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              child: Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                        10.0), // Bords arrondis pour le conteneur
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            "Create new account",
                            style: TextStyle(
                              fontSize: 25,
                              color: Color(0xFF222222),
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        _textInput("First name"),
                        SizedBox(height: 3),
                        _infoInput(firstNameController, "First name"),
                        SizedBox(height: 3),
                        _textInput("Last name"),
                        SizedBox(height: 3),
                        _infoInput(lastNameController, "Last name"),
                        SizedBox(height: 3),
                        _textInput("Email adress"),
                        SizedBox(height: 3),
                        _infoInput(emailController, "Email"),
                        SizedBox(height: 3),
                        _textInput("Matricule"),
                        SizedBox(height: 3),
                        _infoInput(matriculeController, "Matricule"),
                        SizedBox(height: 3),
                        _textInput("Password"),
                        SizedBox(height: 3),
                        _passwordInput(passwordController, "Password"),
                        SizedBox(height: 3),
                        _textInput("Confirm Password"),
                        SizedBox(height: 3),
                        _passwordInput(confirmpasswordController, "Password"),
                        SizedBox(height: 3),
                        _button("Sign Up"),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Already have an account?",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xFF333333),
                                    fontFamily: 'regular',
                                  ),
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: InkWell(
                                    onTap: toLogin,
                                    child: Text(
                                      "Log in",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Color(0xFF333333),
                                        fontFamily: 'regular',
                                        decoration: TextDecoration.underline,
                                      ),
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  )),
                            ],
                          ),
                        )

                        // Add other children widgets here...
                      ],
                    ),
                  )),
            )));
  }

  Widget _infoInput(TextEditingController receiver, String hitText) {
    return TextField(
        controller: receiver,
        decoration: InputDecoration(
            hintText: hitText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            contentPadding:
                EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0)));
  }

  Widget _textInput(String texte) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        texte,
        style: TextStyle(
          fontSize: 16,
          color: Color(0xFF333333),
          fontFamily: 'regular',
        ),
        textAlign: TextAlign.left,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Widget _passwordInput(TextEditingController receiver, String hitText) {
    return TextField(
      controller: receiver,
      decoration: InputDecoration(
        hintText: hitText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0),
        suffixIcon: IconButton(
          icon: Icon(
              _isPasswordVisible ? Icons.visibility : Icons.visibility_off),
          onPressed: () {
            setState(() {
              _isPasswordVisible = !_isPasswordVisible;
            });
          },
        ),
      ),
      obscureText: !_isPasswordVisible,
    );
  }

  Widget _button(String textbtn) {
    return Container(
      width: double.infinity,
      height: 45.0,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: ElevatedButton(
        onPressed: () {
          // Fonction onPressed du bouton
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
        child: Text(
          textbtn,
          style: TextStyle(
              color: Colors.white, fontFamily: 'regular', fontSize: 20),
        ),
      ),
    );
  }

  void toLogin() {
    Navigator.push(context,
        new MaterialPageRoute(builder: (BuildContext context) {
      return new LoginPage(title: "Login");
    }));
  }
}
