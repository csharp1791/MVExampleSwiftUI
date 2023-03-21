//
//  StoreModel.swift
//  MVExampleSwiftUI
//
//  Created by Cliff Sharp on 3/21/23.
//

import Foundation

@MainActor      // products has to be accessed on the main thread
class StoreModel: ObservableObject {
  
  let webservice: Webservice
  
  @Published var products: [Product] = []
  
  init(webservice: Webservice) {    // Dependency - need to pass in the Webservice
    self.webservice = webservice
  }
  
  func populateProducts() async throws {
    
    do {
      products = try await webservice.getProducts()

    } catch {
      print(error.localizedDescription)
    }
  }
}
