

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
   const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.size;
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
      children: [
              TextButton(style: TextButton.styleFrom(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
                primary: Colors.black,
                textStyle: const TextStyle(fontSize: 20)
              ),
                  onPressed: () {print("btn clicado");},
                  child: const Text("Skip")),
        ],
      ),
          ),
        Image.network("https://res.cloudinary.com/kodularairtable/image/upload/v1646758281/buscola/splash.jpg"),
        const SizedBox(
          height: 100,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(

                style: ButtonStyle(
                  textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(fontSize: 18)),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                  side: const BorderSide(color: Colors.black)
                )
    )
    ),
                  onPressed: (){Navigator.pushNamed(context, "/segundo");},
                  child: const Text("Avançar")
              ),
            ],
          ),
        )
        ]
    ));
  }
}
