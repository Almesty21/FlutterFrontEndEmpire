import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linktest_app/src/service/controller.dart';
import '../components/feedcard.dart';
import '../components/header.dart';

class HomePage extends GetView<MyController> {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(borderSide: Divider.createBorderSide(context), borderRadius: BorderRadius.circular(10));
    Color secondbackgroundColor = Theme.of(context).cardColor;

    return SafeArea(
        child: Scaffold(
            body: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [
          const Header(),
          SizedBox(height: 35),
          Expanded(
              child: ListView.separated(
            itemCount: controller.items.value.length,
            itemBuilder: (context, index) {
              final ite = controller.items.value[index];
              return ItemCard(item: ite, index: index);
            },
            separatorBuilder: (context, index) => const SizedBox(
              height: 20,
            ),
          ))
        ]),
      ),
    )));
  }

}
