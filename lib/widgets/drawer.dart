import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  final urlImage = "https://yt3.googleusercontent.com/oWUNeFKTAOIGzp2uw8KvIA6czEIokHgPftTs1jClhrYaOxu2GTCA1nq1XgDT26wzcq6LnrXJqts=s900-c-k-c0x00ffffff-no-rj";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(urlImage),
              ),
              accountName: Text("Jit Code"),
              accountEmail: Text("jitcode02@gmail.com"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home,color: Colors.black,),
            title: Text("Home",style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          ListTile(
            leading: Icon(Icons.settings,color: Colors.black,),
            title: Text("Settings",style: TextStyle(fontWeight: FontWeight.bold),),
          ),
        ],
      ),
    );
  }
}