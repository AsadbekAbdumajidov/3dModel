import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:model3d/core/data/data.dart';
import 'package:model3d/core/routes/route_arg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // providing linear gradient to the
        // background with two colours
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.blueAccent, Colors.tealAccent, Colors.greenAccent],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: Column(
          children: [
            const Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  "3D Objects in Flutter",
                  style: TextStyle(
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
            ),
            Expanded(
              flex: 9,
              child: ListView.separated(
                itemCount: title.length,
                padding: const EdgeInsets.symmetric(vertical: 16),
                itemBuilder: (_, __) {
                  return AnimatedCard(
                    // ! Animated_card Paket
                    curve: Curves.fastOutSlowIn,
                    direction: AnimatedCardDirection.left,
                    initDelay: const Duration(milliseconds: 0),
                    duration: const Duration(seconds: 1),

                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.views,arguments:__);
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Colors.amberAccent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 14),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "${title[__]} 3d model",
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(fontSize: 16),
                                ),
                                const Icon(Icons.touch_app_outlined),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (_, __) => const SizedBox(height: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
