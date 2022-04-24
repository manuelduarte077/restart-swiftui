//
//  OnboaardingView.swift
//  Restart
//
//  Created by Manuel Duarte on 23/4/22.
//

import SwiftUI

struct OnboaardingView: View {
  //MARK: - Property
  
  @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
  
  //MARK: - BODY
  
    var body: some View {
      VStack (spacing: 20){
        Text("Onboarding")
          .font(.largeTitle) 
      
        Button(action: {
          // Some Action
          isOnboardingViewActive = false
        }) {
          Text("Start")
        }
      }
    }
}

struct OnboaardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboaardingView()
    }
}
 
