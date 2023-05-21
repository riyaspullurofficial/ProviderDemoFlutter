import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerdemo/ui/page3.dart';

import '../provider/providerdemo.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Page 2'),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Page3()));
                  },
                  child: Text('click next page')),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Provider.of<ProviderDemo>(context, listen: false)
                        .changeData2();
                  },
                  child: Text('Change Data')),
              Consumer<ProviderDemo>(builder: (context, value, child) {
                return Text(value.text2);
              }),
            ],
          ),
        ),
      ),
    );
  }
}
