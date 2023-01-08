import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
          centerTitle: false,
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text("Chats"),
              ),
              Tab(
                child: Text("Status"),
              ),
              Tab(
                child: Text("Calls"),
              ),
            ],
          ),
          actions: [
            const Icon(Icons.search),
            const SizedBox(
              width: 10,
            ),
            PopupMenuButton(
                icon: Icon(Icons.more_vert_outlined),
                itemBuilder: (context) => [
                      const PopupMenuItem(
                        value: 1,
                        child: Text("NewGroup"),
                      ),
                      const PopupMenuItem(
                        value: 2,
                        child: Text("Settings"),
                      ),
                      const PopupMenuItem(
                        value: 3,
                        child: Text("Logout"),
                      ),
                    ]),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        body: TabBarView(children: [
          Text("Camera"),
          //Chats
          ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return const ListTile(
                  title: Text("Kaushal Gautam"),
                  subtitle: Text("How are you"),
                  trailing: Text("10:51am"),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/7061653/pexels-photo-7061653.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                  ),
                );
              }),
          //Status
          ListTile(
            title: Text("My Status"),
            subtitle: Text("Add to my status"),
            trailing: Icon(Icons.camera_alt_rounded),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/7061653/pexels-photo-7061653.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
              ),
            ),
          ),

          //Calls
          ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("Kaushal Gautam"),
                  subtitle: Row(
                    children: [
                      Icon(Icons.camera_alt_rounded),
                      SizedBox(
                        width: 5,
                      ),
                      Text("OutGoing"),
                    ],
                  ),
                  trailing: Text("10:57"),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/7061653/pexels-photo-7061653.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                  ),
                );
              }),
        ]),
      ),
    );
  }
}
