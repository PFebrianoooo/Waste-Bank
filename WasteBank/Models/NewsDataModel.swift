//
//  NewsDataModel.swift
//  WasteBank
//
//  Created by Putra Pebriano Nurba on 04/04/24.
//

import Foundation

struct NewsDataModel: Identifiable {
    let id: String = UUID().uuidString
    let cardTitle: String
    let informationCardTitle: String
    let title: String
    let Image: URL?
    let contents: String
}
