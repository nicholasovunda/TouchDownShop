//
//  ProductDetailView.swift
//  TouchDownShop
//
//  Created by Nicholas on 21/06/2022.
//

import SwiftUI

struct ProductDetailView: View { 
      // MARK: - PROPERTY
    
    var body: some View {
          // MARK: - BODY
        VStack(alignment: .leading, spacing: 5, content:{
           
            // NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            // HEADER
            HeaderDetailView()
                .padding(.horizontal)
            // DETAIL TOP PART
            TopPartDetailView()
                .padding(.horizontal)
            // DETAIL BOTTOM PART
            
        
            // RATINGS + SIZES
            // DESCRIPTION
            // QUANTITY + FAVOURITE
            // ADD TO CART
            Spacer()
        })//: VSTACK
        .ignoresSafeArea(.all, edges: .all)
        .background(
        Color(
            red: sampleProduct.red,
            green: sampleProduct.green,
            blue: sampleProduct.blue
        )
        ).ignoresSafeArea(.all, edges: .all)
    }
}
  // MARK: - PREVIEW
struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
