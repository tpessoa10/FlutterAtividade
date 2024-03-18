
import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/Modelo.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool checkboxValue = false;
  Modelo modelo = Modelo('NomeTeste', false);
  List<Modelo> lista = [
      Modelo('NomeTeste', false),
      Modelo('NomeTeste', false),
      Modelo('NomeTeste', false),
  ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: lista.length,
                itemBuilder: (context, index) {
                  return CheckboxListTile(
                    title: Text(lista[index].nome),
                    value: lista[index].check,
                    onChanged: (value){
                      setState(() {
                        lista[index].check = value!;
                      });
                    },
                    secondary: Text('${lista[index].check}'),
                  );
                },
              )
            )
          ],
        ),
      ),
    );
  }
}
