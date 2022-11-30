//
//  ContentView.swift
//  BestBank
//
//  Created by Jakub Chodara on 30/11/2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView{
            Home()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            Payments()
                .tabItem {
                    Label("Payments", systemImage: "arrow.left.arrow.right")
                }
            Products()
                .tabItem {
                    Label("Products", systemImage: "folder.fill")
                }
            Finances()
                .tabItem {
                    Label("Finances", systemImage: "dollarsign.circle.fill")
                }
            Services()
                .tabItem {
                    Label("Services", systemImage: "hand.raised.square.on.square.fill")
                }
        }
        .tint(Color.green)
        .onAppear {
            //  let appearance = UITabBarAppearance()
              //appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
             // appearance.backgroundColor = UIColor(Color.gray.opacity(0.2))
             // UITabBar.appearance().standardAppearance = appearance
             // UITabBar.appearance().scrollEdgeAppearance = appearance
          }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
