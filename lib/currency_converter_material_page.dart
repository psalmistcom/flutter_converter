import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    const customColor = Color(0xFF2C3C44);
    const customColorBG = Colors.blueGrey;
    const customeBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(50.0),
      ),
      borderSide: BorderSide(
        // color: customColor,
        // width: 1.0,
        style: BorderStyle.none,
      ),
    );

    return Scaffold(
      backgroundColor: customColorBG,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '0',
                style: TextStyle(
                  color: Color.fromARGB(255, 200, 255, 204),
                  // backgroundColor: Color.fromRGBO(20, 0, 0, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 45,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: const TextField(
                  keyboardType: TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                  decoration: InputDecoration(
                    // border: customeBorder,
                    enabledBorder: customeBorder,
                    hintText: 'Enter amount in USD',
                    hintStyle: TextStyle(
                      color: customColor,
                    ),
                    prefixIcon: Icon(Icons.monetization_on),
                    prefixIconColor: customColor,
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: customeBorder,
                  ),
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  if (kDebugMode) {
                    print("you pressed me");
                  }
                },
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.black),
                  minimumSize: MaterialStatePropertyAll(
                    Size(300, 55),
                  ),
                ),
                child: const Text(
                  "Convert",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
