import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
          slivers: [
        SliverAppBar(
          pinned: true,
         forceElevated: true,
          floating: true,
          expandedHeight: 100.0,
          leading: IconButton(
            icon: const Icon(Icons.settings),
            iconSize: 30.0,
            onPressed: (){},
          ),

          flexibleSpace: const FlexibleSpaceBar(
            centerTitle: true,
            title: Text('Simple Budget'),
          ),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.add),
            iconSize: 30.0,

            ),

          ],
        ),
      SliverList(
          delegate:SliverChildBuilderDelegate(
              (BuildContext context, int index){
                return Container(
                  margin: EdgeInsets.all(10.0),
                  height: 100.0,
                  color: Colors.red,
                );

              },
            childCount: 10,

          ) ,
      ),
      ]
      ),
    );
  }
}
