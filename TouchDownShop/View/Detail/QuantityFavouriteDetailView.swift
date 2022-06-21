//
//  QuantityFavouriteDetailView.swift
//  TouchDownShop
//
//  Created by Nicholas on 21/06/2022.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
      // MARK: - PROPERTY
    
    @State private var counter: Int = 0
    
    var body: some View {
          // MARK: - BODY
        HStack(alignment: .center, spacing: 6, content: {
            Button(action: {
                if counter > 0 {
                    counter -= 1
                }
            }, label: {
                Image(systemName: "minus.circle")
            })
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button(action: {
                if counter < 100 {
                    counter += 1
                }
            }, label: {
                Image(systemName: "plus.circle")
            })
            Spacer()
            Button(action: {}, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            })
        })//:HSTACK
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}
  // MARK: - PREVIEW
struct QuantityFavouriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
