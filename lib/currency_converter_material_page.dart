import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPage();
}

class _CurrencyConverterMaterialPage
    extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  double inputValue = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    inputValue = (double.parse(textEditingController.text));
    result = (double.parse(textEditingController.text) * 1001);
    textEditingController.clear();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const customColor = Color(0xFF2C3C44);
    const customColorBG = Colors.blueGrey;
    const customeBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
      borderSide: BorderSide(
        // color: customColor,
        // width: 1.0,
        style: BorderStyle.none,
      ),
    );

    return Scaffold(
      backgroundColor: customColorBG,
      appBar: AppBar(
        backgroundColor: customColorBG,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "Currency Converter",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Input Value: ${inputValue != 0 ? inputValue.toStringAsFixed(2) : "0"}",
                style: const TextStyle(
                  color: Colors.white54,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "₦ ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}",
                style: const TextStyle(
                  color: Color.fromARGB(255, 241, 253, 255),
                  // backgroundColor: Color.fromRGBO(20, 0, 0, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 45,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: textEditingController,
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                  decoration: const InputDecoration(
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
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: convert,
                  style: ElevatedButton.styleFrom(
                    elevation: 10,
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 55),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  // style: ButtonStyle(
                  //   elevation: const MaterialStatePropertyAll(5),
                  //   backgroundColor:
                  //       const MaterialStatePropertyAll(Colors.black),
                  //   foregroundColor:
                  //       const MaterialStatePropertyAll(Colors.white),
                  //   minimumSize: const MaterialStatePropertyAll(
                  //     Size(double.infinity, 55),
                  //   ),
                  //   shape: MaterialStatePropertyAll(
                  //     RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(5.0),
                  //     ),
                  //   ),
                  // ),
                  child: const Text(
                    "Convert",
                  ),
                  // child: const Icon(
                  //   Icons.ads_click,
                  // ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      result = double.parse("0");
                      // inputValue = double.parse("");
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 2,
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  label: const Text("Reset"),
                  icon: const Icon(
                    Icons.restore_sharp,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
