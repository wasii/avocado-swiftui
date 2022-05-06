//
//  ContentView.swift
//  Avacados
//
//  Created by NaheedPK on 06/05/2022.
//

import SwiftUI

struct ContentView: View {
    var headers: [Header] = Header.getAllHeaders()
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(headers) { header in
                            HeaderView(header: header)
                        }
                    }
                }
                Text("Avocado Dishes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                //MARK: - DISHES
                DishesView()
                    .frame(maxWidth: 640)
                VStack(alignment: .center, spacing: 20) {
                    Text("All about Avocado")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    Text("Everything you wanted to know about Avocado but were too afraid to ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.gray)
                }
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .foregroundColor(Color("ColorGreenAdaptive"))
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
