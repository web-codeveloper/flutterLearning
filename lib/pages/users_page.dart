import 'package:firstapp/widget/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';
import '../services/users/list_service.dart';
import 'package:fluttertoast/fluttertoast.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  _UsersPageState createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  UsersService usersService = UsersService();
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: const NavigationDrawerWidget(),
        appBar: AppBar(
          title: const Text('Users'),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            String? name;
            String? emailId;
            String? mobileNo;
            String? address;

            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      title: const Center(
                          child: Text("Add User",
                              style: TextStyle(color: Colors.amber))),
                      content: Form(
                          child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextFormField(
                              decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  labelText: "Name"),
                              onChanged: (_val) {
                                name = _val;
                              }),
                          const SizedBox(
                            height: 12.0,
                          ),
                          TextFormField(
                              decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  labelText: "Email ID"),
                              onChanged: (_val) {
                                emailId = _val;
                              }),
                          const SizedBox(
                            height: 12.0,
                          ),
                          TextFormField(
                              decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  labelText: "Mobile No"),
                              onChanged: (_val) {
                                mobileNo = _val;
                              }),
                          const SizedBox(
                            height: 12.0,
                          ),
                          TextFormField(
                              decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  labelText: "Address"),
                              onChanged: (_val) {
                                address = _val;
                              }),
                          const SizedBox(
                            height: 12.0,
                          ),
                          ElevatedButton(
                              onPressed: () async {
                                Map<String, dynamic> data = {
                                  "name": name,
                                  "emailId": emailId,
                                  "mobileNo": mobileNo,
                                  "address": address,
                                };
                                String res =
                                    await usersService.createUser(data);
                                res == "success"
                                    ? Fluttertoast.showToast(
                                        msg: "User successfully created !")
                                    : res == "required"
                                        ? Fluttertoast.showToast(
                                            msg: "All fields are required !")
                                        : Fluttertoast.showToast(
                                            msg: "Something went wrong !");
                                Navigator.of(context).pop();
                                setState(() {});
                              },
                              child: const Text("Submit"))
                        ],
                      )),
                    ));
          },
          child: const Icon(Icons.add),
          backgroundColor: Colors.amber,
        ),
        body: FutureBuilder<List>(
          future: usersService.getUsers(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              if (snapshot.data?.length == 0) {
                return const Center(
                  child: Text("No Data Found !"),
                );
              } else {
                return ListView.builder(
                    padding: const EdgeInsets.only(top: 5),
                    itemCount: snapshot.data?.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 7.0, vertical: 3.0),
                        leading: Image.asset('assets/images/user.png'),
                        title: Text(snapshot.data?[index]['name']),
                        subtitle: Text(snapshot.data?[index]['emailId'] +
                            '\n' +
                            snapshot.data?[index]['mobileNo']),
                        trailing: IconButton(
                          icon: const Icon(
                            Icons.delete,
                            color: Colors.red,
                          ),
                          onPressed: () async {
                            Map<String, dynamic> data = {
                              "id": snapshot.data?[index]['id']
                            };
                            var res = await usersService.deleteUser(data);
                            res == "success"
                                ? Fluttertoast.showToast(
                                    msg: "User successfully deleted !")
                                : Fluttertoast.showToast(
                                    msg: "Something went wrong !");
                            setState(() {});
                          },
                        ),
                      );
                    });
              }
            } else if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            } else {
              return const Center(
                child: const CircularProgressIndicator(),
              );
            }
          },
        ),
      );
}
