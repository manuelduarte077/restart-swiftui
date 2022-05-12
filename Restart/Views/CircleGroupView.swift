//
//  CircleGroupView\.swift
//  Restart
//
//  Created by Manuel Duarte on 24/4/22.
//

import SwiftUI

struct CircleGroupView: View {
  
  // MARK: - PROPERTY
  
  @State var ShapeColor: Color
  @State var ShapeOpacity: Double
  @State private var isAnnimating: Bool = false

  // MARK: - BODY

  var body: some View {
    ZStack {
      Circle()
        .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 40)
        .frame(width: 260, height: 260, alignment: .center)
      Circle()
        .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 80)
        .frame(width: 260, height: 260, alignment: .center)
    }  //: ZSTACK
    .blur(radius: isAnnimating ? 0 : 10)
    .opacity(isAnnimating ? 1 : 0)
    .scaleEffect(isAnnimating ? 1 : 0.5)
    .animation(.easeOut(duration: 1), value: isAnnimating)
    .onAppear(perform: {
      isAnnimating = true
    })
  }
}

// MARK: - PREVIEW

struct CircleGroupView_Previews: PreviewProvider {
  static var previews: some View {
    ZStack {
      Color("ColorBlue")
        .ignoresSafeArea(.all, edges: .all)
      CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
    }
  }
}
