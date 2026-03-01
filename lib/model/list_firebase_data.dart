import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; // <--- ต้องมีตัวนี้!

class ListFirebaseData extends StatelessWidget {
  const ListFirebaseData({super.key});

  @override
  Widget build(BuildContext context) {
    // แนะนำให้ประกาศ reference ไว้ใน build หรือเป็นตัวแปรใน class ก็ได้
    final CollectionReference products = FirebaseFirestore.instance.collection('products');

    return Scaffold(
      appBar: AppBar(title: const Text("Product List")), // เพิ่ม Appbar ให้ดูสวยงาม
      body: StreamBuilder<QuerySnapshot>(
        stream: products.snapshots(),
        builder: (context, snapshot) {
          // 1. กรณีเกิดข้อผิดพลาด (เช่น ลืมตั้งค่า Rules ใน Firebase)
          if (snapshot.hasError) {
            return const Center(child: Text('Something went wrong'));
          }

          // 2. อยู่ระหว่างรอข้อมูล
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          // 3. กรณีไม่มีข้อมูลเลยใน Collection
          if (snapshot.data!.docs.isEmpty) {
            return const Center(child: Text('No products found'));
          }

          final data = snapshot.data!.docs;

          return ListView.separated(
            separatorBuilder: (BuildContext context, int index) => const Divider(),
            itemCount: data.length,
            itemBuilder: (context, index) {
              final product = data[index];
              String productId = product.id; 

              // ดึงข้อมูลอย่างปลอดภัย (เผื่อบาง Field ใน Firebase พิมพ์ชื่อผิด)
              // ใช้ Map เพื่อป้องกัน Runtime Error
              final Map<String, dynamic> item = product.data() as Map<String, dynamic>;
              
              return ListTile(
                leading: CircleAvatar(child: Text("${index + 1}")),
                title: Text(item['name'] ?? 'No Name'),
                subtitle: Text(item['description'] ?? 'No Description'),
                trailing: Text("${item['price'] ?? 0} บาท"), // สมมติว่ามีราคา
              );
            },
          );
        },
      ),
    );
  }
}