import 'package:flutter/material.dart';

class ProductLayout extends StatelessWidget {
  const ProductLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Product Layout",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 150,
            height: 20,
            decoration: BoxDecoration(color: Colors.grey),
            child: Text("Category:Electronics"),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Image.network(
                    'data:image/jpeg;base64,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',
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  Text("Laptop", style: TextStyle(fontSize: 16)),
                  Text("Price: 150000 Bath", style: TextStyle(fontSize: 16)),
                ],
              ),
              Column(
                children: [
                  Image.network(
                    'https://image.made-in-china.com/365f3j00fPMWBoZcfFGq/Factory-6-75-Inch-Android-Smartphone-Big-Battery-4G-Global-Version-Mobile-Phone-with-Dual-SIM-Card.webp',
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  Text("phone", style: TextStyle(fontSize: 16)),
                  Text("Price 25000 Bath", style: TextStyle(fontSize: 16)),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Image.network(
                    'https://store.storeimages.cdn-apple.com/1/as-images.apple.com/is/ipad-finish-select-202503-pink-wifi_FMT_WHH?wid=1280&hei=720&fmt=p-jpg&qlt=80&.v=aHYyeWZ6TVBzTWw5WlZ2bFJCZno2aXd3Q2pKamtFTVV6Wk1KTjNUcUZtK3RpY0gzeTdwdlpIKzg4NWM0UWFDYzhPR21TUjBtZytxMXNhbXdjN2ZpMXEwekI5ZWpRa0o2WWdVYzdzTUdBdFVuVlFobTNwZkVmUEtVMlJZeExLOWo&traceId=1',
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  Text('Ipad', style: TextStyle(fontSize: 16)),
                  Text('Price 20000 Bath', style: TextStyle(fontSize: 16)),
                ],
              ),
              Column(
                children: [
                  Image.network(
                    'data:image/jpeg;base64,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',
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  Text('Headphone', style: TextStyle(fontSize: 16)),
                  Text('Price 20200 Bath', style: TextStyle(fontSize: 16)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
