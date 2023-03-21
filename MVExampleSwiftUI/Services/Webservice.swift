//
//  Webservice.swift
//  MVExampleSwiftUI
//
//  Created by Cliff Sharp on 3/21/23.
//

import Foundation

enum NetworkError: Error {
  case badURL
  case badRequest
}

class Webservice {
  
  func getProducts() async throws -> [Product] {
    
    guard let url = URL(string: "https://api.escuelajs.co/api/v1/products") else {
      throw NetworkError.badURL
    }
    
    let (data, response) = try await URLSession.shared.data(from: url)
    
    guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
      throw NetworkError.badRequest
    }
    
    let products = try JSONDecoder().decode([Product].self, from: data)
    return products
  }
}
