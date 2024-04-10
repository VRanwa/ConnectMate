import 'package:connect_mate/src/widgets/bottombar/CustomBottom_screen.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';

class hire_screen extends StatefulWidget {
  const hire_screen({super.key});

  @override
  State<hire_screen> createState() => _hire_screenState();
}

class _hire_screenState extends State<hire_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hire Hourly'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 100,top: 50),
            child: Text('choose services',style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 80,
            width: 360,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(15),
            ),
            child:DropDownTextField(
              textFieldDecoration: InputDecoration(hintText: " services"),
              dropDownItemCount: 6,
              enableSearch: true,
              dropDownList: const [
                DropDownValueModel(name: 'electician', value: "electician"),
                DropDownValueModel(name: 'plumber', value: "plumber"),
                DropDownValueModel(name: 'carpentar', value: "carpentar"),
                DropDownValueModel(name: 'cook', value: "cook"),
                DropDownValueModel(name: 'driver', value: "driver"),
                DropDownValueModel(name: 'sweeper', value: "sweeper"),
                DropDownValueModel(name: 'labour', value: "labour"),
                DropDownValueModel(name: 'garderner', value: "garderner"),
                DropDownValueModel(name: 'builder', value: "builder"),
                DropDownValueModel(name: 'helper', value: "helper"),
                DropDownValueModel(name: 'ironsmith', value: "ironsmith"),
              ],
            ),
          ),
          SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.only(right: 100,top: 50),
            child: Text('select hours',style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 80,
            width: 360,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(15),
            ),
            child: DropDownTextField(
              textFieldDecoration: InputDecoration(hintText: " hours"),
              dropDownItemCount: 6,
              enableSearch: true,
              dropDownList: const [
                DropDownValueModel(name: '1', value: "1"),
                DropDownValueModel(name: '2', value: "2"),
                DropDownValueModel(name: '3', value: "3"),
                DropDownValueModel(name: '4', value: "4"),
                DropDownValueModel(name: '5', value: "5"),
                DropDownValueModel(name: '6', value: "6"),
                DropDownValueModel(name: '7', value: "7"),
                DropDownValueModel(name: '8', value: "8"),
                DropDownValueModel(name: '9', value: "9"),
              ],
            ),
          ),

          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(right: 100,top: 50),
            child: Text('enter amount',style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 80,
            width: 360,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: ' select money ',
              ),
            ),
          ),
          SizedBox(height: 40),


          Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.blue.shade900,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(child: Text('done',style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),)),
      ),
          SizedBox(height: 50),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomBottomBar(),
          ),
        ],
      ),
    );
  }
}
