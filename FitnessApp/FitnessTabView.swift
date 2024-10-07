//
//  FitnessTabView.swift
//  FitnessApp
//
//  Created by Rosen Raikov on 26.09.24.
//

import SwiftUI

struct FitnessTabView: View {
    @State var selectedTab = "Home"
    
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
            
            TrainersWorkoutsView()
                .tag("Trainers Workouts")
                .tabItem {
                    Image(systemName: "list.clipboard")
                    Text("Trainers Workouts")
                }
            
            AccountView()
                .tag("Account")
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
        }
        .tint(.green)
    }
}

#Preview {
    FitnessTabView()
}
