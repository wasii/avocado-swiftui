//
//  AvocadoView.swift
//  Avacados
//
//  Created by NaheedPK on 06/05/2022.
//

import SwiftUI

struct AvocadoView: View {
    @State private var pulseAnimation: Bool = false
    var body: some View {
        VStack {
            Spacer()
            Image("avocado")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 240, height: 240)
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x: 0, y: 8)
                .scaleEffect(pulseAnimation ? 1 : 0.9)
                .opacity(pulseAnimation ? 1 : 0.9)
                .animation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
            
            VStack {
                Text("Avocados")
                    .font(.system(size: 42, weight: .bold, design: .serif))
                    .foregroundColor(.white)
                    .shadow(color: Color("ColorBlackTransparentDark"), radius: 4, x: 0, y: 4)
                Text("Creamy, green, and full of nutrients! \nAvocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more! ")
                .lineLimit(nil)
                .font(.system(.headline, design: .serif))
                .foregroundColor(Color("ColorGreenLight"))
                .multilineTextAlignment(.center)
                .lineSpacing(8)
                .frame(maxWidth: 640, maxHeight: 140)
            }.padding()
            
            Spacer()
        }
        .background(
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
        )
        .edgesIgnoringSafeArea(.all)
        .onAppear {
            self.pulseAnimation.toggle()
        }
    }
}

struct AvocadoView_Previews: PreviewProvider {
    static var previews: some View {
        AvocadoView()
    }
}
