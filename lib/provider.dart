import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/fun_provider.dart';
import 'package:provider/provider.dart';

class changesize extends StatelessWidget {
  const changesize({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Consumer<FunProvider>(builder: (context, funprovider, child) {
              return Column(
                children: [
                  Container(
                    color: funprovider.changeColor,
                    height: funprovider.size ? 100 : 200,
                    width: funprovider.size ? 100 : 200,
                  ),
                  TextButton(
                      onPressed: () {
                        funprovider.changesize();
                      },
                      child: Text("haii")),
                       TextButton(
                      onPressed: () {
                        funprovider.changecolor();
                      },
                      child: Text("haii")),
                ],
              );
            })
          ],
        ),
      ),
    );
  }
}
