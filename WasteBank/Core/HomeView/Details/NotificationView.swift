//
//  NotificationView.swift
//  WasteBank
//
//  Created by Putra Pebriano Nurba on 30/03/24.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 0) {
                Image.notificationImage
                    .resizable()
                    .frame(width: 175, height: 150)
                
                Text("Tidak Ada Notifikasi Nih !")
                    .font(.subheadline)
                    .fontWeight(.semibold)

            }
            .padding(.top, 50)
            .frame(maxWidth: UIScreen.main.bounds.width)
            
        }
        .scrollIndicators(.hidden)
        .overlay(alignment: .top) {
            Header(nameHeader: "Notification")
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    NotificationView()
}

