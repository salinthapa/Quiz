import 'package:flutter/material.dart';
import 'package:gole/story-board.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  StoryBoard storyBoard = StoryBoard();

  StoryBoard _storyBoard = StoryBoard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Junge')),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Image(
              fit: BoxFit.fill,
              image: AssetImage(_storyBoard.getBackgroundImage()),
            ),
          ),
          Text(
            _storyBoard.getTitle(),
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Expanded(
            child: SafeArea(
              child: Column(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _storyBoard.chooseOption(choice.OPTION1);
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 10.0,
                        primary: Colors.green,
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width - 100,
                        margin:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Center(
                          child: Text(
                            _storyBoard.getChoice1(),
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Visibility(
                    visible: _storyBoard.getChoice2() == "" ? false : true,
                    child: Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _storyBoard.chooseOption(choice.OPTION2);
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 10.0,
                          primary: Colors.green,
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width - 100,
                          margin: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Center(
                              child: Text(
                                _storyBoard.getChoice2(),
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
