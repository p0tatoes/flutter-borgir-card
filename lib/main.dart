import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: EdgeInsets.all(20.0),
          alignment: Alignment.center,
          width: 600,
          height: 300,
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            clipBehavior: Clip.antiAlias,
            child: Row(
              children: [
                Stack(children: [
                  Container(
                    width: 280,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2014/10/19/20/59/hamburger-494706_1280.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  Positioned(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 3.0),
                      decoration: BoxDecoration(
                          color: Colors.green[100],
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Text(
                        "Food",
                        style: TextStyle(
                            color: Colors.green[400],
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    top: 15.0,
                    right: 15.0,
                  )
                ]),
                Expanded(
                  // padding: EdgeInsets.all(25.0),
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    child: Column(children: [
                      Text(
                        "Agriculture is good for both humans and animals",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.w900),
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non dolor in enim volutpat laoreet. Fusce tempor urna sit amet dui feugiat iaculis. Donec sollicitudin ullamcorper varius. Integer sit amet placerat nibh. Sed imperdiet arcu vitae ornare volutpat. Cras egestas, erat et imperdiet hendrerit, ipsum massa molestie magna, id ultrices felis nisl ultricies ex. Integer condimentum nisl et arcu mattis, quis mollis justo pellentesque. Sed in blandit ligula, sit amet suscipit ex.",
                          style: TextStyle(
                              color: Colors.grey,
                              overflow: TextOverflow.ellipsis),
                          softWrap: true,
                          maxLines: 7,
                        ),
                      ),
                      // Expanded(child: SizedBox()),
                      Divider(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 10.0),
                            width: 45.0,
                            height: 45.0,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        "https://i.kym-cdn.com/entries/icons/facebook/000/047/940/cat_eating_looking_up.jpg")),
                                shape: BoxShape.circle),
                          ),
                          Text(
                            "Kiran Acharya",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Expanded(child: SizedBox()),
                          Text("Jan 12, 2019",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12.0))
                        ],
                      )
                    ]),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
