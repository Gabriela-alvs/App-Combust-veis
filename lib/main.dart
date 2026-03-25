//imports - material 
import 'package:flutter/material.dart';

//etapa 1 - Esqueleto da tela
//objetivo - entender a estrutura da tela de um app Flutter

void main() => runApp(MaterialApp(
  home: CombustivelApp(),
));

class CombustivelApp extends StatelessWidget{

  String _resultado = "";
  void _calcular(){
    
  }
  @override
  Widget build(BuildContext context){
    //esqueleto visual datela - como a tag <html>
    return Scaffold(
        //local onde ficarão a maioria dos elementos

        //semelhante ao header
        appBar: AppBar(
          title:Text("Calculadora de combustíveis"),
        ),

        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              //aqui é onde estarão os nossos elementos/widgets
              Text(
                "Bem-vindo à calculadora de combustíveis!😉👌",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 36,), //espaçamento

              Text(
                "Informe o valor dos combustíveis:",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10,),

              TextField(
                decoration: InputDecoration(
                  labelText: "Valor da Gasolina:",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 16),

              TextField(
                decoration: InputDecoration(
                  labelText: "Valor do Etanol:",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 16),
              
              ElevatedButton(
                onPressed: _calcular,
               child: Text("Calcular"),
               ),
              SizedBox(height: 36),
              Text(
                _resultado,
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
          ],
        ),
      ),
    );
  }
}