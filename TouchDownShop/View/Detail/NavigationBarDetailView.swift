//
//  NavigationBarDetailView.swift
//  TouchDownShop
//
//  Created by Nicholas on 21/06/2022.
//

import SwiftUI

struct NavigationBarDetailView: View {
      // MARK: - PROPERTY
    
    var body: some View {
          // MARK: - BODY
        HStack{
            Button(action: {}, label: {
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
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
