import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:login_api/app/modules/login/controllers/login_controller.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                controller.Logout();
              },
              icon: Icon(Icons.logout))
        ],
        // leading: IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'Homeview',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
