import 'package:flutter/material.dart';
import 'package:addgetx/main.dart';
import 'package:addgetx/C/thecontroller.dart';
import 'package:get/get.dart';

class ControlApp extends StatelessWidget {
  ControlApp({
    super.key,
  });

  var thecontroller = Get.put(TheController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              controller: thecontroller.valuecontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a search term',
              ),
              onFieldSubmitted: ((value) {
                thecontroller.add(value);
              }),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 2.5,
            child: Obx(
              () => ListView.builder(
                  itemCount: thecontroller.tasks.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: EdgeInsets.all(10),
                      child: ListTile(
                        title: Obx(
                          () {
                            return Text('${thecontroller.tasks[index]}');
                          },
                        ),
                        leading: Icon(Icons.check_box_outline_blank),
                        trailing: IconButton(
                          onPressed: () {
                            thecontroller.remove(index);
                          },
                          icon: Icon(Icons.delete),
                        ),
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
