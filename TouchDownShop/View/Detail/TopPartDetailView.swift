//
//  TopPartDetailView.swift
//  TouchDownShop
//
//  Created by Nicholas on 21/06/2022.
//

import SwiftUI

struct TopPartDetailView: View {
    @EnvironmentObject var shop: Shop
    @State private var isAnimating: Bool = false
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            // PRICE
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Price")
                .fontWeight(.semibold)
                
                Text(shop.selectedProducts?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            })
            .offset(y: isAnimating ? -50 : -70)
            
            Spacer()
            
            // PHOTO
            Image(shop.selectedProducts?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
        })//: HSTACK
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        })
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
