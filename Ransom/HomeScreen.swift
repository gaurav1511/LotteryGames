

import SwiftUI

struct HomeScreen: View {
    
    @ObservedObject private var stockListViewModel = StockListViewModel()
    
    init(){
        
        stockListViewModel.load()
    }
    
    var body: some View {
        Text("Hello SwiftUI \(stockListViewModel.stocks.count)")
            .font(.title)
            .foregroundColor(.green)
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
