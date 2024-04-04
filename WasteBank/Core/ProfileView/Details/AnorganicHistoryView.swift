//
//  AnorganicHistoryView.swift
//  WasteBank
//
//  Created by Putra Pebriano Nurba on 31/03/24.
//

import SwiftUI

struct AnorganicHistoryView: View {
    
    @EnvironmentObject var VM: WasteBankViewModel
    
    var body: some View {
        ScrollView(.vertical) {
            if !VM.anorganicHistoryData.isEmpty {
                ForEach(VM.anorganicHistoryData) { anorganicData in
                    AnorganicHistoryCard(anorganicData: anorganicData)
                }
            } else {
                VStack(alignment: .center) {
                    Image.notificationImage
                        .resizable()
                        .frame(width: 200, height: 200)
                        .padding(.top, 50)
                    Text("Masih Kosong Nih")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Text("Mengapa tidak coba tuker sampah dulu".capitalized)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                }
            }
        }
        .frame(maxWidth: UIScreen.main.bounds.width)
        .padding(.top, 50)
        .padding(.horizontal, 20)
        .overlay(alignment: .top) {
            Header(nameHeader: "Riwayat Penukaran Sampah")
        }
        .navigationBarBackButtonHidden(true)
        .scrollIndicators(.hidden)

    }
}

#Preview {
    NavigationView {
        AnorganicHistoryView()
    }
    .environmentObject(WasteBankViewModel())
}

