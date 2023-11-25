import 'package:flutter/material.dart';

class CustomDropDownClass extends StatelessWidget {
  List<String> values;
  double width;
   CustomDropDownClass({required this.values, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(

      width: width,
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),

      decoration: BoxDecoration(
          color: Color.fromRGBO(53, 53, 53, 1.0),
          borderRadius: BorderRadius.circular(10)
      ),


      child: DropdownButton(
        value: values.first,
        underline: Container(),
        dropdownColor: const Color.fromRGBO(53, 53, 53, 1.0),

        onChanged: (_){},

        items: values.map((e)  {
          return DropdownMenuItem(child: Text(e), value: e,);
        }).toList(),

        style: const TextStyle(
          color: Colors.white,
        ),

      ),
    );
  }
}
