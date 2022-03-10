import 'package:flutter/material.dart';

class Splash2 extends StatelessWidget {
  const Splash2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
        body: Column(children: [
      const SizedBox(
        height: 50,
      ),
      Padding(
        padding: const EdgeInsets.only(right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
                style: TextButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
                    primary: Colors.black,
                    textStyle: const TextStyle(fontSize: 20)),
                onPressed: () {
                  print("btn clicado");
                },
                child: const Text("Skip")),
          ],
        ),
      ),
      Image.network(
          "https://res.cloudinary.com/kodularairtable/image/upload/v1646758281/buscola/splash.jpg"),
      const SizedBox(
        height: 75,
      ),
      ElevatedButton(
          style: ButtonStyle(
              textStyle: MaterialStateProperty.all<TextStyle>(
                  const TextStyle(fontSize: 18)),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: const BorderSide(color: Colors.black)))),
          onPressed: () {
            Navigator.pushNamed(context, "/segundo");
          },
          child: const Padding(
            padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
            child: Text(
              "Crie uma nova conta",
              style: TextStyle(color: Colors.black),
            ),
          )
      ),
          const SizedBox(
            height: 15,
          ),
      ElevatedButton(
          style: ButtonStyle(
              textStyle: MaterialStateProperty.all<TextStyle>(
                  const TextStyle(fontSize: 18)),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: const BorderSide(color: Colors.black)))),
          onPressed: () {
            Navigator.pushNamed(context, "/");
          },
          child: const Padding(
            padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
            child: Text(
              "Entrar"
            ),
          )
      ),
    ])
    );
  }
}
