//
//  paymentView.swift
//  CarShop
//
//  Created by GOPAL BHUVA on 07/06/24.
//

import SwiftUI

struct paymentView: View {
    @State private var showDismissView = false
    @State private var showAlert = false
    @State private var cardUser = ""
    @State private var cardNumber = ""
    @Environment(\.dismiss) var presentationMode
    
    var body: some View {
        NavigationView {
            ScrollView {
                HStack {
                    Image("payment")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(minWidth: 1, maxWidth: .infinity)
                        .padding(.horizontal)
                    Spacer()
                }
                
                VStack {
                    TextField("Enter your name", text: $cardUser)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                        .keyboardType(.default)
                    
                    SecureField("Enter your card Number", text: $cardNumber)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                        .keyboardType(.default)
                    
                        
                }
                .padding()
                
                Button(action: {
                    showAlert = true
                }) {
                    Text("PAY")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 352, height: 44)
                        .background(Color.black)
                        .cornerRadius(25)
                }
                .alert(isPresented: $showAlert) {
                    Alert(title: Text("Your order is reached to your destination"), message: Text("That is alert of your payment"), dismissButton: .default(Text("Ok")))
                    
               
                }
                
            
                
                Button {
                 presentationMode()
                }label: {
                    Text("Dismiss payment")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 352, height: 44)
                        .background(Color.black)
                        .cornerRadius(25)
                }
    
                }
            .navigationTitle("Payment View")
            }
        
       
            
        }
    }


struct PaymentView_Previews: PreviewProvider {
    static var previews: some View {
        paymentView()
    }
}

