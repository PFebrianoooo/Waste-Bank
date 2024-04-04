//
//  AboutUsView.swift
//  WasteBank
//
//  Created by Putra Pebriano Nurba on 30/03/24.
//

import SwiftUI

struct AboutUsView: View {
    
    private let instagramProfile: URL? = URL(string: "https://www.instagram.com/p.febrianoo_/")
    private let gitProfile: URL? = URL(string: "https://github.com/PFebrianoooo")
    
    var body: some View {
        ScrollView(.vertical) {
            
            profileImage
            
            briefSummary
            
            linkAndAdditionalResources
            
        }
        .scrollIndicators(.hidden)
        .overlay(alignment: .top) {
            Header(nameHeader: "Tentang Kami")
        }
        .navigationBarBackButtonHidden(true)
        
    }
    
    private var profileImage: some View {
        ZStack(alignment: .trailing) {
            Image.backgroundAboutUs
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 300)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .offset(x: 110)

            
            Image.creatorPhoto
                .resizable()
                .scaledToFill()
                .frame(width: 160, height: 260)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .overlay {
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(lineWidth: 0.5)
                }
        }
        .frame(maxWidth: UIScreen.main.bounds.width)
        .padding(.top, 45)
    }
    
    private var briefSummary: some View {
        VStack {
            Text("Bagaimana Waste Bank Dimulai")
                .font(.headline)
                .padding(.top)
                .fontWeight(.medium)
            
            Text("  Waste Bank dimulai ketika pada bulan ramadhan, saya Putra Pebriano Nurba selaku pembuat aplikasi merasa bosan ketika ingin menghabiskan waktu sambil menunggu berbuka puasa.\n\n  Akhirnya ada inisiasi atau fikiran untuk membuat aplikasi saja. Namun, menetukan aplikasi yang ingin dibuat sangat bingung. kenapa memilih Bank Sampah?, karena sebelummnya saya bersama kelompok kampus saya mengajukan untuk PPK ORMAWA (Program Penguatan Kapasistas Organisasi Mahasiswa) nah kebetulan temanya terkait dengan sampah. \n\n  Dan timbul di diri saya kenapa tidak membuat aplikasi Bank Sampah saja, and finally selesai aplikasinya.\n\n  Segitu aja ya guys ya ceritanya, takut kepanjangan. Pokonya sukses buat yang sedanga berjuang, peluk dari jauh.")
                .font(.system(size: 13))
                .fontWeight(.regular)
                .multilineTextAlignment(.leading)
                .padding(.horizontal, 20)
                .padding(.top, 10)
            
            HStack {
                HStack(spacing: 0) {
                    Image(systemName: "bubble.right.fill")
                        .imageScale(.large)
                    Image(systemName: "bubble.right.fill")
                        .imageScale(.large)
                }
                .foregroundStyle(Color.green)
                .padding(.top, 10)
                
                Text("Pada 5 April 2024, Akhirnya Waste Bank App selesai, dengan harapan dapat membantu Putra jago dalam pengembangan iOS App")
                    .font(.system(size: 13))
                    .fontWeight(.medium)
                    .baselineOffset(0)
            }
            
            .padding(.horizontal, 20)
            .padding(.top, 30)
        }
    }
    
    private var linkAndAdditionalResources: some View {
        VStack {
            HStack {
                Text("Kenalan lebih lanjut yuk".capitalized)
                    .font(.headline)
                    .padding(.top, 30)
                    .fontWeight(.medium)
                    .padding(.leading, 20)
                
                Spacer()
            }
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Email")
                        .font(.caption)
                    Text("putrapebriano27@gmail.com".description)
                        .font(.subheadline)
                }
                Spacer()
            }
            .padding(.horizontal, 20)
            .padding(.top, 10)
            
            Divider()
            
            HStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Instagram")
                            .font(.caption)
                        
                        if let instagramProfile {
                            Link(destination: instagramProfile, label: {
                                Text("Klik Disini")
                                    .font(.subheadline)
                                    .foregroundStyle(Color.primaryColors)
                            })
                        }
                    }
                    Spacer()
                }
                .padding(.horizontal, 20)
                .padding(.top, 10)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Git Hub")
                            .font(.caption)
                        
                        if let gitProfile {
                            Link(destination: gitProfile, label: {
                                Text("Klik Disini")
                                    .font(.subheadline)
                                    .foregroundStyle(Color.primaryColors)
                            })
                        }
                    }
                    Spacer()
                }
                .padding(.horizontal, 20)
                .padding(.top, 10)
            }
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Salam Hangat")
                        .font(.caption)
                    Text("Putra Pebriano Nurba Developer Team")
                        .font(.subheadline)
                }
                Spacer()
            }
            .padding(.horizontal, 20)
            .padding(.top, 10)

        }
    }
}

#Preview {
    AboutUsView()
}

