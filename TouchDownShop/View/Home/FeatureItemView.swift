//
//  FeatureItemView.swift
//  TouchDownShop
//
//  Created by Nicholas on 21/06/2022.
//

import SwiftUI

struct FeatureItemView: View {
      // MARK: - PROPERTIES
    let player: Player
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
          // MARK: - BODY
       
    }
}
  // MARK: - PREVIEW
struct FeatureItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeatureItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
