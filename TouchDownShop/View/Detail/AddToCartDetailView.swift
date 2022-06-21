//
//  AddToCartDetailView.swift
//  TouchDownShop
//
//  Created by Nicholas on 21/06/2022.
//

import SwiftUI

struct AddToCartDetailView: View {
    @EnvironmentObject var shop: Shop
      // MARK: - PROPERTY
    var body: some View {
          // MARK: - BODY
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        })//: BUTTON
        .padding(15)
        .background(
            Color(red: shop.selectedProducts?.red ?? sampleProduct.red, green: shop.selectedProducts?.green ?? sampleProduct.green, blue: shop.selectedProducts?.blue ?? sampleProduct.blue)
        )
        .clipShape(Capsule())
    }
}
  // MARK: - PREVIEW
struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
