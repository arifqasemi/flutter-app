import 'package:flutter/material.dart';
import 'package:first_app/provider/notiferprovider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
      final isToggled = ref.watch(toggleProvider);


    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OutlinedButton(child: Text('test'),onPressed: () {
            ref.read(toggleProvider.notifier).toggelButton();
            
          },),
          isToggled ? Text('showing the daa') : Text('data'),
        ],
      ),
    ));
  }
}