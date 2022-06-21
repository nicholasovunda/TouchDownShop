//
//  ContentView.swift
//  TouchDownShop
//
//  Created by Nicholas on 20/06/2022.
//

import SwiftUI

struct ContentView: View {
     // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    
      // MARK: - BODY
//    func getSafeTopArea() -> CGFloat{
//        let keyWindow = UIApplication.shared.connectedScenes
//            .filter({$0.activationState == .foregroundActive})
//            .map({$0 as? UIWindowScene})
//            .compactMap({0})
//            .first?.windows
//            .filter({$0.isKeyWindow}).first
//
//        return keyWindow?.safeAreaInsets.top ?? 0
//
//    }
    var body: some View {
   
        ZStack {
            if shop.showingProducts  == false && shop.selectedProducts == nil {
                VStack (spacing: 0){
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack(spacing: 0){
                            FeaturedTabView()
                                .padding(.vertical, 20)
                                .frame(height: 240)
                            
                            CategoryGridView()
                            
                            TitleView(title: "Helmets")
                            
                            LazyVGrid(columns: gridLayout, spacing: 15, content: {
                                ForEach(products){
                                    product in ProductItemView(product: product)
                                        .onTapGesture {
                                            feedback.impactOccurred()
                                            withAnimation(.easeOut){
                                                shop.selectedProducts = product
                                                shop.showingProducts = true
                                            }
                                        }
                                } //: LOOP
                            })//: GRID
                            .padding(15)
                            
                            TitleView(title: "Brands")
                            
                            
                            BrandGridView()
                            
                            FooterView()
                                .padding(.horizontal)
                        } //: VSTACK
                    }) //: SCROLL
                    
                 
                }//:VSTACK
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        } //:ZSTACK
        .ignoresSafeArea(.all, edges: .top)
    }
}
  // MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro")
            .environmentObject(Shop())
    }
}
