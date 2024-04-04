//
//  TrashConversionOrganicsDetails.swift
//  WasteBank
//
//  Created by Putra Pebriano Nurba on 31/03/24.
//

import SwiftUI

struct TrashConversionOrganicsDetails: View {
    
    @EnvironmentObject var vm: WasteBankViewModel
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ScrollView(.vertical) {

            wasteBankInformations
            
            inputAndButton
        }
        .frame(maxWidth: UIScreen.main.bounds.width)
        .overlay(alignment: .top) {
            Header(nameHeader: "Tukar Sampah Organik")
        }
        .navigationBarBackButtonHidden(true)
        .scrollIndicators(.hidden)
    }
    
    private var wasteBankInformations: some View {
        VStack(alignment: .leading) {
            Text("Alamat Bank Sampah")
                .font(.subheadline)
                .fontWeight(.semibold)
                .padding(.all, 10)
            
            Divider()
            
            Text("Jl. Rawasari Sel. No.35, RT.16/RW.2, Cemp. Putih Tim., Kec. Cemp. Putih, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10510")
                .font(.system(size: 14))
                .padding(.all, 10)
                .padding(.bottom, 10)
            
        }
        .overlay {
            RoundedRectangle(cornerRadius: 10)
                .stroke(lineWidth: 0.5)
        }
        .padding(.top, 50)
        .padding(.horizontal, 20)

    }
    
    private var inputAndButton: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Rincian Penukaran Sampah")
                .font(.subheadline)
                .fontWeight(.semibold)
            
            TextField(text: $vm.trashAmountInputOrganics) {
                Text("Jumlah Sampah Dalam Kilogram")
                    .font(.subheadline)
                    .fontWeight(.medium)
            }
            .padding(.leading)
            .padding(.vertical, 5)
            .overlay {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 0.5)
            }
            .overlay(alignment: .trailing) {
                if !vm.trashAmountInputOrganics.isEmpty {
                    Text("Kg")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .padding(.trailing)
                }
            }
            
            Text("Hasil Kalkulasi Menjadi Uang")
                .font(.subheadline)
                .fontWeight(.semibold)
            
            Text("RP \(vm.calculateOrganicValueInRupiahs())")
                .font(.subheadline)
                .fontWeight(.medium)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 5)
                .background(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 0.5))
            
            Button {
                vm.addOrganicChangeItems()
                dismiss()
                
            }label: {
                Text("Tukar Sekarang")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 5)

            }
            .background(
                Color.green
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            )
            .disabled(vm.disableButton(input: vm.trashAmountInputOrganics))
            .opacity(vm.disableButton(input: vm.trashAmountInputOrganics) ? 0.5 : 1.0)

            
        }
        .padding(.horizontal, 20)
        .padding(.top, 10)

    }
}

#Preview {
    TrashConversionOrganicsDetails()
        .environmentObject(WasteBankViewModel())
}

