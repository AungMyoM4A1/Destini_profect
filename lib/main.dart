import 'package:flutter/material.dart';
import 'story_brain.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Destini',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
//Obj and Property creat
StoryBrain storyBrain = StoryBrain();
int indexNo = 0;

//_________________________________

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('images/background.png'), fit: BoxFit.cover)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 300),
              child: SizedBox(
                width: 380,
                height: 350,
                child: Text(storyBrain.getStoryTitle(indexNo), style: TextStyle(fontSize: 25, color: Colors.white),)
                ),
            ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: SizedBox(
                  width: 380,
                  height: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromARGB(232, 247, 57, 43)) , minimumSize: MaterialStatePropertyAll(Size(double.infinity, 60))),
                        onPressed: (){
                          setState(() {
                            indexNo = storyBrain.getChoiceOneNo(indexNo);
                          });
                        }, 
                        child: Text(storyBrain.getChoiceOne(indexNo), style: const TextStyle(fontSize: 15),)
                        ),
                      ElevatedButton(
                        style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 52, 82, 255)) , minimumSize: MaterialStatePropertyAll(Size(double.infinity, 60))),
                        onPressed: (){
                          setState(() {
                            indexNo = storyBrain.getChoiceTwoNo(indexNo);
                          });
                        }, 
                        child: Text(storyBrain.getChoiceTwo(indexNo), style: const TextStyle(fontSize: 15),)
                        ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}