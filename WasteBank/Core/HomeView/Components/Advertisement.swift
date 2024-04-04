//
//  Advertisement.swift
//  WasteBank
//
//  Created by Putra Pebriano Nurba on 28/03/24.
//

import SwiftUI

struct Advertisement: View {
    private let timer = Timer.publish(every: 7, on: .main, in: .common).autoconnect()
    @State private var index: Int = 1

    var body: some View {
        TabView (selection: $index){
            ZStack {
                Image.ramadhanBackgroundAdvertise
                    .resizable()
                HStack {
                    VStack(alignment: .leading) {
                        Text("Marhaban Yaa Ramadhan")
                        Text("Selamat Menjalankan Ibadah Puasa")
                    }
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.brown)
                    .shadow(color: Color.brown, radius: 15, x: 0, y: 7)
                    .offset(x: 35, y: 7)
                    
                    Spacer()
                    
                    Image.stickerRamadhanBackground
                        .resizable()
                        .frame(width: 120, height: 120)
                }
                .padding(.horizontal)
            }
            .tag(1)

            ZStack {
                Image.discountBackgroundAdvertise
                    .resizable()
                
                VStack(alignment: .leading) {
                    Text("Dapatkan Tambahan Saldo")
                    Text("Untuk Pertama Kali Menukarkan Sampah")
                }
                .font(.caption)
                .fontWeight(.bold)
                .foregroundStyle(Color.white)
                .shadow(color: Color.black, radius: 12, x: 0, y: 7)
                .offset(x: 50, y: -9)
            }
            .tag(2)

            ZStack(alignment: .leading) {
                Image.trashBackroundAdvertise
                    .resizable()
                
                Image.stickerTrashBackground
                    .resizable()
                    .frame(width: 130, height: 130)
                    
                VStack(alignment: .leading) {
                    Text("Kenali Sampah")
                    Text("Sebelum Menukarnya")
                }
                .font(.caption)
                .fontWeight(.bold)
                .foregroundStyle(Color.white)
                .shadow(color: Color.black, radius: 12, x: 0, y: 7)
                .offset(x: 100 ,y: 30)

                    
            }
            .tag(3)
            
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .frame(maxWidth: UIScreen.main.bounds.width)
        .frame(height: 130)
        .padding(.top, 45)
        .onReceive(timer, perform: { _ in
            withAnimation(.spring().delay(5)) {
                if index == 3 {
                    index = 1
                }else {
                    index += 1
                }
            }
        })
    }
}

#Preview {
    Advertisement()
}


