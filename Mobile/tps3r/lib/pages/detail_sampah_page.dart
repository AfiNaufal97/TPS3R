import 'package:flutter/material.dart';
import '../resources/size_resource.dart';
import '../resources/string_assets.dart';
import '../utils/colors/colors_style.dart';
import '../utils/fonts/fonts_style.dart';
import '../widgets/atom/text_widget.dart';
import '../widgets/moleculs/header_widget.dart';

class DetailSampahPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeaderWidget(
                text: "Detail",
                colorText: MyColors.green,
                function: () {}),
            Padding(
              padding: EdgeInsets.all(SizeResource.padding),
              child: Column(
                children: [
                  const SizedBox(
                    height: SizeResource.marginM,
                  ),
                  TextWidget(
                    text: "Sampah",
                    style: FontsStyle.textMedium,
                  ),
                  const SizedBox(
                    height: SizeResource.marginM,
                  ),
                  Image.asset(StringAssets.imgSampahPlastik),
                  const SizedBox(
                    height: SizeResource.marginM,
                  ),
                  const Text(
                      " 'Sampah plastik adalah jenis sampah anorganik, jenis sampah jenis ini tidak dapat diuraikan begitu saja butuh waktu bertahun – tahun untuk dapat diuraikan. Penguraian sampah plastik diperlukan waktu sekitar 50-100 tahun, membutuhkan waktu 2 generasi untuk mengurai usia sampah. Karena rata-rata umur manusia di Indonesia berkisar antara 60-70 tahun sudah, artinya sampah belum terurai semasa manusia hidup. Untuk mengurai plastik seperti bungkus detergen butuh 50-80 tahun, sedangkan kantung plastik (tas kresek) diperlukan waktu 10 hingga 20 tahun untuk hancur. Bayangkan apa jadinya jika di lingkungan bumi ini kita buang sampah sembarangan, padahal setiap hari kita kalau membeli sesuatu di pasar, di supermarket ataupun warung kelontong dipastikan dikasih plastik untuk menaruh barang-barang yang kita beli.',")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
