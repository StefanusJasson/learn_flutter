import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({
    super.key,
    required this.title
    });

  final String title;
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int index = 0;
  List<String> nameList = [
    'Chika',
    'You',
    'Riko',
  ];
  List<Map> profileList = [
    {
      'Name': 'Chika',
      'Pic' : 'Chika.png'
    },
    {
      'Name': 'You',
      'Pic' : 'You.png'
    },
    {
      'Name': 'Riko',
      'Pic' : 'Riko.png'
    },
  ];
  late String nama;
  late String pic;

  void changeName(){
    index++;
    if(index == profileList.length) index = 0;
    setState(() {
      nama = profileList[index]['Name'];
      pic = profileList[index]['Pic'];
    });
  }
  
  @override
  void initState() {
    nama = profileList[0]['Name'];
    pic = profileList[0]['Pic'];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => changeName(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                nama,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
              Container(
                child: Image.asset(
                  width: 400,
                  "assets/$pic"
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}