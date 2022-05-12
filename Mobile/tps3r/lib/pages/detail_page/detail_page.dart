import 'package:flutter/material.dart';
import 'package:tps3r/widgets/widget_medium/header/header_widget.dart';
import 'package:tps3r/widgets/widget_mini/image/image_widget.dart';
import 'package:tps3r/widgets/widget_mini/text/text_widget.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderWidget(type: ''),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    TextWidget(
                      fontWeight: FontWeight.bold,
                      text:
                          'Volume Sampah di Bali Meningkat, Ketua PSI: Bisa Diolah Agar Punya Nilai Ekonomi',
                      sizeFont: 18,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ImageWidget(
                      internet: false,
                      pathImage: 'assets/assets/image/img2.png',
                      whith: MediaQuery.of(context).size.width,
                      height: 300,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextWidget(
                        sizeFont: 15,
                        text:
                            'Provinsi Bali disebut mengalami peningkatan terkait penggunaan wadah berbahan plastik serta styrofoam. Menurut Kepala Dinas Kehutanan dan Ling-kungan Hidup (DKLH) Provinsi Bali, I Made Teja semenjak pandemi Covid-19 banyak orang menggunakan kemasan seperti styrofoam untuk makanan. Sebab, styrofoam dianggap sebagai wadah yang lebih higienis dan praktis.'),
                    const SizedBox(
                      height: 10,
                    ),
                    TextWidget(
                        sizeFont: 15,
                        text:
                            '"Sekarang kan orang banyak menggunakan styrofoam. Makan makanan kecil dan sebagainya itu kan sekarang banyak (pakai wadah styrofoam)," papar Teja dalam webinar, Kamis (3/2/2022).'),
                    const SizedBox(
                      height: 10,
                    ),
                    TextWidget(
                        sizeFont: 15,
                        text:
                            'Dia menambahkan, bahwa adanya peraturan lockdown yang mengurangi aktivitas di luar ruangan sangat berpengaruh dengan peningkatan sampah, terutama sampah plastik dan styrofoam. Bahkan, volume sampah di Bali mencapai 4.900 ton per hari.'),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
