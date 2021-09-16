import 'package:assist_me/screens/homepage.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String email = '', password = '', error = '';
  String department = 'Computer Engineering', session = '2017';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: kPrimaryColor,
        brightness: Brightness.dark,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Form(
                key: _formKey,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 100),
                  child: Column(
                    children: [
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            email = value;
                          });
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: 'Full Name',
                          hintStyle: TextStyle(
                            height: 1,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: kPrimaryColor,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 16,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black.withOpacity(0.3),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: DropdownButton<String>(
                                value: department,
                                elevation: 4,
                                style: const TextStyle(
                                  color: Colors.black,
                                ),
                                underline: Container(
                                  color: Colors.transparent,
                                ),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    department = newValue!;
                                  });
                                },
                                items: <String>[
                                  'Computer Engineering',
                                  'Civil Engineering',
                                  'Software Engineering',
                                  'Mechanical Engineering',
                                  'Eletrical Engineering',
                                  'Eletronics Engineering',
                                  'Environmental Engineering',
                                  'Computer Science',
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          value,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                      ],
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black.withOpacity(0.3),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                              child: DropdownButton<String>(
                                value: session,
                                icon: null,
                                elevation: 4,
                                style: const TextStyle(
                                  color: Colors.black,
                                ),
                                underline: Container(
                                  color: Colors.transparent,
                                ),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    session = newValue!;
                                  });
                                },
                                items: <String>[
                                  '2017',
                                  '2018',
                                  '2019',
                                  '2020',
                                  '2021',
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          value,
                                        ),
                                        SizedBox(
                                          width: 40,
                                        ),
                                      ],
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ),
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              'Next',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
