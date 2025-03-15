import 'package:flutter/material.dart';
import 'package:flutter_batch_5/Widgets/news_headline.dart';

class ListviewPage extends StatefulWidget {
  const ListviewPage({super.key, required this.title});

  final String title;

  @override
  State<ListviewPage> createState() => _ListviewPageState();
}

class _ListviewPageState extends State<ListviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          SizedBox(
            height: 50,
            child: ListView(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                FilledButton(onPressed: (){}, child: Icon(Icons.home)),
                FilledButton(onPressed: (){}, child: Text('Press Here')),
                FilledButton(onPressed: (){}, child: Text('Press Here')),
                FilledButton(onPressed: (){}, child: Text('Press Here')),
                FilledButton(onPressed: (){}, child: Text('Press Here')),
                FilledButton(onPressed: (){}, child: Text('Press Here')),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            subtitle: Text('Go to Home'),
            trailing: Icon(Icons.chevron_right_sharp),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Setting'),
            subtitle: Text('App Settings'),
            trailing: Icon(Icons.chevron_right_sharp),
          ),
          NewsHeadline(),
          NewsHeadline(),
          NewsHeadline(),
          NewsHeadline(),
          NewsHeadline(),
          NewsHeadline(),
          NewsHeadline(),
          NewsHeadline(),
          NewsHeadline(),
          NewsHeadline(),
          NewsHeadline(),
          NewsHeadline(),
          NewsHeadline(),
          NewsHeadline(),
          NewsHeadline(),
          NewsHeadline(),
          NewsHeadline(),
        ],
      ),
    );
  }
}