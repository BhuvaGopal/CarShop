//
//  CartButton.swift
//  CarShop
//
//  Created by GOPAL BHUVA on 05/06/24.
//

import SwiftUI

struct CartButton: View {
    var numberOfProduct: Int
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(systemName: "cart")
                .padding(.top, 5)
            
            if numberOfProduct > 0 {
                Text("\(numberOfProduct)")
                    .font(.caption).bold()
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(Color(.blue))
                    .cornerRadius(50)
            }
        }
    }
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton(numberOfProduct: 2)
    }
}
