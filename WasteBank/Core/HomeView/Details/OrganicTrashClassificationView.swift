//
//  OrganicTrashClassificationView.swift
//  WasteBank
//
//  Created by Putra Pebriano Nurba on 30/03/24.
//

import SwiftUI

struct OrganicTrashClassificationView: View {
    var body: some View {
        ScrollView(.vertical) {

            organicClassificationsArticles
            
        }
        .frame(maxWidth: UIScreen.main.bounds.width)
        .overlay(alignment: .top) {
            Header(nameHeader: "Kategori Sampah Organik")
        }
        .navigationBarBackButtonHidden(true)
        .scrollIndicators(.hidden)
    }
    
    private var organicClassificationsArticles: some View {
        VStack {
            Image.organicsClassificationDetails
                .resizable()
                .frame(width: 225, height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.top, 50)
            
            Text("sampah organik, jenis, contoh, manfaat dan cara mengolahnya".capitalized)
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.horizontal, 20)
                .padding(.top, 10)
            
            VStack(alignment: .leading) {
                Text("Sampah organik adalah sampah yang berasal dari sisa-sisa organisme makhluk hidup baik manusia, hewan, serta tumbuhan. Apakah detikers tahu apa saja contoh jenis sampah organik?\n\nSampah organik sering ditemukan dalam kehidupan sehari-hari. Adapun contoh yang termasuk sampah organik adalah sisa sayur dan buah, kotoran hewan hingga daun kering.\n\n Menurut Kamus Besar Bahasa Indonesia (KBBI), definisi sampah yaitu sebagai suatu barang yang dibuang karena sudah tidak terpakai lagi atau sisa dari kegiatan manusia. Sedangkan, maksud dari organik adalah suatu zat yang berasal dari makhluk hidup.\n\nBerdasarkan asalnya, sampah terbagi menjadi 2 yaitu sampah organik dan anorganik. Dalam artikel ini, kita akan membahas penjelasan dari sampah organik, jenis, contoh, hingga cara mengolahnya.")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                
                Text("Pengertian Sampah Organik".capitalized)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                
                Text("  Dikutip dari e-book Pengelolaan Sampah Organik & Anorganik Universitas Negeri Yogyakarta oleh Dr. Sujarwo, M.Pd, dkk, pengertian sampah organik adalah sampah yang dihasilkan dari bahan-bahan hayati.\n\nSampah organik disebut sampah basah (garbage), karena sebagian besar cukup banyak mengandung air. Sampah rumah tangga termasuk sebagian besar contoh bahan organik.\n\nSampah organik merupakan jenis sampah yang mudah terurai melalui proses alami. Artinya, terurainya sampah organik bisa terjadi tanpa adanya campur tangan manusia.\n\nSampah organik mudah diuraikan, karena sampah organik bisa didegradasi oleh mikroba (bakteri pembusuk) atau bersifat biodegradable. Oleh sebab itu, sampah organik sering dimanfaatkan menjadi kompos maupun pupuk organik cair.")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 10)

                Text("Jenis-Jenis sampah organik".capitalized)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                
                
                Text("Meskipun sampah organik dikenal sebagai sampah basah, namun berdasarkan jenisnya sampah organik digolongkan menjadi 2 antara lain, sampah organik basah dan kering.")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 10)
                
                Text("1. Sampah Organik Basah".capitalized)
                    .font(.system(size: 15))
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                
                Text("Sampah organik basah adalah sampah organik yang sebagian besar mengandung air. Inilah yang menjadi alasan kalau sampah organik bisa menimbulkan bau tidak sedap, karena punya banyak kandungan air yang menyebabkan sampah jenis ini cepat untuk membusuk.\n Contoh sampah organik basah, antara lain:\n\nBuah yang busuk\n\nSisa sayur-sayuran\n\nKotoran hewan\n\nKulit pisang dan sejenisnya.")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 10)
                
                Text("2. Sampah Organik Kering".capitalized)
                    .font(.system(size: 15))
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                
                Text("Sampah organik kering termasuk sampah organik yang kadar airnya sedikit. Biasanya, sampah ini sulit diolah kembali, alhasil sampah organik kering lebih sering dibakar untuk dimusnahkan.\nContoh sampah organik kering adalah:\n\nRanting pohon\n\nKayu\n\nDaun-daunan kering.")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 10)

                Text("Cara Mengelola Sampah Organik".capitalized)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                
                Text("Sampah juga memiliki nilai ekonomi, apabila kita bisa mengolahnya dengan baik menggunakan cara atau metode tertentu. Agar memiliki nilai ekonomis, pengelolaan sampah bisa dengan prinsip 3R (Reuse, Reduce, Recycle) atau dengan di distribusikan ke Bannk Sampah terdekat.π")
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
    OrganicTrashClassificationView()
}

