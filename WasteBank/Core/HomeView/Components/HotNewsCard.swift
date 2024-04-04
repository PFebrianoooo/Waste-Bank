//
//  HotNewsCard.swift
//  WasteBank
//
//  Created by Putra Pebriano Nurba on 03/04/24.
//

import SwiftUI

struct HotNewsCard: View {
    let news: NewsDataModel
    var body: some View {
        HStack {
            AsyncImage(url: news.Image) { phaseImage in
                switch (phaseImage) {
                case .success(let imageSuccess):
                    imageSuccess
                        .resizable()
                        .scaledToFill()
                        .frame(width: 55, height: 55)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                case .failure(_):
                    Image.error404NotFound
                        .resizable()
                        .scaledToFill()
                        .frame(width: 55, height: 55)
                    
                default:
                    ProgressView()
                        .frame(width: 55, height: 55)
                }
            }
            
            VStack(alignment: .leading) {
                Text(news.cardTitle.capitalized)
                    .font(.system(size: 14))
                    .fontWeight(.medium)
                
                Text(news.informationCardTitle.capitalized)
                    .font(.caption)
                    .fontWeight(.regular)
            }
            .foregroundStyle(Color.black)
        }
    }
}

#Preview {
    HotNewsCard(news: NewsDataService.instance[0])
}

