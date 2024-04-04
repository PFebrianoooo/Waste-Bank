//
//  WalletInformationView.swift
//  WasteBank
//
//  Created by Putra Pebriano Nurba on 02/04/24.
//

import SwiftUI

struct WalletInformationView: View {
    
    @EnvironmentObject var vm: WasteBankViewModel
    @State private var sheetInformation: Bool = false
    
    var body: some View {
        ScrollView(.vertical) {
            
            Image.creditCard
                .resizable()
                .frame(width: 350, height: 350)
                .padding(.top, 50)
            
            informations
            
            buttonField
            
        }
        .sheet(isPresented: $sheetInformation, content: {
            
            sheetDetails
            
            // sheet settings
            .presentationDetents([.height(UIScreen.main.bounds.height / 2)])
            .presentationDragIndicator(.visible)
        })
        .frame(maxWidth: UIScreen.main.bounds.width)
        .overlay(alignment: .top, content: {
            Header(nameHeader: "Wallet Informations")
        })
        .navigationBarBackButtonHidden(true)
    }
    
    private var informations: some View {
        VStack(alignment: .leading, spacing: 10){
            VStack(alignment: .leading, spacing: 5) {
                Text("Nomor Kartu")
                    .font(.subheadline)
                Text("4228 4073 6319 4337")
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 5)
                    .background(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 0.5))
            }
            
            VStack(alignment: .leading, spacing: 5) {
                Text("Saldo")
                    .font(.subheadline)
                
                Text("Rp \(vm.currentBalance)")
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .frame(maxWidth: .infinity ,alignment: .leading)
                    .padding(.leading)
                    .padding(.vertical, 5)
                    .background(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 0.5))
            }
            
            VStack(alignment: .leading, spacing: 5) {
                Text("Nama Pemilik")
                    .font(.subheadline)
                
                Text("Michael Pradipta")
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .frame(maxWidth: .infinity ,alignment: .leading)
                    .padding(.leading)
                    .padding(.vertical, 5)
                    .background(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 0.5))
            }
        }
        .padding(.horizontal, 20)

    }
    
    private var buttonField: some View {
        VStack {
            Button(action: {
                withAnimation(.easeOut(duration: 1.0)) {
                    sheetInformation.toggle()
                }
            }, label: {
                Text("Detail Kartu")
                .font(.subheadline)
                .fontWeight(.medium)
                .foregroundStyle(Color.white)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 5)
                .background(Color.primaryColors)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.horizontal, 20)
                .padding(.top, 30)
            })
            
            Button(action: {
                
            }, label: {
                Text("Penarikan")
                .font(.subheadline)
                .fontWeight(.medium)
                .foregroundStyle(Color.white)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 5)
                .background(Color.black)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.horizontal, 20)
            })
        }
    }
    
    private var sheetDetails: some View {
        VStack(spacing: 10) {
            VStack(alignment: .leading, spacing: 5) {
                Text("Nama Bank")
                    .font(.subheadline)
                
                Text("Bank Central Asia (BCA)")
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .frame(maxWidth: .infinity ,alignment: .leading)
                    .padding(.leading)
                    .padding(.vertical, 5)
                    .background(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 0.5))
            }
            
            VStack(alignment: .leading, spacing: 5) {
                Text("Saldo")
                    .font(.subheadline)
                
                Text("Rp \(vm.currentBalance)")
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .frame(maxWidth: .infinity ,alignment: .leading)
                    .padding(.leading)
                    .padding(.vertical, 5)
                    .background(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 0.5))
            }
            
            VStack(alignment: .leading, spacing: 5) {
                Text("Nama Pemilik")
                    .font(.subheadline)
                
                Text("Michael Pradipta")
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .frame(maxWidth: .infinity ,alignment: .leading)
                    .padding(.leading)
                    .padding(.vertical, 5)
                    .background(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 0.5))
            }
            
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text("Masa Berlaku")
                        .font(.subheadline)
                    
                    Text("22/02/2026")
                        .font(.subheadline)
                        .fontWeight(.medium)
                        .frame(maxWidth: 190 ,alignment: .leading)
                        .padding(.leading)
                        .padding(.vertical, 5)
                        .background(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 0.5))
                }
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("CVC")
                        .font(.subheadline)
                    
                    Text("6336")
                        .font(.subheadline)
                        .fontWeight(.medium)
                        .frame(maxWidth: 190 ,alignment: .leading)
                        .padding(.leading)
                        .padding(.vertical, 5)
                        .background(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 0.5))
                }
            }
            
            VStack(alignment: .leading, spacing: 5) {
                Text("Saldo")
                    .font(.subheadline)
                
                Text("Rp \(vm.currentBalance)")
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .frame(maxWidth: .infinity ,alignment: .leading)
                    .padding(.leading)
                    .padding(.vertical, 5)
                    .background(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 0.5))
            }
            
            VStack(alignment: .leading, spacing: 5) {
                Text("Saldo Tertahan")
                    .font(.subheadline)
                
                Text("Rp 10.000")
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .frame(maxWidth: .infinity ,alignment: .leading)
                    .padding(.leading)
                    .padding(.vertical, 5)
                    .background(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 0.5))
            }
            
            VStack(alignment: .leading, spacing: 5) {
                Text("Kantor Pelayanan")
                    .font(.subheadline)
                
                Text("KCP Cempaka Putih, Jakarta")
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .frame(maxWidth: .infinity ,alignment: .leading)
                    .padding(.leading)
                    .padding(.vertical, 5)
                    .background(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 0.5))
            }
        }
            .padding(.horizontal, 20)
            .padding(.top, 20)
    }
    
}

#Preview {
    WalletInformationView()
        .environmentObject(WasteBankViewModel())
}

