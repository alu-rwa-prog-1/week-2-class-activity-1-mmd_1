import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'APPLE STORE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(appBar: AppBar(
          title: const Text("Customer Service Apple Store"),
          backgroundColor: Colors.black,
          actions: <Widget>[
          IconButton(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            icon: const Icon(
              Icons.add_business_rounded,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
        ),
      body: Column( children: [
            const Text('Deji'),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child:
                  Container(
                    height: 400.0,
                    padding: const EdgeInsets.all(8),
                    child: const RenderPopUp(),
                    color: Colors.grey[200],
                  )
                ),
                Expanded(child:
                  Container(
                    height: 400.0,
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    padding: const EdgeInsets.all(8),
                    child: const RenderPopUp(),
                    color: Colors.teal[200],
                  ),
                ),
              ]
            ),
            const Text('Deji'),
      ],)
      )
    );
  }
}



class RenderPopUp extends StatelessWidget {
  const RenderPopUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('IPHONE X'),
          content: const Text('PRICE: 100K RWF'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
      child: const Text('README MORE'),
    );
  }
}
