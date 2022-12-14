import 'package:flutter/material.dart';

import 'about-me.dart';
import 'head/head.dart';
import 'my-experience/my-experenece.dart';
import 'my-skills/my-skills.dart';

class MyProtofolio extends StatelessWidget {
  const MyProtofolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController _controller = ScrollController();
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   _controller.jumpTo(
    //     _controller.position.maxScrollExtent,
    //   );
    // });
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        controller: _controller,
        child: Column(
          children: const [
            Head(),
            AboutMe(),
            MyExperience(),
            SizedBox(height: 20),
            MySkills(),
          ],
        ),
      ),
    );
  }
}
