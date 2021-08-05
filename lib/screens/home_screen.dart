import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var inputnum = TextEditingController();
    var firstNo;
    var secondNo;
    var result;
    var ope;
    void calc(
      var firstNo,
      var secondNo,
      var ope,
    ) {
      switch (ope) {
        case '+':
          result = firstNo + secondNo;
          break;
        case '-':
          result = firstNo - secondNo;
          break;
        case '*':
          result = firstNo - secondNo;
          break;
        default:
          result = firstNo / secondNo;
          break;
      }
    }

    return Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              TextField(
                controller: inputnum,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: 'Enter Value',
                ),
                keyboardType: TextInputType.number,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Expanded(
                  child: Row(children: [
                    FloatingActionButton(
                      mini: true,
                      onPressed: () {
                        firstNo = int.parse(inputnum.text);
                        ope = '+';
                        inputnum.clear();
                      },
                      child: Text(
                        '+',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    FloatingActionButton(
                      mini: true,
                      onPressed: () {
                        firstNo = int.parse(inputnum.text);
                        ope = '-';
                        inputnum.clear();
                      },
                      child: Text('-',
                          style: TextStyle(fontSize: 20, color: Colors.black)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    FloatingActionButton(
                      mini: true,
                      onPressed: () {
                        firstNo = int.parse(inputnum.text);
                        ope = '*';
                        inputnum.clear();
                      },
                      child: Text(
                        '*',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    FloatingActionButton(
                      mini: true,
                      onPressed: () {
                        firstNo = int.parse(inputnum.text);
                        ope = '/';
                        inputnum.clear();
                      },
                      child: Text('/',
                          style: TextStyle(fontSize: 20, color: Colors.black)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    FloatingActionButton(
                      mini: true,
                      onPressed: () {
                        secondNo = int.parse(inputnum.text);
                        inputnum.clear();

                        calc(firstNo, secondNo, ope);

                        inputnum.text = result.toString();
                      },
                      child: Text('=',
                          style: TextStyle(fontSize: 20, color: Colors.black)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    FloatingActionButton(
                      mini: true,
                      onPressed: () {
                        inputnum.clear();
                      },
                      child: Text('C',
                          style: TextStyle(fontSize: 20, color: Colors.black)),
                    ),
                  ]),
                ),
              ),
            ])));
  }
}
