//
//  OrganicHistoryDataModel.swift
//  WasteBank
//
//  Created by Putra Pebriano Nurba on 04/04/24.
//

import Foundation

struct OrganicHistoryDataModel: Identifiable, Codable {
    let id: String
    let amount: Int
    let result: Int
    
    init(id: String = UUID().uuidString, amount: Int, result: Int) {
        self.id = UUID().uuidString
        self.amount = amount
        self.result = result
    }
}
