//
//  StoreModel.swift
//  MVExampleSwiftUI
//
//  Created by Cliff Sharp on 3/21/23.
//

import Foundation

class StoreModel: ObservableObject {
  
  @Published var products: [Product] = []
  
  func populateProducts() async {
    
  }
}
