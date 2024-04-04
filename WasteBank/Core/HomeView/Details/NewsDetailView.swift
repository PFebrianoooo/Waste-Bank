//
//  NewsDetailView.swift
//  WasteBank
//
//  Created by Putra Pebriano Nurba on 03/04/24.
//

import SwiftUI

struct NewsDetailView: View {
    
    let news: NewsDataModel
    
    var body: some View {
        ScrollView(.vertical) {
            
            newsArticlesDetails
            
        }
        .frame(maxWidth: UIScreen.main.bounds.width)
        .overlay(alignment: .top) {
            Header(nameHeader: "Berita Terkini")
        }
        .navigationBarBackButtonHidden(true)
    }
    
    private var newsArticlesDetails: some View {
        VStack(spacing: 20) {
            Text(news.title.capitalized)
                .frame(alignment: .leading)
                .font(.title3)
                .fontWeight(.semibold)
                .multilineTextAlignment(.leading)
                .foregroundStyle(Color.black)
                .padding(.horizontal, 20)
                .padding(.top, 50)
                
            
        AsyncImage(url: news.Image) { phaseImage in
            switch (phaseImage) {
            case .success(let imageSuccess):
                imageSuccess
                    .resizable()
                    .scaledToFill()
                    .frame(width: 350, height: 150)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    
            case .failure(_):
                Image.error404NotFound
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350, height: 150)
                    
            default:
                ProgressView()
                    .frame(width: 350, height: 150)
                    
                }
            }
            
            Text(news.contents)
                .font(.subheadline)
                .fontWeight(.regular)
                .foregroundStyle(Color.black)
                .padding(.horizontal, 20)
        }
    }
}

#Preview {
    NewsDetailView(news: NewsDataService.instance[4])
}

