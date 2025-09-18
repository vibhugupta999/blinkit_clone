import 'package:blinkit_clone/data/Retrieval%20from%20Firebase/retrieve_data.dart';
import 'package:blinkit_clone/data/data_sources/data_sources.dart';
import 'package:flutter/material.dart';

class SendDataPage extends StatelessWidget {
  const SendDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("send data", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                // SendData.sendData(superCategories: kids);
                // SendData.manualSendData();
              },
              child: Text("Send"),
            ),
            ElevatedButton(
              onPressed: () async {
                superList = await RetrieveData.getSuperCategories(
                  docName: "All",
                );
              },
              child: Text("Recieve"),
            ),
          ],
        ),
      ),
    );
  }
}
