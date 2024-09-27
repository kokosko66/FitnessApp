//
//  FitnessTabView.swift
//  FitnessApp
//
//  Created by Rosen Raikov on 26.09.24.
//

import SwiftUI

struct FitnessTabView: View {
    @State var selectedTab = "Home"
    
    init() {
        let appereance = UITabBarAppearance()
        appereance.configureWithOpaqueBackground()
        appereance.stackedLayoutAppearance.selected.iconColor = .green
        
        UITabBar.appearance().scrollEdgeAppearance = appereance
    }
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tag("Home")
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            HistoricDataView()
                .tag("Historic")
                .tabItem {
                    Image(systemName: "chart.line.uptrend.xyaxis")
                    Text("Progress")
                }
            
            AccountView()
                .tag("Account")
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
        }
    }
}

#Preview {
    FitnessTabView()
}
