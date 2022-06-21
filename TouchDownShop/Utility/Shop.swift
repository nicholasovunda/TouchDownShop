//
//  Shop.swift
//  TouchDownShop
//
//  Created by Nicholas on 21/06/2022.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProducts: Bool = false
    @Published var selectedProducts: Product? = nil

}
