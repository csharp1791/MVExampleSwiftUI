//
//  Product.swift
//  MVExampleSwiftUI
//
//  Created by Cliff Sharp on 3/21/23.
//

import Foundation

struct Product: Decodable, Identifiable {
  let id: Int
  let title: String
  let price: Double
}
