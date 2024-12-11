//
//  Productcart.swift
//  CarShop
//
//  Created by GOPAL BHUVA on 04/06/24.
//

import SwiftUI

struct ProductCart: View {
    @EnvironmentObject var cartManager: CartManager
    
    var product: Product
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottomTrailing) {
                Image(product.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 180)
                    .scaledToFit()
                
                VStack(alignment: .leading) {
                    Text(product.name)
                        .bold()
                    
                    Text("\(product.price)$")
                        .font(.caption)
                }
                .frame(width: 180, alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(10)
            }
            .frame(width: 180, height: 210)
            .shadow(radius: 3)
            
            Button {
                cartManager.addToCart(product: product)
            } label: {
                Image(systemName: "plus")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.black)
                    .cornerRadius(50)
                    .padding()
            }
        }
    }
}


struct ProductCart_Previews: PreviewProvider {
    static var previews: some View {
        ProductCart( product: productList[0])
            .environmentObject(CartManager())
           
    }
}

