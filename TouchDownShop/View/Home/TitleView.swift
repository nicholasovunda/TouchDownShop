//
//  TitleView.swift
//  TouchDownShop
//
//  Created by Nicholas on 21/06/2022.
//

import SwiftUI

struct TitleView: View {
    
    var title: String
      // MARK: - PROPERTY
    var body: some View {
          // MARK: - BODY
        HStack {
            Text(title)
                .font(.largeTitle)
            .fontWeight(.heavy)
        }//:HSTACK
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}
  // MARK: - PREVIEW
struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmets")
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
