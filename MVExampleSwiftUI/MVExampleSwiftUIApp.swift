//
//  MVExampleSwiftUIApp.swift
//  MVExampleSwiftUI
//
//  Created by Cliff Sharp on 3/21/23.
//

import SwiftUI

@main
struct MVExampleSwiftUIApp: App {
  
  @StateObject private var storeModel = StoreModel(webservice: Webservice())  // dependency injection
  
  var body: some Scene {
    WindowGroup {
      ContentView().environmentObject(storeModel)
    }
  }
}
