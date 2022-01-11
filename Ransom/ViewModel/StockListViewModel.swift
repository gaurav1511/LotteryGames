//
//  StockListViewModel.swift
//  Ransom
//
//  Created by Gaurav Singh on 11/01/22.
//

import Foundation

class StockListViewModel: ObservableObject{
    
    //@Published var searchTerm: String = ""
    @Published var stocks = [StockViewModel]()
    
    func load(){
        fetchStocks()
    }
    
    private func fetchStocks(){
        
        Webservice().getStocks { stocks in
            
            if let stocks = stocks{
                debugPrint("Stock List \(self.stocks)")
                DispatchQueue.main.async {
                    self.stocks = stocks.map(StockViewModel.init)
                    
                }
                
               
            }
            
        }
    }
    
}
