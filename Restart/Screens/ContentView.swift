//
//  ContentView.swift
//  Restart
//
//  Created by Manuel Duarte on 23/4/22.
//

import SwiftUI

struct ContentView: View {

  @AppStorage("onboarding") var isOboardingViewActive: Bool = true
  
  var body: some View {
    ZStack {
      if isOboardingViewActive {
        OnboaardingView()
      }else{
        HomeView()
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .previewDevice("iPhone13")
  }
}
