//
//  HelpCard.swift
//  WasteBank
//
//  Created by Putra Pebriano Nurba on 30/03/24.
//

import SwiftUI

struct HelpCard: View {
    
    let iconName: String
    let title: String
    
    var body: some View {
        HStack {
            HStack {
                Image(systemName: iconName)
                    .imageScale(.large)
                    .foregroundStyle(Color.black)
                
                Text(title)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.black)
            }
            .padding(.leading, 20)
            .padding(.vertical, 12)
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .imageScale(.medium)
                .padding(.trailing, 20)
                .foregroundStyle(Color.black)
                .padding(.vertical, 12)
        }
        .overlay {
            Rectangle()
                .stroke(lineWidth: 0.5)
                .fill(Color.black)
        }

    }
}

#Preview {
    HelpCard(iconName: "questionmark.circle", title: "FAQ")
}

