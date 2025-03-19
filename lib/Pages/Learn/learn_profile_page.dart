import 'package:flutter/material.dart';
import 'package:flutter_batch_5/Const/profile_list.dart';
import 'package:flutter_batch_5/Utils/Extension/context_extension.dart';

class LearnProfilePage extends StatefulWidget {
  const LearnProfilePage({
    super.key,
    });

  @override
  State<LearnProfilePage> createState() => _LearnProfilePageState();
}

class _LearnProfilePageState extends State<LearnProfilePage> {
  int index = 0;
  
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
    void changeProfile(){
      final newProfile = profileList[index];
      context.pop(newProfile['Name']);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
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
              Image.asset(
                  width: 400,
                  "assets/$pic"
              ),
              FilledButton(
                onPressed: changeProfile, 
                child: Text('Change Profile')
              )
            ],
          ),
        ),
      ),
    );
  }
}