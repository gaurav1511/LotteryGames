

import SwiftUI

struct HomeScreen: View {
    
    @ObservedObject private var stockListViewModel = StockListViewModel()
    
    init(){
        UINavigationBar.appearance().backgroundColor = UIColor.black
        UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UITableView.appearance().backgroundColor = UIColor.black
        UITableViewCell.appearance().backgroundColor = UIColor.black
        stockListViewModel.load()
    }
    
    var body: some View {
        
        return NavigationView {
            ZStack(alignment: .leading){
                Color.black
//                SearchView(searchTerm: self.stockListViewModel.searchTerm)
//                    .offset(y: -350)
                
                StockListView(stocks: stockListViewModel.stocks)
                    .offset(y: 150)
            }
            .navigationBarTitle("Stocks")
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
