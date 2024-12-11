//
//  CartView.swift
//  CarShop
//
//  Created by GOPAL BHUVA on 05/06/24.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        ScrollView {
            if cartManager.products.count > 0 {
                ForEach(cartManager.products, id: \.id) { product in
                    ProductRow(product: product)
                }
                
                HStack {
                    Text("Your cart total is:")
                    Spacer()
                    Text("$\(cartManager.total)")
                }
                
                .padding()
                
                paymentButton(action: {})
                    .padding()
                
            }else {
                Text("Your cart is empty!....")
            }
            
        }
        .navigationTitle("My cart")
        .padding(.top)
    }
}

#Preview {
    CartView()
        .environmentObject(CartManager())
}
