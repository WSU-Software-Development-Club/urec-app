import 'package:flutter/material.dart';
import 'package:urec_app_gt/common_widgets/urec_card.dart';
import 'package:urec_app_gt/urec_themes/urec_themes.dart';
import 'package:urec_app_gt/common_widgets/urec_switch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: UrecThemes().themeData,
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> { //widget that is called from home page and returns a build result, should return a build result on state change as well

  final bool light = true; // create bool var _on to track switch state, I believe "_" before a var name declares as private

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.secondary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const UrecSwitch(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0), // Set horizontal padding here
              child: SizedBox(
                height: 200, // Set a fixed height for the ListView
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    UrecCard(
                      title: "Weightlifting",
                      showIcon: true,
                      width: 200,
                      overlayColor: Colors.red,
                      onTap: () {
                        print("Weightlifting tapped");
                      },
                    ),
                    const SizedBox(width: 10), // Space between cards
                    UrecCard(
                      title: "Yoga",
                      imageUrl: "assets/images/weightlifting_placeholder_image.jpg",
                      showIcon: true,
                      width: 200,
                      onTap: () {
                        print("Yoga tapped");
                      },
                    ),
                    const SizedBox(width: 10),
                    UrecCard(
                      title: "Running",
                      imageUrl: "assets/images/weightlifting_placeholder_image.jpg",
                      showIcon: true,
                      width: 200,
                      onTap: () {
                        print("Running tapped");
                      },
                    ),
                    // Add more UrecCards as needed
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


/* class UrecSwitch extends StatefulWidget {
  const UrecSwitch({super.key,});

  @override
  State<UrecSwitch> createState() => _UrecSwitchState();
}

class _UrecSwitchState extends State<UrecSwitch> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return Switch(
      value: light,
      activeColor: theme.primaryColor,
      onChanged: (bool value) {
        setState(() {
          light = value;
        }
        );
      }
    );
  }

} */
