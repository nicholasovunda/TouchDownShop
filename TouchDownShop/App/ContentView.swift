//
//  ContentView.swift
//  TouchDownShop
//
//  Created by Nicholas on 20/06/2022.
//

import SwiftUI

struct ContentView: View {
     // MARK: - PROPERTIES
    
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
            VStack (spacing: 0){
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                Spacer()
                FooterView()
                    .padding(.horizontal)
            }//:VSTACK
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        } //:ZSTACK
        .ignoresSafeArea(.all, edges: .top)
    }
}
  // MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
