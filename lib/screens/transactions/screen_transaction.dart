import 'package:flutter/material.dart';

class ScreenTransaction extends StatelessWidget {
  const ScreenTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(color: const Color.fromARGB(255, 240, 240, 241),
          child: ListView.separated(padding: const EdgeInsets.all(8),
              itemBuilder: (ctx, vcalue) {
                return const Card(
                  child:  ListTile(
                    leading: Text('12 Nov'),
                    title: Text('spend amount'),
                    subtitle: Text('purpose'),
                  ),
                );
              },
              separatorBuilder: (ctx, value) {
                return const Divider();
              },
              itemCount: 10),
        ));
  }
}
