import 'package:flutter/material.dart';
import 'package:flutter_batch_5/Const/character.dart';

class ListviewBuilderPage extends StatefulWidget {
  const ListviewBuilderPage({super.key, required this.title});

  final String title;

  @override
  State<ListviewBuilderPage> createState() => _ListviewBuilderPageState();
}

class _ListviewBuilderPageState extends State<ListviewBuilderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      body: ListView.separated(
        itemCount: genshinCharacter.length,
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (context, index) {
          Color profileColor;
          if(genshinCharacter[index]['Rarity'] == 5) {
            profileColor = const Color.fromARGB(255, 179, 163, 15);
          } 
          else if (genshinCharacter[index]['Rarity'] == 4) {
            profileColor = Colors.purple;
          }
          else {
            profileColor = Colors.grey;
          }

          return ListTile(
            leading: CircleAvatar(
              backgroundColor: profileColor,
              child: 
                Text(
                  (genshinCharacter[index]['Name']! as String)[0],
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
            ),
            title: Text(genshinCharacter[index]['Name']! as String),
            subtitle: Text('${genshinCharacter[index]['Element']} ${genshinCharacter[index]['Weapon']}'),
            trailing: Image.asset('assets/${genshinCharacter[index]['Nation']}.webp'),
          );
        },
      ),
    );
  }
}