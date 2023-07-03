import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => const mainClass();
}

// ignore: camel_case_types
class mainClass extends StatelessWidget {
  const mainClass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: const Text(
              "WhatsApp",
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
            ),
            actions: const <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: Icon(Icons.camera_alt),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: Icon(Icons.search),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: Icon(Icons.more_vert),
              )
            ],
            bottom: TabBar(
              // isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 2.0,

              tabs: [
                GestureDetector(
                  onTap: () {
                    // Handle tap event for the first tab
                    // Add your desired functionality here
                  },
                  child: const Tab(
                    icon: Icon(Icons.group),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Handle tap event for the first tab
                    // Add your desired functionality here
                  },
                  child: const Tab(
                    child: Text("Chats"),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Handle tap event for the first tab
                    // Add your desired functionality here
                  },
                  child: const Tab(
                    child: Text("Status"),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Handle tap event for the first tab
                    // Add your desired functionality here
                  },
                  child: const Tab(
                    child: Text("Calls"),
                  ),
                ),
                // Add more tabs with GestureDetector and Tab as needed
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              // Add your desired content for each tab

              communityClass(),
              chatsClass(),

              statusClass(),
              callClass(),
            ],
          ),
          // backgroundColor: Color.fromARGB(8, 105, 83, 83),
        ),
      ),
    );
  }
}

class ChatItemModel {
  String name;
  String mostRecentMessage;
  String messageDate;

  ChatItemModel(this.name, this.mostRecentMessage, this.messageDate);
}

// ignore: camel_case_types
class chatsClass extends StatelessWidget {
  const chatsClass({super.key});

  @override
  Widget build(BuildContext context) {
    ChatItemModel chatItem = ChatItemModel("john", "kujae", "Now");
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //chat 1
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 30,
                    child: ClipOval(
                      child: Image.asset(
                        "images/john.jpeg",
                        fit: BoxFit.cover,
                        width: 60,
                        height: 60,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                chatItem.name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20.0,
                                ),
                              ),
                              Text(
                                chatItem.messageDate,
                                style: const TextStyle(color: Colors.black45),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: Text(
                              chatItem.mostRecentMessage,
                              style: const TextStyle(
                                  color: Colors.black45, fontSize: 16.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //chat 2

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 30,
                    child: ClipOval(
                      child: Image.asset(
                        "images/profile001.png",
                        fit: BoxFit.cover,
                        width: 60,
                        height: 60,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "iftikhar zehri",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20.0,
                                ),
                              ),
                              Text(
                                "2 mints ago",
                                style: TextStyle(color: Colors.black45),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 2.0),
                            child: Text(
                              "Love you...",
                              style: TextStyle(
                                  color: Colors.black45, fontSize: 16.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //chat 3
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 30,
                    child: ClipOval(
                      child: Image.asset(
                        "images/alex sir.jpeg",
                        fit: BoxFit.cover,
                        width: 60,
                        height: 60,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Sir Alex F.",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20.0,
                                ),
                              ),
                              Text(
                                "1h ago",
                                style: TextStyle(color: Colors.black45),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 2.0),
                            child: Text(
                              "We won ...😀😀",
                              style: TextStyle(
                                  color: Colors.black45, fontSize: 16.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //chat 4
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 30,
                    child: ClipOval(
                      child: Image.asset(
                        "images/ramos.jpeg",
                        fit: BoxFit.cover,
                        width: 60,
                        height: 60,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "S. Ramos",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20.0,
                                ),
                              ),
                              Text(
                                "12:23 am",
                                style: TextStyle(color: Colors.black45),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 2.0),
                            child: Text(
                              "I'm leavinfg PSG 😒",
                              style: TextStyle(
                                  color: Colors.black45, fontSize: 16.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //chat 5
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 30,
                    child: ClipOval(
                      child: Image.asset(
                        "images/profile2.jpeg",
                        fit: BoxFit.cover,
                        width: 60,
                        height: 60,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Mr Pablo",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20.0,
                                ),
                              ),
                              Text(
                                "12:09 am",
                                style: TextStyle(color: Colors.black45),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 2.0),
                            child: Text(
                              "come to the party..",
                              style: TextStyle(
                                  color: Colors.black45, fontSize: 16.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //chat 6
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 30,
                    child: ClipOval(
                      child: Image.asset(
                        "images/hulk.jpg",
                        fit: BoxFit.cover,
                        width: 60,
                        height: 60,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Bruce B",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20.0,
                                ),
                              ),
                              Text(
                                "11:02 am",
                                style: TextStyle(color: Colors.black45),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 2.0),
                            child: Text(
                              "Chill dude!!😉😉😉",
                              style: TextStyle(
                                  color: Colors.black45, fontSize: 16.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //chat 7
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 30,
                    child: ClipOval(
                      child: Image.asset(
                        "images/pilarrubio.jpg",
                        fit: BoxFit.cover,
                        width: 60,
                        height: 60,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Pilar R",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20.0,
                                ),
                              ),
                              Text(
                                "09:00 am",
                                style: TextStyle(color: Colors.black45),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 2.0),
                            child: Text(
                              "Call me back",
                              style: TextStyle(
                                  color: Colors.black45, fontSize: 16.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //chat 8
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 30,
                    child: ClipOval(
                      child: Image.asset(
                        "images/profile3.png",
                        fit: BoxFit.cover,
                        width: 60,
                        height: 60,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Rehman",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20.0,
                                ),
                              ),
                              Text(
                                "Yesterday",
                                style: TextStyle(color: Colors.black45),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 2.0),
                            child: Text(
                              "hey! Uncle I am coming to the gym....",
                              style: TextStyle(
                                  color: Colors.black45, fontSize: 16.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //chat 9
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 30,
                    child: ClipOval(
                      child: Image.asset(
                        "images/profile4.png",
                        fit: BoxFit.cover,
                        width: 60,
                        height: 60,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Sajjo",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20.0,
                                ),
                              ),
                              Text(
                                "Yesterday",
                                style: TextStyle(color: Colors.black45),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 2.0),
                            child: Text(
                              "Spiderman: no way home is about to be released",
                              style: TextStyle(
                                  color: Colors.black45, fontSize: 16.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ), //chat 10
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  // const ImageIcon(
                  //   AssetImage("images/profile3.png"),
                  //   size: 64.0,
                  // ),
                  CircleAvatar(
                    radius: 30,
                    child: ClipOval(
                      child: Image.asset(
                        "images/ruhana.jpg",
                        fit: BoxFit.cover,
                        width: 60,
                        height: 60,
                      ),
                    ),
                  ),
                  // const Icon(
                  //   Icons.account_circle,
                  //   size: 64.0,
                  // ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Ruhana",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20.0,
                                ),
                              ),
                              Text(
                                "20/04/2023",
                                style: TextStyle(color: Colors.black45),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 2.0),
                            child: Text(
                              "My new song https://youtu.be/T9QmIhnk874",
                              style: TextStyle(
                                  color: Colors.black45, fontSize: 16.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ), //chat 11
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 30,
                    child: ClipOval(
                      child: Image.asset(
                        "images/billie.jpg",
                        fit: BoxFit.cover,
                        width: 60,
                        height: 60,
                      ),
                    ),
                  ),
                  // const Icon(
                  //   Icons.account_circle,
                  //   size: 64.0,
                  // ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Billie",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20.0,
                                ),
                              ),
                              Text(
                                "19/04/2023",
                                style: TextStyle(color: Colors.black45),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 2.0),
                            child: Text(
                              "are you coming tonight???",
                              style: TextStyle(
                                  color: Colors.black45, fontSize: 16.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class statusClass extends StatelessWidget {
  const statusClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                radius: 30,
                child: ClipOval(
                  child: Image.asset(
                    "images/statusProfile.png",
                    fit: BoxFit.cover,
                    width: 60,
                    height: 60,
                  ),
                ),
              ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "My Status",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 20.0),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 3.0),
                        child: Text(
                          "Tap to add status update",
                          style: TextStyle(color: Colors.black45),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 30.0, top: 8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Recent updates", style: TextStyle(color: Colors.black45))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                radius: 30,
                child: ClipOval(
                  child: Image.asset("images/ruhana.jpg",
                      fit: BoxFit.cover, height: 60, width: 60),
                ),
              ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "john",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 20.0),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 2.0),
                        child: Text("12 minutes ago",
                            style:
                                TextStyle(color: Colors.black45, fontSize: 16)),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                radius: 30,
                child: ClipOval(
                  child: Image.asset("images/alex sir.jpeg",
                      fit: BoxFit.cover, height: 60, width: 60),
                ),
              ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Sir Alex F",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 20.0),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 2.0),
                        child: Text("56 minutes ago",
                            style:
                                TextStyle(color: Colors.black45, fontSize: 16)),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                radius: 30,
                child: ClipOval(
                  child: Image.asset("images/billie.jpg",
                      fit: BoxFit.cover, height: 60, width: 60),
                ),
              ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Billie",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 20.0),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 2.0),
                        child: Text("1h ago",
                            style:
                                TextStyle(color: Colors.black45, fontSize: 16)),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                radius: 30,
                child: ClipOval(
                  child: Image.asset("images/pilarrubio.jpg",
                      fit: BoxFit.cover, height: 60, width: 60),
                ),
              ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Bruce B",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 20.0),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 2.0),
                        child: Text("Today, 11:35 am",
                            style:
                                TextStyle(color: Colors.black45, fontSize: 16)),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// ignore: camel_case_types
class communityClass extends StatelessWidget {
  const communityClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Image.asset("images/community.png"),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Introducing communities",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Easily organise your related groups and send \nannouncements. Now, your communities, like \nneighbourhoods or schools, can have their own \nspace.",
                textAlign: (TextAlign.center),
                style: TextStyle(color: Colors.black45, fontSize: 16),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 290,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  child: const Text("start your community"),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// ignore: camel_case_types
class callClass extends StatelessWidget {
  const callClass({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(1),
                  child: CircleAvatar(
                    backgroundColor: Colors.teal,
                    radius: 30,
                    child: ClipOval(
                        child: Icon(
                      Icons.insert_link_rounded,
                    )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
