//
//  HomeView.swift
//  WasteBank
//
//  Created by Putra Pebriano Nurba on 28/03/24.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var vm: WasteBankViewModel
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ScrollView(.vertical) {
            Advertisement()
            
            changeYourWaste
            
            trashClassifications
            
            educateYourself
        }
        .overlay(alignment: .top) { headerSearchbar }
        
        // scroll settings
        .scrollIndicators(.hidden)
    }
    
    private var changeYourWaste: some View  {
        VStack(spacing: 10) {
            HStack {
                Text("Tukar Sampahmu")
                    .font(.headline)
                    .fontWeight(.medium)
                    .padding(.leading)
                
                Spacer()
            }
            
            
            HStack {
                NavigationLink {
                    TrashConversionOrganicsDetails()
                } label: {
                    WasteConversionCard(imageCard: .changeWasteCoverOrganics, trashInfo: "Organik", price: vm.organicCurrentPrice)
                }
                
                Spacer()
                
                NavigationLink {
                    TrashConversionAnorganicsDetails()
                } label: {
                    WasteConversionCard(imageCard: .changeWasteCoverAnrganics, trashInfo: "Anorganik", price: vm.anorganicCurrentPrice)
                }
            }
            .padding(.horizontal)
        }
    }
    
    private var trashClassifications: some View {
        VStack(spacing: 10) {
            HStack {
                Text("Klasifikasi Sampah")
                    .font(.headline)
                    .fontWeight(.medium)
                    .padding(.leading)
                
                Spacer()
            }
            
            VStack(spacing: 0) {
                NavigationLink {
                    OrganicTrashClassificationView()
                } label: {
                    TrashClassificationCard(cardImage: .trashClassificationOrganics, title: "Sampah Organik")
                }
                
                NavigationLink {
                    AnorganicTrashClassificationView()
                } label: {
                    TrashClassificationCard(cardImage: .trashClassificationAnorganics, title: "Sampah Anorganik")
                }
            }
        }
    }
    
    private var educateYourself: some View {
        HStack(spacing: 10) {
            ZStack {
                Image.postersEducate
                    .resizable()
                    .scaledToFill()
                    .frame(width: 175, height: 220)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .overlay(alignment: .leading) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(lineWidth: 0.5)
                            
                            VStack(alignment: .leading, spacing: 0) {
                                Text("Edukasi")
                                    .font(.subheadline)
                                    .fontWeight(.bold)
                                Text("Dirimu")
                                    .font(.title2)
                                    .fontWeight(.bold)
                            }
                            .foregroundStyle(Color.white)
                            .shadow(radius: 15)
                        }
                    }
            }
            .padding(.leading)
            .padding(.top, 10)
            
            VStack {
                NavigationLink {
                    StudentEducateView()
                } label: {
                    EducateYourselfCard(image: .forsStudentEducate, nameInfo: "Untuk Anak")
                }
                
                Spacer()
                
                NavigationLink {
                    ParentEducateView()
                } label: {
                    EducateYourselfCard(image: .forParentEducate, nameInfo: "Untuk Orang Tua")
                }

            }
            .padding(.trailing)
            .padding(.top, 10)
        }
    }
    
    private var headerSearchbar: some View {
            VStack(spacing: 0) {
                // textfield and header animations
                HStack (spacing: 0) {
                    if vm.animateTextField {
                        Image(systemName: "chevron.left")
                            .imageScale(.medium)
                            .padding(.leading)
                            .transition(.opacity)
                            .onTapGesture {
                                vm.animateTextField = false
                                vm.searchInput = ""
                            }
                    }
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(lineWidth: 0.5)
                        
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .imageScale(.medium)
                                .padding(.leading, 5)
                            
                            
                            TextField("cari berita disini".capitalized, text: $vm.searchInput)
                                .font(.footnote)
                                .fontWeight(.medium)
                                .overlay(alignment: .trailing) {
                                    if vm.searchInput.count > 3 {
                                        Image(systemName: "xmark")
                                            .imageScale(.small)
                                            .fontWeight(.bold)
                                            .foregroundStyle(Color.black)
                                            .padding(.trailing, 5)
                                            .onTapGesture {
                                                vm.searchInput = ""
                                            }
                                    }
                                }
                        }
                    }
                    .frame(maxWidth: vm.animateTextField ? .infinity : 250 )
                    .frame(height: 35)
                    .padding(.horizontal)
                    .onTapGesture {
                        withAnimation(.spring()) {
                            vm.animateTextField = true
                        }
                    }
                    .submitLabel(.search)
                    .onSubmit {
                        withAnimation(.easeInOut) {
                            vm.searchNews()
                        }
                        dismiss()
                    }
                    
                    if !vm.animateTextField {
                        HStack {
                            NavigationLink {
                                NotificationView()
                            } label: {
                                Image(systemName: "bell")
                                    .imageScale(.large)
                                    .foregroundStyle(Color.black)
                            }

                            NavigationLink {
                                WalletInformationView()
                            } label: {
                                Image(systemName: "wallet.pass")
                                    .imageScale(.large)
                                    .foregroundStyle(Color.black)
                            }

                            NavigationLink {
                                ProfileView()
                            } label: {
                                Image(systemName: "person.fill")
                                    .imageScale(.large)
                                    .foregroundStyle(Color.black)
                            }
                        }
                        .padding(.trailing, 20)
                        .transition(.move(edge: .trailing))
                    }
                }
                .padding(.bottom, 10)
                .background(.regularMaterial)
                
                // Hot news thumbnail and search actions
                if vm.animateTextField {
                    ScrollView(.vertical) {
                        if vm.searchInput.isEmpty {
                            VStack(alignment: .leading) {
                                Text("Hot News")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .padding(.top, 25)
                                
                                VStack(alignment: .leading, spacing: 10) {
                                    ForEach(vm.newsCollectionData) { items in
                                        NavigationLink {
                                            NewsDetailView(news: items)
                                        } label: {
                                            HotNewsCard(news: items)
                                        }
                                    }
                                }
                            }
                        } else {
                            VStack(alignment: .leading) {
                                HStack {
                                    Text("Menampilkan Hasil Pencarian")
                                        .font(.subheadline)
                                        .fontWeight(.semibold)
                                        .padding(.top, 25)
                                    
                                    Spacer()
                                }
                                
                                VStack(alignment: .leading, spacing: 10) {
                                    ForEach(vm.filteredNewsData) { items in
                                        NavigationLink {
                                            NewsDetailView(news: items)
                                        } label: {
                                            HotNewsCard(news: items)
                                        }
                                    }
                                    .transition(.identity)
                                }
                            }
                        }
                    }
                    .padding(.horizontal, 10)
                    .frame(maxWidth: .infinity)
                    .frame(maxHeight: .infinity)
                    .background(Color.white)
                }
                
            }
            .frame(maxWidth: UIScreen.main.bounds.width)
    }
}

#Preview {
    NavigationView {
        HomeView()
    }
    .environmentObject(WasteBankViewModel())
}

