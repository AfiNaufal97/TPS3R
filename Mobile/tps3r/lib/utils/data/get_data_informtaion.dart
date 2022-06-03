import 'package:tps3r/model/information.dart';

Information getDataInformation(String input) {
  switch (input) {
    case '0 Baterai':
      return Information(
          by: 'bbc.com',
          desc:
              'Sampah baterai sesungguhnya termasuk sebagai sampah B3 (Bahan Berbahaya & Beracun), karena di dalamnya mengandung berbagai logam berat, seperti merkuri, mangan, timbal, kadmium, nikel dan lithium, yang berbahaya bagi lingkungan dan kesehatan kita.',
          link: 'https://www.youtube.com/watch?v=XR5dHvrP_WU',
          title: 'Sampah Baterai');
  
    case '1 Biologis':
      return Information(
          by: 'Dinas Lingkungan Hidup Kab.Buleleng',
          desc:
              'Sampah organik adalah sampah yang berasal dari sisa mahkluk hidup yang mudah terurai secara alami tanpa proses campur tangan manusia untuk dapat terurai. Sampah organik bisa dikatakan sebagai sampah ramah lingkungan bahkan sampah bisa diolah kembali menjadi suatu yang bermanfaat bila dikelola dengan tepat. Tetapi sampah bila tidak dikelola dengan benar akan menimbulkan penyakit dan bau yang kurang sedap hasil dari pembusukan sampah organik yang cepat.',
          link: 'https://www.youtube.com/watch?v=JqNjPnsYXDY',
          title: 'Sampah Bilogis');

    case '2 Kardus':
      return Information(
          by: 'Printerous',
          desc:
              ' Kardus adalah salah satu tipe kemasan yang biasanya terbuat dari bahan kertas kraft yang dibuat menjadi bahan bergelombang dengan ketinggian dan ketebalan gelombang tertentu. Kardus sangat sering kita jumpai untuk pengemasan produk, selain itu digunakan untuk penyimpanan berbagai barang seperti mainan, pakaian, dan lain sebagainya.',
          link: 'https://www.youtube.com/watch?v=Fx4ump8klk0',
          title: 'Sampah Kardus');

    case '3 Kertas':
      return Information(
          by: 'Universal Eco',
          desc:
              'Limbah kertas merupakan bahan buangan sisa proses produksi maupun pemakaian yang mengandung berbagai komponen seperti selulosa, hemiselulosa, lignin, bahan ekstraktif, larutan Cl2, hidrogen peroksida, asam parasetat, dan sebagainya dengan karakteristik warna yang kehitaman atau keruh, bau khas, kandungan COD yang tinggi, dan tahan terhadap oksidasi biologis.Kawasan yang berpotensi menghasilkan limbah ini adalah industri, rumah tangga, perkantoran, komersil, dan pendidikan. Oleh karena itu, jenis limbah kertas yang dihasilkan pun berbeda-beda, antara lain Karton, Kertas HVS, Kertas kraft, Kertas berlapis plastik, Kertas tissue',
          link: 'https://www.youtube.com/watch?v=sNZN3U27AFM',
          title: 'Sampah Kertas');


    case '4 Plastik':
      return Information(
          by: 'fajar-tp.co.id',
          desc:
              'Sampah plastik adalah jenis sampah anorganik, jenis sampah jenis ini tidak dapat diuraikan begitu saja butuh waktu bertahun – tahun untuk dapat diuraikan. Penguraian sampah plastik diperlukan waktu sekitar 50-100 tahun, membutuhkan waktu 2 generasi untuk mengurai usia sampah. Karena rata-rata umur manusia di Indonesia berkisar antara 60-70 tahun sudah, artinya sampah belum terurai semasa manusia hidup. Untuk mengurai plastik seperti bungkus detergen butuh 50-80 tahun, sedangkan kantung plastik (tas kresek) diperlukan waktu 10 hingga 20 tahun untuk hancur. Bayangkan apa jadinya jika di lingkungan bumi ini kita buang sampah sembarangan, padahal setiap hari kita kalau membeli sesuatu di pasar, di supermarket ataupun warung kelontong dipastikan dikasih plastik untuk menaruh barang-barang yang kita beli.',
          link: 'https://www.youtube.com/watch?v=O3dbLmxsS1Q',
          title: 'Sampah Plastik');


    default:
      return Information(
          by: 'bbc.com',
          desc:
              'Sampah baterai sesungguhnya termasuk sebagai sampah B3 (Bahan Berbahaya & Beracun), karena di dalamnya mengandung berbagai logam berat, seperti merkuri, mangan, timbal, kadmium, nikel dan lithium, yang berbahaya bagi lingkungan dan kesehatan kita.',
          link: 'https://www.youtube.com/watch?v=XR5dHvrP_WU',
          title: 'Sampah Baterai');
  }
}

