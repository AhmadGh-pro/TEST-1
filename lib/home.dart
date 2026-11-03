import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  Home({super.key});
  @override
  Widget build(BuildContext context) {
    List userName = [
      {'name': 'ahmad', 'age': '432'},
      {'name': 'ahmad', 'age': '432'},
      {'name': 'ahmad', 'age': '432'},
      {'name': 'ahmad', 'age': '432'},
    ];
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(backgroundColor: Colors.blue, title: Text('Title')),
      body: Container(
        color: Colors.red,
        child: ListView(
          children: [
            Center(
              child: MaterialButton(
                onPressed: () {
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: Colors.amber,
                        icon: Icon(Icons.add_alert_outlined),
                        shadowColor: Colors.black,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        title: Text('Alert!'),
                        content: Text("Are You shure?"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              print("ALERT!!!!");
                            },
                            child: Text("OK"),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text("Cancel"),
                          ),
                        ],
                      );
                    },
                  );
                },
                color: Colors.red,
                child: Text("Show Alert !!"),
              ),
            ),
            Center(
              child: MaterialButton(
                onPressed: () {
                  scaffoldKey.currentState!.showBottomSheet(
                    (context) => Container(
                      color: Colors.blueAccent,
                      height: 100,
                      width: 10000,
                      child: Column(
                        children: [
                          Text(
                            'Choose Image',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight(500),
                            ),
                          ),
                          Text(
                            'From Gallary',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight(400),
                            ),
                          ),
                          Text(
                            'From Camera',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight(400),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                color: Colors.amber,
                child: Text("Show"),
              ),
            ),
            Center(
              child: MaterialButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("تمت العملية بنجاح"),
                      duration: Duration(seconds: 1),
                      action: SnackBarAction(label: 'OK', onPressed: () {}), //لما تنحط بتضلا السناك بار معلقة لحتى نضغط على الl   abel
                    ),
                  );
                },
                color: Colors.deepOrange,
                child: Text("confirm"),
              ),
            ),
            ...List.generate(
              userName.length,
              ((index) => Card(
                child: ListTile(
                  title: Text(userName[index]['name']),
                  trailing: Text(userName[index]['age']),
                ),
              )),
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('Page 1');
                },
                child: Text('goto page 1 '),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
