import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerdemo/provider/providerdemo.dart';
import 'package:providerdemo/ui/page2.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

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
              Text('Page 1'),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Page2()));
                  },
                  child: Text('click next page')),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Provider.of<ProviderDemo>(context,listen: false).changeData1();
                  },
                  child: Text('Change Data')),
              Text(Provider.of<ProviderDemo>(context).text),
            ],
          ),
        ),
      ),
    );
  }
}
