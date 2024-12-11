//
//  ProductRow.swift
//  CarShop
//
//  Created by GOPAL BHUVA on 05/06/24.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    
    var body: some View {
        HStack(spacing: 20) {
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(product.name)
                    .bold()
                
                Text("\(product.price)$")
                    .font(.caption)
            }
            Spacer()
            
            Image(systemName: "trash")
                .foregroundColor(.blue)
            
                .onTapGesture {
                    cartManager.removeFromCart(product: product)
                }
            
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
        
       
    }
}


struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: productList[0])
            .environmentObject(CartManager())
    }
}
