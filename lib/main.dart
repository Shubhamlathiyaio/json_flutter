import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  print("hello");
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController contact = TextEditingController();
    TextEditingController city = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            controller: name,
          ),
          TextField(
            controller: contact,
          ),
          TextField(
            controller: city,
          ),
          OutlinedButton(
              onPressed: () async {
                print(0);
                var url = Uri.https(
                    'https://firstserver123.000webhostapp.com/demo.php?name=${name.text}&number=${contact.text}&city=${city.text}');
                print(1);
                var response = await http.get(url);
                print(2);
                print('Response status: ${response.statusCode}');
                print(3);
                print('Response body: ${response.body}');
                print(4);
              },
              child: Text('Submit')),
        ],
      ),
    );
  }
}
