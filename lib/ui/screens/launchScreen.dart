import 'package:chopdemic/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';

class LaunchScreen extends StatefulWidget {
  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  bool checker = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 5,
                right: 5,
                bottom: 5,
              ),
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 200),
                    decoration: BoxDecoration(
                        color: Color(0xFF6B6EB1),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: FlatButton(
                              shape: StadiumBorder(),
                              color: Colors.white,
                              onPressed: () => singIn(context),
                              child: Text("SignIn")),
                        ),
                        Center(
                          child: InkWell(
                            child: Text("SignUp"),
                            onTap: () {
                              signUp(context);
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  CircleAvatar(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.mic,
                          size: 90,
                        ),
                        Text("Chop\n De\n Mic")
                      ],
                    ),
                    radius: 175,
                    backgroundColor: Colors.white,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  singIn(BuildContext context) {
    AlertDialog alertDialog = AlertDialog(
      title: Text("SignIn"),
      content: Container(
        height: 250,
        child: Column(
          children: [
            InputTextField(
              label: "Email",
            ),
            InputTextField(
              label: "Password",
            ),
            Row(
              children: [CheckBox(), Text("Accept conditions")],
            ),
            // isCkers ? Text("kdkkdkdkk") : Text('hjjjk'),
            FlatButton(
              onPressed: () {
                isCkers
                    ? Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                        return Home();
                      }))
                    : null;
              },
              child: Text('SignIn'),
            )
          ],
        ),
      ),
    );
    showDialog(
      context: context,
      builder: (context) => alertDialog,
    );
  }

  signUp(BuildContext context) {
    AlertDialog alertDialog = AlertDialog(
      title: Text("SignUp"),
      content: Container(
        height: 220,
        child: Column(
          children: [
            InputTextField(
              label: "Email",
            ),
            InputTextField(
              label: "Password",
            ),
            Row(
              children: [CheckBox(), Text("Accept conditions")],
            ),
            FlatButton(
              onPressed: () {
                isCkers
                    ? Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                        return Home();
                      }))
                    : null;
              },
              child: Text('SignUp'),
            )
          ],
        ),
      ),
    );
    showDialog(
      context: context,
      builder: (context) => alertDialog,
    );
  }
}

showErroMessage(BuildContext context) {
  AlertDialog alertDialog = AlertDialog(
    content: Text("kdkkkd"),
  );
  showDialog(context: context, builder: (_) => alertDialog);
}

bool isCkers = false;

class InputTextField extends StatelessWidget {
  final TextEditingController controller;
  final Function onChange;
  final String label;

  const InputTextField({
    this.controller,
    this.onChange,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChange,
      controller: controller,
      decoration: InputDecoration(labelText: label),
    );
  }
}

class CheckBox extends StatefulWidget {
  @override
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Checkbox(
        value: isCheck,
        activeColor: Colors.blue,
        onChanged: (bool val) {
          setState(() {
            isCheck = val;
            isCkers = true;
          });
        },
      ),
    );
  }
}
