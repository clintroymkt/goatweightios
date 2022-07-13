
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FemaleActivity extends StatefulWidget {
  const FemaleActivity({Key? key}) : super(key: key);

  @override
  _FemaleActivityState createState() => _FemaleActivityState();


}

class _FemaleActivityState extends State<FemaleActivity> {
  int currentindex = 0;
  String result = "";
  String carcusresult = "";
  double girth = 0;
  int counter = 0;

  TextEditingController girthController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
        appBar: AppBar(
        title: Text(
        "GoatWeight Estimator",
        style: TextStyle(color: Colors.pinkAccent),
    ),
    elevation: 0.0,
    backgroundColor: Color(0xfffafafa),
    actions: [
         IconButton(
            onPressed: (){},
            icon: Icon(Icons.settings,
            color: Colors.black,
                ),
                ),
              ],

              ),
               body: SingleChildScrollView(
                 child: Padding(
                  padding: const EdgeInsets.all(12.0),

                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Row(
                        children: [

                        radioButton("🐐 Ensikazi/Impwizi/Hadzi/Female", Colors.pink, 0,),



                      ],
                      ),
                      SizedBox(
                      height: 20.0,
                      ),
                      Container(
                      width: double.infinity,
                      child: Text(
                      "Weight(kg)",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      ),
                      ),
                      ),
                      SizedBox(height: 55.0,),
                      Container(
                      width: double.infinity,
                      child: Text(
                      "$result",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      ),
                      ),
                      ),

                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        width: double.infinity,
                        child: Text(
                          "Carcus Weight(kg)",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 55.0,),
                      Container(
                        width: double.infinity,
                        child: Text(
                          "$carcusresult",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),



                      Text(
                      "Chest Girth",
                      style: TextStyle(
                      fontSize: 18.0,
                      ),
                      ),
                      SizedBox(
                      height: 0.0,
                      ),
                      TextField(
                      keyboardType: TextInputType.number,
                      controller: girthController,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                      hintText: "Chest Girth(cm)",
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,

                      )
                      ),
                      ),

                      SizedBox(
                      height: 20.0
                      ),

                      Container(
                      height: 50.0,
                      width: double.infinity,
                      child: FlatButton(
                      onPressed: (){
                      setState(() {
                      girth = double.parse(girthController.value.text);
                      });

                        calculateWeight(girth);
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        color: Colors.pinkAccent,
                        child: Text("Calculate", style: TextStyle(color: Colors.white,
                        )),
                      ),
                    ),
                    SizedBox(
                    height: 20.0,
                    ),

                    ],
                )
              ),
            ),


            ),
          );
  }

  void calculateWeight(double girth){
  double finalresult = -27.15 + (0.908 * girth);
  String weight = finalresult.toStringAsPrecision(5);
  double carcresult =  (0.46 * finalresult);

  String carcweight = carcresult.toStringAsPrecision(5);
  setState(() {
    result = weight;
    carcusresult = carcweight;
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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)
        ),
        onPressed: () {  },
        child: Text(
          value,
          textAlign: TextAlign.center,
          style: TextStyle(

            color: currentindex == index ? Colors.white : color,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,

          ),
        ),
      ),
    ),
  );
}
}