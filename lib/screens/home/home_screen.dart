import 'package:chat_app/models/user.dart';
import 'package:chat_app/screens/home/home_bloc.dart';
import 'package:chat_app/utils/cutomWidgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  var bloc = HomeBloc();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CustomWidgets().customText(
                  text: "Name",
                  fonstSize: 30,
                  color: const Color(0xff516091),
                ),
                Expanded(child: Container()),
                SizedBox(
                  width: 200,
                  child: TextField(
                    controller: bloc.searchController,
                  ),
                ),
                Expanded(child: Container()),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomWidgets().customText(
                text: "PINNED",
                fonstSize: 18,
                color: const Color(0xff516091),
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                  itemCount: bloc.userlist.length,
                  itemBuilder: (ctx, index) {
                    return bloc.userlist[index].isPinned == true
                        ? Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Container(
                              child: ListTile(
                                leading: const CircleAvatar(
                                  backgroundColor: Colors.amber,
                                ),
                                title: CustomWidgets().customText(
                                  text: bloc.userlist[index].name,
                                  fonstSize: 18,
                                  color: const Color(0xff516091),
                                ),
                                subtitle: CustomWidgets().customText(
                                  text: bloc.userlist[index].msg,
                                  fonstSize: 14,
                                  color: const Color(0xff516091),
                                ),
                                trailing: CircleAvatar(
                                  backgroundColor: Colors.green[100],
                                  radius: 16,
                                  child: Text(
                                      bloc.userlist[index].badge.toString()),
                                ),
                              ),
                            ),
                          )
                        : Container();
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomWidgets().customText(
                text: "Other",
                fonstSize: 18,
                color: const Color(0xff516091),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: bloc.userlist.length,
                  itemBuilder: (ctx, index) {
                    return bloc.userlist[index].isPinned == false
                        ? Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Container(
                              child: ListTile(
                                leading: const CircleAvatar(
                                  backgroundColor: Colors.amber,
                                ),
                                title: CustomWidgets().customText(
                                  text: bloc.userlist[index].name,
                                  fonstSize: 18,
                                  color: const Color(0xff516091),
                                ),
                                subtitle: CustomWidgets().customText(
                                  text: bloc.userlist[index].msg,
                                  fonstSize: 14,
                                  color: const Color(0xff516091),
                                ),
                                trailing: CircleAvatar(
                                  backgroundColor: Colors.green[100],
                                  radius: 16,
                                  child: Text(
                                      bloc.userlist[index].badge.toString()),
                                ),
                              ),
                            ),
                          )
                        : Container();
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
