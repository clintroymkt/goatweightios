import 'package:flutter/material.dart';
import 'package:goatweightios2/pages/about.dart';
import 'package:goatweightios2/pages/femaleactivity.dart';
import 'package:goatweightios2/pages/maleactivity.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BmiCalculator(),
    );
  }
}

class BmiCalculator extends StatefulWidget {
  BmiCalculator({Key? key}) : super(key: key);

  @override
  _BmiCalculatorState createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  int currentindex = 0;
  String result = "";
  double girth = 0;
  int navindex = 0;
  final screens = [
     MaleActivity(),
     FemaleActivity(),
     Aboutpage(),
  ];

  TextEditingController girthController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(

        body:screens[navindex],



        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          //selectedItemColor: Colors.white,
          //unselectedItemColor: Colors.white70,
          currentIndex: navindex,
          onTap: (index) => setState(() => navindex = index),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.male),
              label: 'Male',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.female),
              label: 'Female',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'About',
              backgroundColor: Colors.blue,
            ),
          ],
        ),


      ),

    );
  }

  void calculateWeight(double girth){
    double finalresult = -28.79 + (0.949 * girth);
    String weight = finalresult.toStringAsPrecision(5);
    setState(() {
      result = weight;
    });
  }

  void calculateWeightf(double girth){
    double finalresult = -28.79 + (0.949 * girth);
    String weight = finalresult.toStringAsPrecision(5);
    setState(() {
      result = weight;
    });
  }

  void changeIndex(int index){
      setState(() {
        currentindex = index;
      });
  }




  Widget radioButton(String value, Color color, int index){
    return Expanded(
        child: Container(

          margin: EdgeInsets.symmetric(horizontal: 12.0),
          height: 80.0,
          child: FlatButton(
            color: currentindex == index ? color : Colors.grey[200],
            onPressed: () {  },
            child: Text(
                value,
              style: TextStyle(
                color: currentindex == index ? Colors.white : color,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
    );
  }
}


