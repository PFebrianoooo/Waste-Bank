//
//  AnorganicHistoryDataModel.swift
//  WasteBank
//
//  Created by Putra Pebriano Nurba on 04/04/24.
//

import Foundation

struct AnorganicHistoryDataModel: Identifiable, Codable {
    let id: String
    let amount: Int
    let result: Int
    
    init(id: String = UUID().uuidString ,amount: Int, result: Int) {
        self.id = id
        self.amount = amount
        self.result = result
    }
}
