//
//  NavigationBarDetailView.swift
//  TouchDownShop
//
//  Created by Nicholas on 21/06/2022.
//

import SwiftUI

struct NavigationBarDetailView: View {
      // MARK: - PROPERTY
    @EnvironmentObject var shop: Shop
    
    var body: some View {
          // MARK: - BODY
        HStack{
            Button(action: {
                withAnimation(.easeIn){
                    feedback.impactOccurred()
                    shop.selectedProducts = nil
                    shop.showingProducts = false
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            })
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "cart") 
                    .font(.title)
                    .foregroundColor(.white)
            })
        }//: HSTACK
        
    }
}
  // MARK: - PREVIEW
struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
        
    }
}
