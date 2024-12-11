//
//  ContentView.swift
//  CarShop
//
//  Created by GOPAL BHUVA on 04/06/24.
//

import SwiftUI


struct ContentView: View {
    @State private var showAlert = false
    
    @StateObject var cartManager = CartManager()
    
    var columns = [GridItem(.adaptive(minimum: 160),spacing: 20) ]
    
    var body: some View {
       
        NavigationView {
            ScrollView {
               
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(productList, id: \.id) { product  in
                        ProductCart( product: product)
                            .environmentObject(cartManager)
                            
                    }
                }
                .padding(.vertical, 5)
            }
            
            .navigationTitle("Car Shop")
          
            .toolbar {
                NavigationLink {
                    CartView()
                        .environmentObject(cartManager)
                }label: {
                    CartButton(numberOfProduct: cartManager.products.count)
                }
               
            }
        }
       
    }
}
       

#Preview {
    ContentView()
}
