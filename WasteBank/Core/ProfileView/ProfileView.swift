//
//  ProfileView.swift
//  WasteBank
//
//  Created by Putra Pebriano Nurba on 30/03/24.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var VM: WasteBankViewModel
    var body: some View {
        ScrollView(.vertical) {
            
            profileInformations
            
            trashConversionHistor
            
            menuList
            
        }
        .scrollIndicators(.hidden)
        .overlay(alignment: .top) {
            Header(nameHeader: "profile")
        }
        .navigationBarBackButtonHidden(true)
    }
    
    private var profileInformations: some View {
        HStack {
            Image.imageProfile
                .resizable()
                .scaledToFill()
                .frame(width: 110, height: 120)
                .clipShape(Circle())
                .overlay{
                    Circle()
                        .stroke(lineWidth: 0.5)
                        .fill(Color.white)
                }
                .padding(.leading)
            
            VStack(alignment: .leading, spacing: 0) {
                Text("Michael pradipta".capitalized)
                    .font(.subheadline)
                    .foregroundStyle(Color.black)
                    .fontWeight(.semibold)
                Text("michaelpradipta@gmail.com".description)
                    .font(.caption)
                    .fontWeight(.light)
                    .foregroundStyle(Color.black)
            }
            
            Spacer()
        }
        .padding(.top, 45)
        .frame(height: 230)
        .padding(.bottom, 40)
        .background(
            Image.profileBackground
                .resizable()
                .scaledToFill()
        )
        .overlay(alignment: .bottom) {
            VStack {
                Text("Total Sampah Yang Disumbangkan".capitalized)
                    .font(.caption)
                    .fontWeight(.semibold)
                
                HStack {
                    Text("\(VM.amountTrash)")
                        .fontWeight(.semibold)
                        .font(.title3) +
                    Text("Kg")
                        .font(.caption)
                }
            }
            .padding()
            .frame(height: 50)
            .frame(maxWidth: UIScreen.main.bounds.width)
            .background(
                .regularMaterial
            )
        }
        .clipped()

    }
    
    private var trashConversionHistor: some View {
        VStack {
            HStack {
                Text("Riwayat penukaran sampah".capitalized)
                    .font(.headline)
                    .fontWeight(.medium)
                    .padding(.leading, 20)
                
                Spacer()
            }
            
            HStack(spacing: 30) {
                NavigationLink {
                    OrganicHistoryView()
                } label: {
                    ZStack(alignment: .trailing) {
                        Image.conversionHistoryOrganics
                            .resizable()
                            .scaledToFill()
                            .frame(width: 160, height: 200)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                        VStack(alignment: .leading, spacing: 0) {
                            Text("Riwayat")
                            Text("Sampah Organik")
                        }
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color.primaryColors)
                        .shadow(color: .white, radius: 10)
                        .offset(y: -30)
                        .padding(.trailing, 5)
                    }
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 0.5)
                            .fill(Color.black)
                    }
                }
                
                NavigationLink {
                    AnorganicHistoryView()
                } label: {
                    ZStack(alignment: .leading) {
                        Image.conversionHistoryAnorganics
                            .resizable()
                            .scaledToFill()
                            .frame(width: 160, height: 200)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                        VStack(alignment: .leading, spacing: 0) {
                            Text("Riwayat")
                                .font(.caption)
                                .fontWeight(.semibold)
                                .foregroundStyle(Color.primaryColors)
                            Text("Sampah Anorganik")
                                .font(.caption)
                                .fontWeight(.semibold)
                                .foregroundStyle(Color.primaryColors)
                        }
                        .padding(.leading, 5)
                        .shadow(color: .white, radius: 10)
                    }
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 0.5)
                            .fill(Color.black)
                    }
                    
                }
                
            }
        }
    }
    
    private var menuList: some View {
        VStack {
            HStack {
                Text("Bantuan")
                    .font(.headline)
                    .fontWeight(.medium)
                    .padding(.leading)
                
                Spacer()
            }
            
            VStack(spacing: 0) {
                HelpCard(iconName: "questionmark.circle", title: "FAQ")
                
                HelpCard(iconName: "phone", title: "Bantuan 24 Jam")
                
                NavigationLink {
                    AboutUsView()
                } label: {
                    HelpCard(iconName: "info.bubble", title: "Tentang Kami")
                }
            }
        }
    }
}

#Preview {
    NavigationView {
        ProfileView()
    }
    .environmentObject(WasteBankViewModel())
}

