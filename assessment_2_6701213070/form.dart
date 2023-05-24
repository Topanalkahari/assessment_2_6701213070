import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class formflutter extends StatefulWidget{
  //formflutter({Key?key}) : super(key: key);

  @override
  State<formflutter> createState() => _formflutterState();
}

class _formflutterState extends State<formflutter>{
  int kondisiValue = 1;

bool isInCityDelivery = false;
  bool isReturnAccepted = false;
  TextEditingController namaBarangController = TextEditingController();
  TextEditingController deskripsiController = TextEditingController();
  TextEditingController hargaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Flutter"),
      ),
      body: Form(
        child: Container(
          padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: "Nama Barang",
                border: OutlineInputBorder(

                )
              ),
            ),
            SizedBox(height: 8,),

            TextFormField(
              decoration: InputDecoration(
                labelText: "Deskripsi",
                border: OutlineInputBorder(

                )
              ),
              minLines: 4,
              maxLines: null,
            ),
            SizedBox(height: 8,),

            TextFormField(
              decoration: InputDecoration(
                labelText: "Harga",
                border: OutlineInputBorder(

                )
              ),
            ),
            SizedBox(height: 8,),

            Text('Kondisi Barang'),
            SizedBox(height:8,),

            Row(
              children: [
                Radio(
                  value: 1,
                  groupValue: kondisiValue,
                  onChanged: (value) {
                    setState(() {
                      kondisiValue = value as int;
                    });
                  },
                ),
                Text('Bekas'),
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 2,
                  groupValue: kondisiValue,
                  onChanged: (value) {
                    setState(() {
                      kondisiValue = value as int;
                    });
                  },
                ),
                Text('Baru'),
              ],
            ),
            SizedBox(height:8,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Pengiriman dalam kota saja'),
                Switch(
                  value: isInCityDelivery,
                  onChanged: (value) {
                    setState(() {
                      isInCityDelivery = value ?? false;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 8,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Menerima retur'),
                Switch(
                  value: isReturnAccepted,
                  onChanged: (value) {
                    setState(() {
                      isReturnAccepted = value ?? false;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height:8,),
            ElevatedButton(onPressed: (){}, child: Text("Publikasikan"))

          ],
        ),
      )),
    );
  }
}

