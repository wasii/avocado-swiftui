//
//  AppView.swift
//  Avacados
//
//  Created by NaheedPK on 06/05/2022.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            AvocadoView()
                .tabItem {
                    Image("tabicon-branch")
                    Text("Avocados")
                }
            ContentView()
                .tabItem {
                    Image("tabicon-book")
                    Text("Recipes")
                }
            RipeningStagesView()
                .tabItem {
                    Image("tabicon-avocado")
                    Text("Ripening")
                }
            Settings()
                .tabItem {
                    Image("tabicon-settings")
                    Text("Settings")
                }
        }
        
        .edgesIgnoringSafeArea(.top)
        .accentColor(Color.primary)
        .onAppear {
            let tabBarAppearance = UITabBarAppearance()
            tabBarAppearance.configureWithDefaultBackground()
                            UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
        }
    }
    
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
