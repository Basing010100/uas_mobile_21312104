import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uas_21312104/app/controllers/auth_controller.dart';
import 'package:uas_21312104/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final cAuth = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login View'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            // Tambahkan gambar dan teks di sini
            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/UNIVERSITASTEKNOKRAT.png/640px-UNIVERSITASTEKNOKRAT.png',
              width: 150, // Sesuaikan dengan lebar yang Anda inginkan.
              height: 150, // Sesuaikan dengan tinggi yang Anda inginkan.
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Universitas Teknokrat Indonesia',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 16,
            ),

            TextField(
              controller: controller.cEmail,
              decoration: InputDecoration(
                labelText: "Email",
              ),
            ),
            TextField(
              controller: controller.cPass,
              decoration: InputDecoration(
                labelText: "Password",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () => Get.toNamed(Routes.RESET_PASSWORD),
                child: Text("Reset Passsword"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => cAuth.login(
                controller.cEmail.text,
                controller.cPass.text,
              ),
              child: Text("Login"),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Belum Punya Akun ?"),
                TextButton(
                  onPressed: () => Get.toNamed(Routes.SIGNUP),
                  child: Text("Daftar Disini"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
