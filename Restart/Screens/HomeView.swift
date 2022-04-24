//
//  HomeView.swift
//  Restart
//
//  Created by Manuel Duarte on 23/4/22.
//

import SwiftUI

struct HomeView: View {
  
  //MARK: PROPERTY
  
  @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
  
  // MARK: Body

    var body: some View {
      VStack {
        Text("Home")
          .font(.largeTitle)
        
        Button(action:  {
          // Some Action
          isOnboardingViewActive = true
        }){
          Text("Restart")
        }
        
      } //: VSTACK
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
