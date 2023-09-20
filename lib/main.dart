import 'package:flutter/material.dart';
void main(){
  runApp(boy());
}
class boy extends StatelessWidget {
  const boy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen()
      );
  }
}


class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  List <Widget>add=[];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(floatingActionButton: FloatingActionButton(onPressed: () {
      return setState(() {
        add.add(
        Padding(padding: EdgeInsets.only(bottom: 10),
        child: Container(
            color: Colors.red,
            height: 300,
            width: 150,
        )
        ));
      });
    },child: Icon(Icons.add),
    ),
        body: ListView.builder(itemCount:add.length,itemBuilder: (context, index) {
  return Column(
  children:add
);
        },


        )
    );
  }
}
