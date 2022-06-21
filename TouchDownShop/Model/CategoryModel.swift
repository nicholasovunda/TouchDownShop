//
//  CategoryModel.swift
//  TouchDownShop
//
//  Created by Nicholas on 21/06/2022.
//

import Foundation

struct Category: Codable, Identifiable{
    let id: Int
    let name: String
    let image: String
}

