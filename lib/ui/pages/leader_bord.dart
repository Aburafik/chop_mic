import 'package:chopdemic/modules/users_model.dart';
import 'package:chopdemic/ui/widgets/appbar.dart';
import 'package:flutter/material.dart';

class LeaderBord extends StatefulWidget {
  @override
  _LeaderBordState createState() => _LeaderBordState();
}

class _LeaderBordState extends State<LeaderBord> {
  List<Users> users = user;
  @override
  Widget build(BuildContext context) {
    showDetails() {
      AlertDialog alertDialog = AlertDialog(
        titlePadding: EdgeInsets.only(top: 5),
        title: CircleAvatar(
          radius: 70,
          child: Text("kjbbsjkdskjd"),
        ),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("bbdsbds"),
            Text("bbdsbdsbvsbvsdj\nvbjkbvjkvkjskj"),
            // Text("bbdsbdsbvsbvsdj\nvbjkbvjkvkjskj"),
          ],
        ),
      );
      showDialog(context: context, builder: (_) => alertDialog);
      return alertDialog;
    }

    return Scaffold(
      appBar: appBar("LEADER BORD"),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, int index) {
            return ListTile(
              onTap: () {
                showDetails();
              },
              title: Text(users[index].contentantName),
              leading: CircleAvatar(
                radius: 20,
                child: Text(users[index].contestantImage),
              ),
              trailing: Text(users[index].contestantVotes.toString()),
            );
          }),
    );
  }
}
