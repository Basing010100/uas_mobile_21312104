import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uas_21312104/app/modules/add_product/controllers/add_product_controller.dart';


class AddMahasiswaView extends GetView<AddMahasiswaController> {
  const AddMahasiswaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Mahasiswa'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              controller: controller.cNama,
              autocorrect: false,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                labelText: "Nama Mahasiswa",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: controller.cAlamat, // Sesuaikan dengan field yang benar
              autocorrect: false,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                labelText: "NPM Mahasiswa", // Sesuaikan dengan field alamat
              ),
            ),
            TextField(
              controller: controller.cNPM, // Sesuaikan dengan field yang benar
              autocorrect: false,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                labelText: "Alamat Mahasiswa", // Sesuaikan dengan field npm
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () => controller.addMahasiswa(
                controller.cNama.text,
                controller.cAlamat.text,
                controller.cNPM.text,
              ),
              child: Text("Simpan"),
            ),
          ],
        ),
      ),
    );
  }
}
