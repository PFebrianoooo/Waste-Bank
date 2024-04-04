//
//  EducateYourselfCard.swift
//  WasteBank
//
//  Created by Putra Pebriano Nurba on 29/03/24.
//

import SwiftUI

struct EducateYourselfCard: View {
    
    let image: Image
    let nameInfo: String
    
    var body: some View {
            image
                .resizable()
                .scaledToFill()
                .frame(width: 175, height: 105)
                .overlay {
                    ZStack(alignment: .bottomTrailing) {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 0.5)
                        VStack {
                            Text(nameInfo.capitalized)
                                .font(.caption2)
                                .fontWeight(.semibold)
                                .foregroundStyle(Color.white)
                        }
                        .padding(.horizontal, 5)
                        .padding(.vertical, 2)
                        .background(
                            Color.green
                                .clipShape(Capsule())
                        )
                        .padding(.bottom, 5)
                        .padding(.trailing, 5)
                    }
                }
                .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    EducateYourselfCard(image: .forsStudentEducate, nameInfo: "For Student")
}

