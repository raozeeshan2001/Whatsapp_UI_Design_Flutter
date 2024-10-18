import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  static const String id = 'home_screen';
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Icon(Icons.search),
            PopupMenuButton(
                itemBuilder: (context) => [
                      PopupMenuItem(child: Text('new group')),
                      PopupMenuItem(child: Text('settings')),
                      PopupMenuItem(child: Text('logout')),
                    ]),
            SizedBox(
              width: 10,
            ),
          ],
          title: Text('Whatsapp'),
          backgroundColor: Colors.teal,
          bottom: const TabBar(tabs: [
            Tab(
              child: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text('chats'),
            ),
            Tab(
              child: Text('status'),
            ),
            Tab(
              child: Text('calls'),
            ),
          ]),
        ),
        body: TabBarView(children: [
          const Text('camera'),
          ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                  title: Text('rao zeeshan'),
                  subtitle: Text('how are you'),
                  trailing: Text('12;42 am'),
                );
              }),
          ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.green, width: 3),
                    ),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    ),
                  ),
                  title: Text('rao zeeshan'),
                  subtitle: Text('35 min ago'),
                );
              }),
          ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                  title: Text('rao zeeshan'),
                  subtitle: Text(index / 2 == 0
                      ? 'you missed video call'
                      : 'you missed call'),
                  trailing:
                      Icon(index / 2 == 0 ? Icons.phone : Icons.video_call),
                );
              }),
        ]),
      ),
    );
  }
}
