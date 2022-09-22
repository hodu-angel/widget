import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  // late AnimationController _controller;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    // _controller = AnimationController(vsync: this);
    _scrollController = ScrollController();
  }

  // void _update() {
  //   setState(() {
  //     //TODO
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: TextButton(
          onPressed: () {},
          child: const Text('Logo Image', style: TextStyle(color: Colors.black),),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: StickyHeader(
          header: Container(
            height: 50,
            width: double.infinity,
            color: Colors.green,
            child: const Text('header part'),
          ),
          content: Container(
            width: double.infinity,
            color: Colors.lightBlueAccent,
            child: Column(
              children: [
                CachedNetworkImage(
                  imageUrl:
                      'https://images.unsplash.com/photo-1494256997604-768d1f608cac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1229&q=80',
                ),
                CachedNetworkImage(
                  imageUrl:
                      'https://images.unsplash.com/photo-1533743983669-94fa5c4338ec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1092&q=80',
                ),
                CachedNetworkImage(
                    imageUrl:
                        'https://images.unsplash.com/photo-1560114928-40f1f1eb26a0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80')
              ],
            ),
          ),
        ),
      ),
      // body: Container(
      //   child: TweenAnimationBuilder(
      //     tween: ,
      //     duration: const Duration(seconds: 1),
      //     builder: (context, i, child){
      //       return Text('$i');
      //     },
      //   ),
      // ),
    );
  }
}
