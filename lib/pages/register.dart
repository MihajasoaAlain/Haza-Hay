import 'package:flutter/material.dart';

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
  final TextEditingController confirmpasswordController =TextEditingController();
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Create new account",
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF222222),
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            _textInput("First name"),
            _infoInput(firstNameController, "First name"),
            _textInput("Last name"),
            _infoInput(lastNameController, "Last name"),
            _textInput("Email adress"),
            _infoInput(emailController, "Email"),
            _textInput("Matricule"),
            _infoInput(matriculeController, "Matricule"),
            _textInput("Password"),
            _passwordInput(passwordController,"Password" ),
            _textInput("Confirm Password"),
            _passwordInput(confirmpasswordController,"Password" )
            // Add other children widgets here...
          ],
        ),
      ),
    );
  }

  Widget _infoInput(TextEditingController receiver, String hitText) {
    return TextField(
      controller: receiver,
      decoration: InputDecoration(
        hintText: hitText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
    );
  }

  Widget _textInput(String texte) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        texte,
        style: TextStyle(
          fontSize: 14,
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
}
