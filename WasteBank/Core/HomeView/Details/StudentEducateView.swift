//
//  ParentEducateView.swift
//  WasteBank
//
//  Created by Putra Pebriano Nurba on 31/03/24.
//

import SwiftUI

struct StudentEducateView: View {
    var body: some View {
        ScrollView(.vertical) {
         
            studentEducateArticles
            
        }
        .frame(maxWidth: UIScreen.main.bounds.width)
        .overlay(alignment: .top) {
            Header(nameHeader: "Edukasi Untuk Anak")
        }
        .navigationBarBackButtonHidden(true)
        .scrollIndicators(.hidden)

    }
    
    private var studentEducateArticles: some View {
        VStack(alignment: .leading) {
            Text("Tips membiasakan anak kelola sampah sejak dini".capitalized)
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.horizontal, 20)
                .padding(.top, 50)
            
            VStack(alignment: .leading) {
                Text("1. Routine".capitalized)
                    .font(.system(size: 15))
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                
                Text("Kamu pasti tau dong kalau anak-anak itu tumbuh dengan pengulangan? Begitu juga perilaku pengelolaan sampah ini, butuh pembiasaan dan pengulangan. Orang tua hendaknya menciptakan rutinitas memilah sampah setiap hari. Sekarang tidak cukup, anak mampu membuang sampah pada tempatnya saja, melainkan anak harus bisa memilah sampah.")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 10)
                    .padding(.horizontal, 20)
                
                Text("2. Ritual".capitalized)
                    .font(.system(size: 15))
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                
                Text("Orang tua bisa membuat ritual yang menarik untuk anak seperti membuat mainan edukatif berbahan barang bekas. Nah, konsep zero waste toys ini sudah dibahas diartikel sebelumnya, mulai dari ide barang bekas yang bisa digunakan, cara membuat hingga tujuan serta manfaat yang akan anak dapatkan dari mainan tersebut.\n\nTips yang selama ini saya terapkan di rumah yaitu setiap kali ada barang bekas yang bisa dipakai, saya langsung bersihkan lalu dikumpulkan di satu tempat bersih dan tertutup. Sehingga ketika saya tiba-tiba punya ide membuat mainan edukatif tertentu, saya tidak perlu repot lagi mencari barang-barang tersebut dan pastinya sudah bersih.")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 10)
                    .padding(.horizontal, 20)
                
                Text("3. Rules".capitalized)
                    .font(.system(size: 15))
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                
                Text("Aturan perlu dibuat di rumah sesuai dengan kesepakatan antar anggota keluarga, termasuk anak-anak. Misalnya, kesepakatan memilah sampah dan membuangnya dengan tepat supaya ngga ada lagi deh kejadian menemukan harta karun alias nemu bungkus biskuit di sela-sela sofa hihi.\n\n Berikutnya yaitu aturan untuk menghabiskan makanan. Anak-anak nih selalu ada aja alasan untuk menyisakan makanan. Tiba-tiba pedas lah, padahal dari awal aman-aman aja tuh makan. Dengan adanya aturan dan kesepakatan, anak akan lebih aware dan bijak memperlakukan makanan.\n\nHal ini saya rasakan sendiri manfaatnya lho. Mengambil makanan sesuai dengan porsinya, secukupnya. Jika masih kurang, nanti bisa nambah lagi, daripada makan banyak tapi tidak dihabiskan. Tidak hanya mengurangi sampah sisa makanan, anak-anak juga belajar mengukur diri dan bertanggung jawab.")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 10)
                    .padding(.horizontal, 20)
                
                Text("Edukasi Peduli Lingkungan Untuk Balita")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
                    .padding(.top, 45)

                Text("aya sepakat dengan apa yang disampaikan oleh Kak Mauril, sebagai Founder ZWID yang menjadi narasumber webinar Hari Anak Nasional. Kak Mauril mengatakan, bumi merupakan playground yang baik bagi anak untuk mempertajam kemampuan sensory mereka.\n\nAnak memiliki horme atau motivasi tinggi untuk belajar tanpa diminta orang lain. Ketika anak diajak lebih dekat dengan alam, secara naluriah mereka akan melakukan eksplorasi sendiri. Mereka bergerak, menyentuh rumput, pasir dan menemukan binatang di alam bebas. Tanpa kita sadari, alam menstimulasi sistem sensorik anak.\n\nKita juga bisa mengajak mereka melihat pemandangan alam yang indah. Mengajarkan betapa Tuhan menciptakan bumi dengan sangat baik dan sempurna serta memberi manfaat untuk manusia. Sebagai rasa syukur, kita perlu merawatnya agar bumi tetap indah dan terus memberikan manfaatnya.\n\nBerbeda dari anak Pra-Sekolah yang sudah bisa diajak diskusi. Anak usia 2-3 tahun ini bisa kita edukasi dengan hal-hal sederhana melalui pengenalan dan pembiasaan dalam kehidupan sehari-hari, seperti:\n1. Mengajak anak membuang sampah pada tempatnya.\n2. Membiasakan anak untuk menghabiskan makanan.\n3. Mengajak anak berkebun dan merawat tanaman.\n4. Mengedukasi anak lewat cerita atau dongeng tentang bagaimana manusia menyayangi mahkluk hidup lainnya. Seperti tidak menginjak tanaman dan tidak melukai binatang.\n5. Mengajak anak untuk memilah sampah yang ada di rumah.\n\nHal-hal dasar seperti ini sangat berdampak terhadap kepedulian anak kepada lingkungan. Mari kita bersama-sama mengurangi produksi sampah mulai dari diri sendiri dan keluarga. Seperti yang Kak Muril katakan, children see children do!Saya sepakat dengan apa yang disampaikan oleh Kak Mauril, sebagai Founder ZWID yang menjadi narasumber webinar Hari Anak Nasional. Kak Mauril mengatakan, bumi merupakan playground yang baik bagi anak untuk mempertajam kemampuan sensory mereka.\n\nAnak memiliki horme atau motivasi tinggi untuk belajar tanpa diminta orang lain. Ketika anak diajak lebih dekat dengan alam, secara naluriah mereka akan melakukan eksplorasi sendiri. Mereka bergerak, menyentuh rumput, pasir dan menemukan binatang di alam bebas. Tanpa kita sadari, alam menstimulasi sistem sensorik anak.\n\nKita juga bisa mengajak mereka melihat pemandangan alam yang indah. Mengajarkan betapa Tuhan menciptakan bumi dengan sangat baik dan sempurna serta memberi manfaat untuk manusia. Sebagai rasa syukur, kita perlu merawatnya agar bumi tetap indah dan terus memberikan manfaatnya.\n\nBerbeda dari anak Pra-Sekolah yang sudah bisa diajak diskusi. Anak usia 2-3 tahun ini bisa kita edukasi dengan hal-hal sederhana melalui pengenalan dan pembiasaan dalam kehidupan sehari-hari, seperti:\n1. Mengajak anak membuang sampah pada tempatnya.\nMembiasakan anak untuk menghabiskan makanan.\n2. Mengajak anak berkebun dan merawat tanaman.\n3. Mengedukasi anak lewat cerita atau dongeng tentang\nbagaimana manusia menyayangi mahkluk hidup lainnya. Seperti tidak menginjak tanaman dan tidak melukai binatang.\n4. Mengajak anak untuk memilah sampah yang ada di rumah.\n\nHal-hal dasar seperti ini sangat berdampak terhadap kepedulian anak kepada lingkungan. Mari kita bersama-sama mengurangi produksi sampah mulai dari diri sendiri dan keluarga. Seperti yang Kak Muril katakan, children see children do!")
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
    StudentEducateView()
}

