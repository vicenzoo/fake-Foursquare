import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Colors.blue,
      minimumSize: const Size(150, 36),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(18.0)),
          side: BorderSide(color: Colors.blue)),
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/FundoeVetSIS.png"),
                fit: BoxFit.cover)),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 80, left: 30, right: 30),
              child: Image.asset("assets/images/logo.png"),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40, left: 30, right: 30),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.0))),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                    filled: true,
                    fillColor: Colors.white,
                    alignLabelWithHint: true,
                    labelText: 'E-mail'),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 30, right: 30),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.0))),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                    filled: true,
                    fillColor: Colors.white,
                    alignLabelWithHint: true,
                    labelText: 'Senha'),
                keyboardType: TextInputType.text,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
              child: ButtonBar(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    width: 150,
                    child: TextButton(
                      style: flatButtonStyle,
                      onPressed: () {/** */},
                      child: const Text("Cadastrar",
                          style: TextStyle(
                              fontFamily: "Roboto", color: Colors.white)),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    child: TextButton(
                      style: flatButtonStyle,
                      onPressed: () {/** */},
                      child: const Text("Entrar",
                          style: TextStyle(
                              fontFamily: "Roboto", color: Colors.white)),
                    ),
                  )
                ],
              ),
            ),
            OutlinedButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
              onPressed: () {/** */},
              child: const Text('Esqueci a senha',
                  style: TextStyle(fontFamily: "Roboto")),
            ),
            const Expanded(
                child: Padding(
                    padding: EdgeInsets.only(right: 40, bottom: 60),
                    child: Align(
                        alignment: FractionalOffset.bottomRight,
                        child: Text(
                          "A saúde dos \n seus pets\n em suas mãos!",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontFamily: "Roboto",
                              fontSize: 25,
                              color: Color.fromARGB(255, 145, 210, 232)),
                        ))))
          ],
        ),
      ),
    );
  }
}
