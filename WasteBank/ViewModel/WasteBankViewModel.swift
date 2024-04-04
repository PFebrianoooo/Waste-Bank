//
//  WasteBankViewModel.swift
//  WasteBank
//
//  Created by Putra Pebriano Nurba on 04/04/24.
//

import Foundation

class WasteBankViewModel: ObservableObject {
    // news data collections data
    @Published var filteredNewsData: [NewsDataModel] = []
    @Published var newsCollectionData: [NewsDataModel] = []
    
    // anorganic and organic collections data
    @Published var organicHistoryData: [OrganicHistoryDataModel] = [] { didSet { encodeData() }}
    @Published var anorganicHistoryData: [AnorganicHistoryDataModel] = [] { didSet { encodeData() }}
    
    // balanace and trash collection amount
    @Published var currentBalance: Int = 10000 { didSet { encodeData() }}
    @Published var amountTrash: Int = 0 { didSet { encodeData() }}
    
    // input textfield
    @Published var trashAmountInputOrganics: String = ""
    @Published var trashAmountInputAnorganics: String = ""
    @Published var searchInput: String = ""
    
    // Current Price of Organic and Anorganic Trash
    var organicCurrentPrice: Int = 10000
    var anorganicCurrentPrice: Int = 5000
    
    // animation search Field
    @Published var animateTextField: Bool = false
    
    
    // items key
    private let organicKey: String = "Organic_Data"
    private let anorganicKey: String = "Anorganic_Data"
    private let balanceKey: String = "Balance_Data"
    private let amountTrashKey: String = "Amount_Trash_Data"
    
    init() {
        fetchNewsData()
        fetchData()
    }
    
    func addOrganicChangeItems() {
        let amountInput = Int(trashAmountInputOrganics) ?? 0
        let calculateResult = amountInput * organicCurrentPrice
        let currentData = OrganicHistoryDataModel(amount: amountInput, result: calculateResult)
        
        organicHistoryData.append(currentData)
        currentBalance += calculateResult
        amountTrash += amountInput
        trashAmountInputOrganics = ""
    }
    
    func calculateOrganicValueInRupiahs() -> Int {
        let amountInput = Int(trashAmountInputOrganics) ?? 0
        let calculateToCurrentPrice = amountInput * organicCurrentPrice
        return calculateToCurrentPrice
    }
    
    func disableButton(input: String) -> Bool {
        if input.isEmpty {
            return true
        }else {
            return false
        }
    }
    
    func addAnorganicChangeItems() {
        let amountInput = Int(trashAmountInputAnorganics) ?? 0
        let calculateResult = amountInput * anorganicCurrentPrice
        let currentData = AnorganicHistoryDataModel(amount: amountInput, result: calculateResult)
        
        anorganicHistoryData.append(currentData)
        currentBalance += calculateResult
        amountTrash += amountInput
        trashAmountInputOrganics = ""
    }
    
    func calculateAnorganicValueInRupiah() -> Int {
        let amountInput = Int(trashAmountInputAnorganics) ?? 0
        let calculateToCureentPrice = amountInput * anorganicCurrentPrice
        return calculateToCureentPrice
    }
    
    
    // news View Model search items
    private func fetchNewsData() {
        DispatchQueue.global(qos: .default).async {
            let newsData = self.dataDownloads()
            print("Succesfully download data on \(Thread.current)")
                DispatchQueue.main.async { [weak self] in
                    self?.newsCollectionData = newsData
                    print("Succesfully fetch data on \(Thread.current)")
                }
        }
    }
    
    private func dataDownloads() -> [NewsDataModel] {
        let instanceData = NewsDataService.instance
        let getNewdata: [NewsDataModel] = instanceData
        return getNewdata
    }
    
    func searchNews() {
        let newsdata = self.newsCollectionData
        self.filteredNewsData = newsdata.filter({ news in
            return news.cardTitle.lowercased().contains(searchInput.lowercased())
        })
    }
    
    // encode & decode data
    private func encodeData() {
        if
            let encodeOrganic = try? JSONEncoder().encode(organicHistoryData),
            let encodeAnorganics = try? JSONEncoder().encode(anorganicHistoryData),
            let encodeBalance = try? JSONEncoder().encode(currentBalance),
            let encodeTrashAmount = try? JSONEncoder().encode(amountTrash)
        {
            UserDefaults.standard.setValue(encodeOrganic, forKey: organicKey)
            UserDefaults.standard.setValue(encodeAnorganics, forKey: anorganicKey)
            UserDefaults.standard.setValue(encodeBalance, forKey: balanceKey)
            UserDefaults.standard.setValue(encodeTrashAmount, forKey: amountTrashKey)
        }
    }
    
    private func fetchData() {
        guard
            let organicData = UserDefaults.standard.data(forKey: organicKey),
                let getOrganics = try? JSONDecoder().decode([OrganicHistoryDataModel].self, from: organicData),
            let anorganicData = UserDefaults.standard.data(forKey: anorganicKey),
                let getAnorganics = try? JSONDecoder().decode([AnorganicHistoryDataModel].self, from: anorganicData),
            let balanceData = UserDefaults.standard.data(forKey: balanceKey),
                let getBalance = try? JSONDecoder().decode(Int.self, from: balanceData),
            let trashData = UserDefaults.standard.data(forKey: amountTrashKey),
                let getTrash = try? JSONDecoder().decode(Int.self, from: trashData)
        else {return}
        
        self.organicHistoryData = getOrganics
        self.anorganicHistoryData = getAnorganics
        self.currentBalance = getBalance
        self.amountTrash = getTrash
    }
    
}
