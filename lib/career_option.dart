import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class Career_Option extends StatefulWidget {
  @override
  State<Career_Option> createState() => _Career_OptionState();
}

class _Career_OptionState extends State<Career_Option> {
  final TextEditingController _dateController = TextEditingController();
  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now().add(Duration(days: 365)),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _dateController.text = DateFormat('dd/MM/yyyy').format(picked);
        // _dateController.text = picked.toString(); // Update TextFormField value with selected date
      });
    }
  }

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  }

  bool valuefirst = false;
  bool valuesecond = false;
  bool valuethird = false;
  bool valuefour = false;
  bool valuefive = false;
  bool valuesix = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.home),
          )
        ],
        backgroundColor: Colors.pink.shade300,
        centerTitle: true,
        title: const Text(
          "Career Option",
          style: TextStyle(
              shadows: [Shadow( // Define the shadow properties
                offset: Offset(2.0, 2.0), // Offset the shadow by 5 pixels horizontally and vertically
                blurRadius: 10.0, // Blur the shadow for a softer effect
                color: Colors.white70, // Set the shadow color to blue
              ),],
              fontFamily: 'Pacifico', fontSize: 25, color: Colors.white),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: DrawerHeader(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.pinkAccent,
                ), //BoxDecoration
                child: UserAccountsDrawerHeader(
                  // decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.all(Radius.circular(10)),
                  //     color: Colors.black),
                    accountName: Text(
                      "Faiyaz Ahmad",
                      style: TextStyle(
                          fontFamily: 'Gabriela',
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    accountEmail: Text("faiyazvicky51@gmail.com",
                        style: TextStyle(fontFamily: 'Gabriela', fontSize: 15)),
                    currentAccountPicture: CircleAvatar(
                        backgroundImage:
                        AssetImage('assets/images/user.png')) //circleAvatar
                ), //UserAccountDrawerHeader
              ),
            ), //DrawerHeader
            ListTile(
              leading: const Icon(Icons.menu,color: Colors.indigo,),
              title: const Text(
                '  Menu ',
                style: TextStyle(
                    fontFamily: 'Gabriela',
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                //Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.speaker_notes,color: Colors.indigo,),
              title: const Text(
                '  Blogs ',
                style: TextStyle(
                    fontFamily: 'Gabriela',
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                //Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.roundabout_right_outlined,color: Colors.indigo,),
              title: const Text(
                '  About us ',
                style: TextStyle(
                    fontFamily: 'Gabriela',
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                //Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.contact_page_outlined,color: Colors.indigo,),
              title: const Text(
                '  Contact us ',
                style: TextStyle(
                    fontFamily: 'Gabriela',
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                //Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.privacy_tip_outlined,color: Colors.indigo,),
              title: const Text(
                '  Privacy Policy ',
                style: TextStyle(
                    fontFamily: 'Gabriela',
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                //Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.assignment_return_outlined,color: Colors.indigo,),
              title: const Text(
                '  Return & Ship Policy ',
                style: TextStyle(
                    fontFamily: 'Gabriela',
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                //Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.policy,color: Colors.indigo,),
              title: const Text(
                '  Terms',
                style: TextStyle(
                    fontFamily: 'Gabriela',
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                //Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              const Text(
                "Personal Details :",
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    shadows: [Shadow( // Define the shadow properties
                      offset: Offset(1.0, 1.0), // Offset the shadow by 5 pixels horizontally and vertically
                      blurRadius: 10.0, // Blur the shadow for a softer effect
                      color: Colors.blue, // Set the shadow color to blue
                    ),],
                    fontFamily: 'Gabriela',
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    hintText: 'Enter your Name',
                    labelText: 'Name :',
                    labelStyle:
                    TextStyle(fontFamily: 'Suwannaphum', fontSize: 18)),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _dateController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    hintText: 'Enter your Dob',
                    //labelText: 'Dob :',
                    labelText: 'Date of Birth:',
                    //labelStyle: TextStyle(fontSize: 19),
                    suffixIcon: Icon(Icons.calendar_today),
                    labelStyle:
                    TextStyle(fontFamily: 'Suwannaphum', fontSize: 18)),
                onTap: () {
                  _selectDate(context);
                },
                readOnly: true, // Disable manual editing
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    hintText: 'Enter your Qualification',
                    labelText: 'Qualification :',
                    labelStyle:
                    TextStyle(fontFamily: 'Suwannaphum', fontSize: 18)),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    hintText: 'Enter your Designation',
                    labelText: 'Designation :',
                    labelStyle:
                    TextStyle(fontFamily: 'Suwannaphum', fontSize: 18)),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Gender :",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        shadows: [Shadow( // Define the shadow properties
                          offset: Offset(1.0, 1.0), // Offset the shadow by 5 pixels horizontally and vertically
                          blurRadius: 10.0, // Blur the shadow for a softer effect
                          color: Colors.blue, // Set the shadow color to blue
                        ),],
                        fontFamily: 'Gabriela',
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "Male",
                    style: TextStyle(fontFamily: 'Suwannaphum'),
                  ),
                  Checkbox(
                    //checkColor: Colors.greenAccent,
                    activeColor: Colors.blue,
                    value: valuefirst,
                    onChanged: (bool? value) {
                      setState(() {
                        valuefirst = value ?? false;
                        if (valuefirst) {
                          valuesecond = false;
                        } else {
                          //valuesecond = true;
                        }
                      });
                    },
                  ),
                  const Text(
                    "Female",
                    style: TextStyle(fontFamily: 'Suwannaphum'),
                  ),
                  Checkbox(
                    activeColor: Colors.blue,
                    value: valuesecond,
                    onChanged: (bool? value) {
                      setState(() {
                        valuesecond = value ?? false;
                        if (valuesecond) {
                          valuefirst = false;
                        } else {
                          //valuefirst = true;
                        }
                      });
                    },
                  ), //C// e
                ],
              ),
              //SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Marital Status :",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        shadows: [Shadow( // Define the shadow properties
                          offset: Offset(1.0, 1.0), // Offset the shadow by 5 pixels horizontally and vertically
                          blurRadius: 10.0, // Blur the shadow for a softer effect
                          color: Colors.blue, // Set the shadow color to blue
                        ),],
                        fontFamily: 'Gabriela',
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "Single",
                    style: TextStyle(fontFamily: 'Suwannaphum'),
                  ),
                  Checkbox(
                    activeColor: Colors.blue,
                    value: valuethird,
                    onChanged: (bool? value) {
                      setState(() {
                        valuethird = value ?? false;
                        if (valuethird) {
                          valuefour = false;
                        } else {
                          //valuefour = true;
                        }
                      });
                    },
                  ), //Ch
                  const Text(
                    "Married",
                    style: TextStyle(fontFamily: 'Suwannaphum'),
                  ),
                  Checkbox(
                    activeColor: Colors.blue,
                    value: valuefour,
                    onChanged: (bool? value) {
                      setState(() {
                        valuefour = value ?? false;
                        if (valuefour) {
                          valuethird = false;
                        } else {
                          //valuethird = true;
                        }
                      });
                    },
                  ),
                ],
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    hintText: 'Enter your Email',
                    labelText: 'Email :',
                    labelStyle:
                    TextStyle(fontFamily: 'Suwannaphum', fontSize: 18)),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    hintText: 'Enter your Mobile Number',
                    labelText: 'Mobile Number :',
                    labelStyle:
                    TextStyle(fontFamily: 'Suwannaphum', fontSize: 18)),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    hintText: 'Enter your Address',
                    labelText: 'Address :',
                    labelStyle:
                    TextStyle(fontFamily: 'Suwannaphum', fontSize: 18)),
              ),
              SizedBox(
                height: 10,
              ),
              const Text(
                "Emplyoment Experience :",
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    shadows: [Shadow( // Define the shadow properties
                      offset: Offset(1.0, 1.0), // Offset the shadow by 5 pixels horizontally and vertically
                      blurRadius: 10.0, // Blur the shadow for a softer effect
                      color: Colors.blue, // Set the shadow color to blue
                    ),],
                    fontFamily: 'Gabriela',
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  const Text(
                    "Occupation :",
                    style: TextStyle(
                        shadows: [Shadow( // Define the shadow properties
                          offset: Offset(1.0, 1.0), // Offset the shadow by 5 pixels horizontally and vertically
                          blurRadius: 10.0, // Blur the shadow for a softer effect
                          color: Colors.blue, // Set the shadow color to blue
                        ),],
                        fontFamily: 'Gabriela',
                        fontSize: 19,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "Full Time",
                    style: TextStyle(fontFamily: 'Suwannaphum'),
                  ),
                  Checkbox(
                    activeColor: Colors.blue,
                    value: valuefive,
                    onChanged: (bool? value) {
                      setState(() {
                        valuefive = value ?? false;
                        if (valuefive) {
                          valuesix = false;
                        } else {
                          //valuesix = true;
                        }
                      });
                    },
                  ), //Ch
                  const Text(
                    "Part Time",
                    style: TextStyle(fontFamily: 'Suwannaphum'),
                  ),
                  Checkbox(
                    activeColor: Colors.blue,
                    value: valuesix,
                    onChanged: (bool? value) {
                      setState(() {
                        valuesix = value ?? false;
                        if (valuesix) {
                          valuefive = false;
                        } else {
                          //valuefive = true;
                        }
                      });
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        // Set the background color
                        foregroundColor:
                        Colors.white, // Set the text color (optional)
                      ),
                      onPressed: () {},
                      child: Text(
                        "Submit",
                        style: TextStyle(
                            fontFamily: 'Gabriela',
                            fontSize: 19,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
