import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() =>
      _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState
    extends State<CurrencyConverterCupertinoPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    result = (double.parse(textEditingController.text) * 1001);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // const customColor = Color(0xFF2C3C44);
    const customColorBG = Color(0xFF607D8B);
    // const customeBorder = OutlineInputBorder(
    //   borderRadius: BorderRadius.all(
    //     Radius.circular(10.0),
    //   ),
    //   borderSide: BorderSide(
    //     // color: customColor,
    //     // width: 1.0,
    //     style: BorderStyle.none,
    //   ),
    // );

    return CupertinoPageScaffold(
      backgroundColor: customColorBG,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: customColorBG,
        middle: Text(
          "Currency Converter",
          style: TextStyle(
            color: CupertinoColors.white,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "₦ ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}",
                style: const TextStyle(
                  color: Color.fromARGB(255, 200, 255, 204),
                  // backgroundColor: Color.fromRGBO(20, 0, 0, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 45,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: CupertinoTextField(
                  controller: textEditingController,
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                  decoration: BoxDecoration(
                    color: CupertinoColors.white,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  placeholder: 'Enter amount in USD',
                  prefix: const Icon(
                    CupertinoIcons.money_dollar,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CupertinoButton(
                  onPressed: convert,
                  color: CupertinoColors.black,

                  // child: ElevatedButton.styleFrom(
                  //   elevation: 10,
                  //   backgroundColor: Colors.black,
                  //   foregroundColor: Colors.white,
                  //   minimumSize: const Size(double.infinity, 55),
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(5),
                  //   ),
                  // ),
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
              // Padding(
              //   padding: const EdgeInsets.all(10.0),
              //   child: ElevatedButton.icon(
              //     onPressed: () {
              //       setState(() {
              //         result = double.parse("0");
              //       });
              //     },
              //     style: ElevatedButton.styleFrom(
              //       elevation: 2,
              //       backgroundColor: Colors.red,
              //       foregroundColor: Colors.white,
              //       shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(5),
              //       ),
              //     ),
              //     label: const Text("Reset"),
              //     icon: const Icon(
              //       Icons.restore_sharp,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
