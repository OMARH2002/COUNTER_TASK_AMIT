import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counters',
      debugShowCheckedModeBanner: false,

      home:Counters()
    );
  }
}

class Counters extends StatefulWidget {
  const Counters({super.key});

  @override
  State<Counters> createState() => _CountersState();
}

class _CountersState extends State<Counters> {
  int result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Counter',style: TextStyle(color: Colors.white),),
          centerTitle: true,
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(result.toString(), style: TextStyle(color: Colors.black,fontSize: 20),),

              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: (){
                        setState(() {
                          result++;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red
                      ),
                      child: Icon(Icons.add,color: Colors.white, )
                  ),

                  SizedBox(width: 10,),


                  ElevatedButton(
                      onPressed: (){
                        if(result !=0){
                          setState(() {
                            result--;
                          });
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red
                      ),
                      child: Icon(Icons.remove,color: Colors.white, )
                  )
                ],
              )
            ],
          ),
        ),
    );
  }
}