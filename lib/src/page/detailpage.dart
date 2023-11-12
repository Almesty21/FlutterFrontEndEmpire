import 'package:flutter/material.dart';
import 'package:linktest_app/src/components/header.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../model/Item.dart';

class DetailPage extends StatelessWidget {
  final Item item;
  const DetailPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    final size = MediaQuery.of(context).size.width * 0.03;
    final sizeText = MediaQuery.of(context).size.width * 0.045;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: ffem * 11, right: ffem * 11, top: ffem * 43),
        child: Column(children: [
          const Header(),
          const SizedBox(height: 20),
          Flexible(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    child: Image.asset(
                      item.imgUrl,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      padding: EdgeInsets.all(size),
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: fem * 200,
                              child: Text(
                                item.name,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Container(
                              width: fem * 100,
                              height: fem * 30,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: const Color.fromARGB(61, 255, 19, 2)),
                              child: const Center(
                                  child: Text(
                                'Offer %',
                                overflow: TextOverflow.fade,
                                style: TextStyle(
                                  color: Color.fromARGB(255, 255, 0, 0),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(children: [
                          const Icon(
                            Icons.watch_later_rounded,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text('${item.timeTake} Min'),
                          const SizedBox(
                            width: 10,
                          ),
                          const CircleAvatar(
                            radius: 3,
                            backgroundColor: Colors.grey,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(Icons.local_shipping_rounded, color: Colors.grey),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(item.deliveryFee)
                        ]),
                        const SizedBox(
                          height: 5,
                        ),
                      ]),
                    ),
                  ),
                ],
              )),
          Expanded(
              child: Column(
            children: [
              Container(
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. \n\n\t\t\t\tIt has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\n\t\t It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                  style: TextStyle(
                    fontSize: fem * 17,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Spacer(),
              Container(
                width: double.infinity,
                height: fem * 50,
                decoration: BoxDecoration(color: Color.fromARGB(196, 197, 71, 71), borderRadius: BorderRadius.circular(10)),
                child: OutlinedButton(
                    onPressed: () {
                      launchUrlString('tel:${item.phonenum}');
                    },
                    style: OutlinedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)), minimumSize: const Size(90, 38), foregroundColor: Colors.white, side: const BorderSide(width: 1, color: Colors.red)),
                    child: const Text("CALL")),
              )
            ],
          )),
        ]),
      ),
    );
  }
}
