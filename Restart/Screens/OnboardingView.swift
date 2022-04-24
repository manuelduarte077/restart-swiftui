//
//  OnboaardingView.swift
//  Restart
//
//  Created by Manuel Duarte on 23/4/22.
//  https://github.com/manuelduarte077/


import SwiftUI

struct OnboaardingView: View {
  //MARK: - Property
  
  @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
  
  //MARK: - BODY
  
    var body: some View {
      ZStack {
        Color("ColorBlue")
          .ignoresSafeArea(.all, edges: .all)
        
        VStack (spacing: 20){
          
          // MARK: - Header
          
          Spacer()
          
          VStack(spacing: 0){
                
            Text("Share.")
              .font(.system(size: 60))
              .fontWeight(.heavy)
              .foregroundColor(.white)
            
            Text("""
              It's not how much we give but
              how much love we put into giving.
              """)
            .font(.title3)
            .fontWeight(.light)
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
            .padding(.horizontal, 10)
            
          } //: HEADER
          
          // MARK: - Center
          
          
          // MARK: - Footer
          
          
        } //: VSTACK
      } //: ZSTACK
    }
}

struct OnboaardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboaardingView()
    }
}
 
