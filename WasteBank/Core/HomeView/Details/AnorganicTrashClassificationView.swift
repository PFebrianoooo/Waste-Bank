//
//  OrganicTrashClassificationView.swift
//  WasteBank
//
//  Created by Putra Pebriano Nurba on 30/03/24.
//

import SwiftUI

struct AnorganicTrashClassificationView: View {
    var body: some View {
        ScrollView(.vertical) {
            
            anorganicClassificationsArticles
            
        }
        .frame(maxWidth: UIScreen.main.bounds.width)
        .overlay(alignment: .top) {
            Header(nameHeader: "Kategori Sampah Anorganik")
        }
        .navigationBarBackButtonHidden(true)
        .scrollIndicators(.hidden)
    }
    
    private var anorganicClassificationsArticles: some View {
        VStack {
            Image.anorganicsClassificationImage
                .resizable()
                .frame(width: 225, height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.top, 50)
            
            Text("sampah Anorganik, pengertian, contoh, jenis, dan cara mengelola".capitalized)
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.horizontal, 20)
                .padding(.top, 10)
            
            VStack(alignment: .leading) {
                Text("  Kehidupan manusia tak terlepas dari keberadaan sampah, salah satunya sampah anorganik. Keberadaan sampah ini merupakan dampak dari pemenuhan kebutuhan manusia sehari-hari.\n\n  Lantas apa itu sampah anorganik? Berikut pengertian, contoh, beserta cara mengelola sampah anorganik. \n\n Sampah dalam Kamus Besar Bahasa Indonesia (KBBI) berarti barang atau benda buangan yang tidak termanfaatkan lagi.\n\n  Sampah juga sering disebut sebagai limbah yang tak lagi dikehendaki keberadaannya karena tak bernilai ekonomis.")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                
                Text("Pengertian Sampah anorganik".capitalized)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                
                Text("  Dikutip dari buku Pengelolaan Sampah Organik dan Anorganik (2022), pengertian sampah anorganik adalah limbah yang diproduksi dari bahan-bahan nonhayati, sumber daya alam tidak terbarui, dan hasil proses teknologi pengelolaan bahan tambang dan industri.n\n  Contoh sampah anorganik berupa sampah berbahan logam serta produk olahan, plastik, kertas, kaca dan keramik hingga sampah detergen.\n\n  Sebagian besar sampah anorganik tidak dapat terurai oleh alam atau mikroorganisme.\n\n  Waktu yang lama juga dibutuhkan untuk penguraiannya, seperti sampah plastik, sisa pecahan kaca, potongan besi, tembaga, botol dan kaleng bekas, asap pabrik, atau sisa dari kendaraan bermotor seperti ban bekas, dan rongsokan lainnya.")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 10)
                
                Text("Jenis Dan contoh  sampah Anorganik".capitalized)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                
                Text("Dikutip dari buku Implementasi Program SDGs pada Kegiatan Pendidikan Lingkungan, jenis limbah anorganik dibagi menjadi dua, yaitu lunak dan keras. Simak penjelasannya.")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 10)
                
                Text("1. Limbah lunak anorganik".capitalized)
                    .font(.system(size: 15))
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                
                Text("Limbah lunak anorganik merupakan limbah yang bersifat lunak atau lentur dan mudah dibentuk. Contohnya, plastik, gabus sintetis atau styrofoam, sedotan plastik, serta bungkus makanan cepat saji.\n\nSelain itu, limbah dalam bentuk cairan seperti air detergen, sabun cuci, minyak jelantah, dan lainnya.")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 10)


                Text("2. Limbah Keras anorganik".capitalized)
                    .font(.system(size: 15))
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)

                Text("Limbah keras anorganik ini sifatnya tidak mudah hancur. Biasanya, limbah keras anorganik akan dihancurkan dengan metode tertentu, pemanasan atau pembakaran.\n\nContoh sampah atau limbah keras anorganik adalah pecahan keramik, kaca, paku berkarat dan bekas kaleng.")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 10)

                Text("Cara Mengelola sampah Anorganik".capitalized)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                
                Text("Tujuan dari pengolahan sampah supaya limbah tersebut dapat bernilai ekonomis. Selain itu, limbah anorganik dapat dimanfaatkan dan diolah kembali menjadi barang yang tidak berbahaya bagi lingkungan dan manusia.\n\nBerikut tiga cara untuk mengelola sampah anorganik yang sulit terurai.")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 10)

                Text("1. Mencegah dan mengurangi sampah dari sumbernya".capitalized)
                    .font(.system(size: 15))
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                
                Text("Pemilahan sampah dapat dimulai dari dalam rumah seperti memisahkan sampah organik dan anorganik.\n\nMengurangi sampah bisa dilakukan dengan berbagai cara seperti menghindari penggunaan produk barang sekali pakai, menghemat air dan listrik, menggunakan tas kain saat berbelanja dan meminimalkan penggunaan tisu.")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 10)
                
                Text("2. Pemanfaatan Kembali Sampah".capitalized)
                    .font(.system(size: 15))
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                
                Text("Cara mengolah sampah anorganik juga bisa dilakukan dengan memanfaatkan kembali produk tersebut. Contohnya, kamu bisa menggunakan kertas hasil daur ulang atau membuat kerajinan dari sampah plastik.\n\n Kamu juga bisa memanfaatkan wadah kaleng bekas menjadi tempat pensil, sampah ember plastik dan botol bekas menjadi pot bunga, pakaian bekas menjadi lap dan plastik belanja menjadi kantong sampah.")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 10)
                
                Text("3. bank sampah".capitalized)
                    .font(.system(size: 15))
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                
                Text("Bank sampah bisa menjadi solusi untuk pengolahan sampah anorganik yang kita miliki. Prinsipnya adalah tiga tahap yaitu memilah, menyortir, dan menjual.\n\n Pemilahan sampah anorganik dibagi menjadi beberapa jenis yaitu kertas, plastik, botol, maupun besi. Setelah dipisah dan dikelompokkan, kamu bisa membawanya ke bank sampah.\n\n Ketika sudah ada di bank sampah, nantinya sampahmu akan masuk sebagai deposito. Sampah akan ditimbang di bank dan dikonversikan dalam bentuk Uang atau Saldo")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 10)
            }
            .padding(.top, 10)
            .padding(.horizontal, 20)
        }
        
    }
    
}

#Preview {
    AnorganicTrashClassificationView()
}

