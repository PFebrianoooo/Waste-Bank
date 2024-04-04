//
//  StudentEducateView.swift
//  WasteBank
//
//  Created by Putra Pebriano Nurba on 31/03/24.
//

import SwiftUI

struct ParentEducateView: View {
    var body: some View {
        ScrollView(.vertical) {
         
            parentEducateArticles
            
        }
        .frame(maxWidth: UIScreen.main.bounds.width)
        .overlay(alignment: .top) {
            Header(nameHeader: "Edukasi Untuk Orang Tua")
        }
        .navigationBarBackButtonHidden(true)
        .scrollIndicators(.hidden)
    }
    
    private var parentEducateArticles: some View {
        VStack(alignment: .leading) {
            Text("Tips memilah sampah bagi orang Tua".capitalized)
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.horizontal, 20)
                .padding(.top, 50)
            
            VStack(alignment: .leading) {
                Text("Pengelolaan sampah rumah tangga yang baik dan benar dimulai dari kebiasaan memilah sampah di rumah. Dengan memilah sampah, kita bisa mengurangi volume sampah yang akhirnya akan dibuang ke tempat pembuangan akhir. Ada tiga kategori sampah yang perlu dipilah, yaitu organik, anorganik, dan residu. Organik seperti sisa makanan dan daun kering bisa dijadikan pupuk untuk tanaman. Anorganik seperti kertas, plastik, dan logam bisa didaur ulang. Sedangkan residu seperti kain bekas atau pampers harus dibuang ke tempat pembuangan akhir.\n\nSampah domestik adalah jenis sampah yang dihasilkan dari kegiatan sehari-hari di dalam rumah tangga, seperti sisa makanan, kertas, plastik, logam, kain, dan barang-barang bekas lainnya. Sampah domestik juga sering disebut sebagai sampah rumah tangga atau sampah dapur. Sampah jenis ini biasanya dihasilkan setiap hari dan jumlahnya bisa cukup besar tergantung dari banyaknya anggota keluarga dan tingkat konsumsi serta penggunaan barang-barang di dalam rumah.\n\nCara memilah sampah di rumah bisa dimulai dengan menyediakan tempat sampah berbeda untuk setiap jenis sampah. Biasanya, orang menggunakan tiga warna tempat sampah berbeda, yaitu hijau untuk organik, biru untuk anorganik, dan hitam untuk residu. Setelah memilah sampah, pastikan untuk menyalurkannya ke tempat yang sesuai. Untuk organik, bisa dibuat komposter di pekarangan rumah atau diserahkan ke petugas kebersihan. Sedangkan untuk anorganik, bisa diserahkan ke bank sampah atau petugas daur ulang. Jangan lupa untuk memisahkan sampah berbahaya seperti baterai atau lampu neon, dan mengirimkannya ke tempat pengolahan khusus.\n\nDengan memilah sampah di rumah, kita ikut andil dalam menjaga kelestarian lingkungan. Kita bisa mengurangi volume sampah yang akhirnya akan dibuang ke tempat pembuangan akhir, sehingga bisa memperpanjang usia guna tempat sampah tersebut. Selain itu, dengan mengolah sampah organik menjadi pupuk, kita bisa memperkaya tan dan memperbaiki kualitas tanaman. Dengan demikian, tidak ada alasan untuk tidak memilah sampah di rumah.")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 10)
                    .padding(.horizontal, 20)
                
                Text("Menjaga dan mengelola sampah dirumah".capitalized)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                
                Text("1. Memilah Sampah".capitalized)
                    .font(.system(size: 15))
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                
                Text("Terdapat 3 jenis sampah yaitu sampah organik, anorganik, dan B3. sampah organik. Tahukah Sobat SMP perbedaan antara ketiganya? sampah yang dapat membusuk dan terurai sehingga bisa diolah menjadi kompos. Misalnya, sisa makanan, daun kering, sayuran, dan lain-lain. Sampah anorganik adalah sampah yang sulit membusuk dan tidak dapat terurai. Namun, sampah anorganik dapat didaur ulang menjadi sesuatu yang baru dan bermanfaat. Misalnya botol plastik, kertas bekas, karton, kaleng bekas, dan lain-lain. Sedangkan sampah B3 adalah sampah yang merupakan bahan-bahan yang dapat membahayakan kesehatan atau kelangsungan hidup manusia, makhluk lain, dan lingkungan hidup seperti kalung bekas racun serangga , baterai bekas, lampu bekas, dan sampah bekas masker")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 10)
                    .padding(.horizontal, 20)

                Text("2. Menerapkan 3R".capitalized)
                    .font(.system(size: 15))
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                
                Text("Menerapkan prinsip 3R merupakan salah satu langkah yang dapat dilakukan oleh Sobat SMP di rumah. 3R merupakan singkatan dari reduce (mengurangi sampah), reuse (menggunakan ulang sampah) , dan recycle (daur ulang sampah). Sobat SMP dapat mengurangi penggunaan bahan yang sulit didaur ulang seperti plastik. Bukan hanya mengurangi timbulan sampah, Sobat SMP juga dapat memanfaatkan sampah organik seperti sisa makanan dan sayuran di bawah sebagai pupuk kompos. Kegiatan mendaur ulang sampah menjadi barang baru yang bernilai guna juga menjadi opsi yang harus dicoba. Sobat SMP dapat mencoba merangkai sampah bekas bungkus kemasan menjadi beragam jenis tas, vas bunga, dan lain-lain.")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 10)
                    .padding(.horizontal, 20)

                Text("3. Bergabung Dengan Bank Sampah".capitalized)
                    .font(.system(size: 15))
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                
                Text("Apakah Sobat pernah mendengar bank sampah? Berdasarkan Pasal 1 Peraturan Menteri Lingkungan Hidup dan Kehutanan Nomor 14 Tahun 2021 tentang Pengelolaan Sampah pada Bank Sampah, bank sampah merupakan fasilitas untuk mengelola sampah dengan prinsip 3R (reduce, reuse, dan recycle), sebagai sarana edukasi, perubahan perilaku dalam pengelolaan sampah, dan pelaksanaan ekonomi sirkular, yang dibentuk dan dikelola oleh masyarakat, badan usaha, dan/atau pemerintah daera")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 10)
                    .padding(.horizontal, 20)



            }

        }
    }
}

#Preview {
    ParentEducateView()
}

