//
//  SectionView.swift
//  TouchDownShop
//
//  Created by Nicholas on 21/06/2022.
//

import SwiftUI

struct SectionView: View {
      // MARK: - PROPERTY
    @State var rotateClockwise: Bool
    var body: some View {
      // MARK: - BODY
        VStack(spacing: 0){
            Spacer()
            Text("Categories".uppercased())
                .fontWeight(.bold)
                .font(.footnote)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            
            Spacer()
            
    } //: VSTACK
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}
  // MARK: - PREVIEW
struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockwise: true )
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackground)
    }
}
