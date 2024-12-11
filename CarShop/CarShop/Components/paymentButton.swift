//
//  paymentButton.swift
//  CarShop
//
//  Created by GOPAL BHUVA on 06/06/24.
//

import SwiftUI
import PassKit

struct paymentButton: View {
    var action: () -> Void
    
    var body: some View {
        NavigationLink {
            paymentView()
        }label: {
            Representable(action: action)
                 .frame(minWidth: 100, maxWidth: 400)
                 .frame(height: 45)
                 .frame(maxWidth: .infinity)
        }
      
    }
}

#Preview {
    paymentButton(action: {})
}

extension paymentButton {
    struct Representable: UIViewRepresentable {
        
        var action: () -> Void
        
        func makeCoordinator() -> Coordinator {
            Coordinator(action: action)
        }
        
        func makeUIView(context: Context) -> some UIView {
            context.coordinator.button
        }
        
        func updateUIView(_ uiView: UIViewType, context: Context) {
            context.coordinator.action = action
        }
        
    }
    
    class Coordinator: NSObject {
        var action: () -> Void
        
        var button = PKPaymentButton(paymentButtonType: .book ,paymentButtonStyle: .automatic)
        
        init(action: @escaping () -> Void) {
            self.action = action
            super.init()
            
            button.addTarget(self, action: #selector(callback(_:)), for: .touchUpInside)
        }
        @objc
        func callback(_ sender: Any) {
            action()
        }
    }
    
}

