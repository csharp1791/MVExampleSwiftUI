//
//  ContentView.swift
//  MVExampleSwiftUI
//
//  Created by Cliff Sharp on 3/21/23.
//

import SwiftUI

struct ContentView: View {
  
  @EnvironmentObject private var storeModel: StoreModel
  
  private func populateProducts() async {
    do {
      try await storeModel.populateProducts()
    } catch {
      print(error.localizedDescription)
    }
  }
  
  var body: some View {
    VStack {
      List(storeModel.products) { product in
        Text(product.title)
      }
    }.task {
      await populateProducts()
    }
    .padding()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView().environmentObject(StoreModel(webservice: Webservice()))
  }
}
