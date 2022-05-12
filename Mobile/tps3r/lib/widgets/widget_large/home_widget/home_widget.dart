import 'package:flutter/material.dart';
import '../../widget_medium/link_register/link_resgiter_widget.dart';
import '../../widget_medium/news/news_widget.dart';
import '../../widget_mini/chart/bar_chart_widget.dart';
import '../../widget_mini/text/text_widget.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 30,
        ),
        LinkRegisterWidget(
          text: 'Hai kamu, ayo jual sampahmu, ',
          textLink: 'Disini',
        ),
        const SizedBox(
          height: 30,
        ),
        TextWidget(
          text: 'Berita Popular',
          sizeFont: 15,
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(
          height: 6,
        ),
        NewsWidget(
          maxLineTitle: 1,
          maxLineContent: 3,
          internet: false,
          pathImage: 'assets/assets/image/img1.png',
          text: 'Menuju Bali Bebas Sampah Plastik',
          text2:
              'Merujuk data tahun 2018 dari Asosiasi Industri Plastik Indonesia (Inaplas) dan Badan Pusat Statistik (BPS),  Indonesia tercatat sebagai penyumbang sampah plastik terbanyak kedua di dunia setelah Tiongkok..lihat selengkapnya',
        ),
        const SizedBox(
          height: 23,
        ),
        NewsWidget(
          maxLineTitle: 1,
          maxLineContent: 3,
          internet: false,
          pathImage: 'assets/assets/image/img2.png',
          text: 'Menuju Bali Bebas Sampah Plastik',
          text2:
              'Merujuk data tahun 2018 dari Asosiasi Industri Plastik Indonesia (Inaplas) dan Badan Pusat Statistik (BPS),  Indonesia tercatat sebagai penyumbang sampah plastik terbanyak kedua di dunia setelah Tiongkok..lihat selengkapnya',
        ),
        const SizedBox(
          height: 23,
        ),
        BarChartWidget(),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
