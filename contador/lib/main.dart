//import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(
      //Abaixo podemos escrever o app
      // inteiro dentro do runApp

      //MaterialApp(
      //  home: Container(
      //    color: Colors.amberAccent,
      //    alignment: Alignment.center,
      //    child: Text('Olá Mundo'),
      //  ),
      //),

      //Instanciamos o Widget MyApp no método main
      // afim de utilizarmos o hot reload.
      const MyApp());
}

// criar esta classe retornondo um Widget nos permite utilizar
// o Hot reaload do flutter
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/sorvetes.png'),
            fit: BoxFit.cover,
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Pode Entrar',
              style: TextStyle(
                  fontSize: 36.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
            const Padding(
              padding: EdgeInsets.all(32),
              child: Text(
                '0',
                style: TextStyle(
                    fontSize: 80.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextButton(
                onPressed: increment,
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    // O parametro padding causa um problema já que o tamanho dos textos de cada botão é diferente.
                    // Para contornar isso, utilizar o parametro fixedsize
                    // padding: const EdgeInsets.all(32)
                    fixedSize: const Size(100, 80),
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)
                    )
                ),
                child: const Text(
                  'Entrou',
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                ),
              ),
              const SizedBox(width: 32),
              TextButton(
                onPressed: decrement,
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    //padding: const EdgeInsets.all(32)
                    fixedSize: Size(100, 80),
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)
                    )
                ),
                child: const Text(
                  'Saiu',
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }

  void increment() {
  }

  void decrement() {
  }
}
