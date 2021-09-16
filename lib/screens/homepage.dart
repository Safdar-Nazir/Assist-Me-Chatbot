import 'package:assist_me/constant.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = 'homepage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();

  List<Map> myData = [
    {
      0: 'I am Juno. Your digital assistant.',
      1: 'As I don\'t know about your current semester. So, I would like to tell you that the last date of registering in a semester is 1 week after the starting of semester.',
      2: 'Your result will be shown after 2 weeks of your final exams.',
      3: 'I would glad to help you out. But I am very bad at teaching.',
      4: 'Well that\'s not my field to be honest.',
      5: 'We are sorry that we took that long to build an ERP for you. But now ERP is active and ready to be tested. Visit your department to get your ERP Login.',
      6: 'Library will stay closed on weekends.',
      7: 'Transport office is in-front of the Telecom Department. Here is the contact if you need\n0519047470',
      8: 'You can visit your course teacher and have a look at your attendance',
      9: 'Let\'s just stick to the academic cell of the department.',
    }
  ];

  // Questions
  //0. Who are you?
  //1. What's the Last date for registration in next semester?
  //2. When will we have the result of our current semester?
  //3. Can you help me with my exams?
  //4. Can you help with me with Fluid Mechanics?
  //5. Where is ERP system for students?
  //6. What is closing time of library on Sunday?
  //7. Where is transport office?
  //8. Can i check the attendance register as i am shortlisted but i have full attendance?
  //9. What's 2+2?

  String? sender, reciever;
  bool check = false;
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 0.2,
        title: Text(
          'Assist Me',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: kPrimaryColor,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              check
                  ? Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        '$sender',
                        style: TextStyle(color: Colors.black, height: 1.3),
                      ),
                    )
                  : Container(),
              SizedBox(
                height: 10,
              ),
              check
                  ? Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        '$reciever',
                        style: TextStyle(color: Colors.white, height: 1.5),
                      ),
                    )
                  : Container(),
              Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 0,
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 0,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black.withOpacity(0.5),
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextField(
                          controller: _controller,
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                          decoration: InputDecoration(
                              isDense: true,
                              hintText: 'Type Here',
                              hintStyle: TextStyle(
                                fontSize: 16,
                              ),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                // horizontal: 20,
                                vertical: 10,
                              )),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print(myData[0].values);
                      setState(() {
                        sender = null;
                        sender = _controller.text;
                        print(sender);
                        reciever = null;
                        var _list = myData[0].values.toList();
                        reciever = _list[i];
                        i += 1;
                        check = true;
                        _controller.clear();
                      });
                    },
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9999),
                            color: kPrimaryColor,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.arrow_upward_rounded,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
