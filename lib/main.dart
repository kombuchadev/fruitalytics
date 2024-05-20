import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(
            'FruitAlytics',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height *
                    0.4, // Adjust the ratio as needed
                child: Container(
                  color: Color.fromARGB(255, 215, 225, 222),
                  padding: EdgeInsets.all(20.0),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Fruit',
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange,
                              ),
                            ),
                            Text(
                              'Alytics',
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'A tool for fruit growth and yield analysis',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.green, // Subheading color
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 20.0),
                    Text(
                      'Our Features',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    CardWithPadding(
                      child: ListTile(
                        leading: Icon(Icons.image),
                        title: Text(
                          'Image',
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    CardWithPadding(
                      child: ListTile(
                        leading: Icon(Icons.video_library),
                        title: Text(
                          'Video',
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    CardWithPadding(
                      child: ListTile(
                        leading: Icon(Icons.image),
                        title: Text(
                          'Stage Classification Image',
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    CardWithPadding(
                      child: ListTile(
                        leading: Icon(Icons.video_library),
                        title: Text(
                          'Stage Classification Video',
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    CardWithPadding(
                      child: ListTile(
                        leading: Icon(Icons.timeline),
                        title: Text(
                          'Per Tree Yield',
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    CardWithPadding(
                      child: ListTile(
                        leading: Icon(Icons.access_time),
                        title: Text(
                          'Shelf-life Prediction',
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardWithPadding extends StatelessWidget {
  final Widget child;

  const CardWithPadding({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(1),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
          side: BorderSide(color: Color.fromARGB(255, 244, 244, 244), width: 1),
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: child,
        ),
      ),
    );
  }
}
