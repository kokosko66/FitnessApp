//
//  HomeView.swift
//  FitnessApp
//
//  Created by Rosen Raikov on 26.09.24.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    
    @State var calories: Int = 123
    @State var active: Int = 50
    @State var stand: Int = 8
    
    @Published var mockActivities = [
        Activity(id: 0, title: "Todays Steps", subtitle: "Goal: 10,000", image: "figure.walk", tintColor: .green, amount: "6,121"),
        Activity(id: 1, title: "Calories", subtitle: "Goal: 600", image: "flame", tintColor: .red, amount: "250"),
        Activity(id: 2, title: "Stand", subtitle: "Goal: 8 hours", image: "figure.stand", tintColor: .blue, amount: "5 hours"),
        Activity(id: 3, title: "Stand", subtitle: "Goal: 8 hours", image: "figure.stand", tintColor: .blue, amount: "5 hours")
    ]
    
    @Published var mockWorkouts = [
        Workout(id: 0, title: "Running", image: "figure.run", tintColor: .green, duration: "23 mins", date: "Aug 19", calories: "341 kcal"),
        Workout(id: 1, title: "Boxing", image: "figure.boxing", tintColor: .red, duration: "2 hours", date: "Aug 10", calories: "1000 kcal"),
        Workout(id: 2, title: "Skiing", image: "figure.skiing.downhill", tintColor: .blue, duration: "4 hours", date: "Aug 10", calories: "550 kcal"),
        Workout(id: 3, title: "Football", image: "figure.indoor.soccer", tintColor: .orange, duration: "45 mins", date: "Aug 25", calories: "870 kcal")
    ]
}

struct HomeView: View {
    
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading) {
                    Text("Welcome")
                        .font(.largeTitle)
                        .padding()
                    
                    HStack {
                        
                        
                        Spacer()
                        
                        VStack {
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Calories")
                                    .font(.callout)
                                    .bold()
                                    .foregroundStyle(Color.red)
                                
                                Text("123 kcal")
                                    .bold()
                            }
                            .padding(.bottom)
                            
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Active")
                                    .font(.callout)
                                    .bold()
                                    .foregroundStyle(Color.green)
                                
                                Text("50 mins")
                                    .bold()
                            }
                            .padding(.bottom)
                            
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Stand")
                                    .font(.callout)
                                    .bold()
                                    .foregroundStyle(Color.blue)
                                
                                Text("8 hours")
                                    .bold()
                            }
                        }
                        
                        Spacer()
                        
                        ZStack {
                            ProgressCricleView(progress: viewModel.$calories, goal: 600, color: .red)
                            
                            ProgressCricleView(progress: viewModel.$active, goal: 120, color: .green)
                                .padding(.all, 20)
                            
                            ProgressCricleView(progress: viewModel.$stand, goal: 12, color: .blue)
                                .padding(.all, 40)
                            
                        }
                        .padding(.horizontal)
                        
                        Spacer()
                        
                    }
                    .padding()
                    
                    HStack {
                        Text("Fitness Activity")
                            .font(.title2)
                        
                        Spacer()
                        
                        Button {
                            print("show more")
                        } label: {
                            Text("Show More")
                                .padding(.all, 10)
                                .foregroundStyle(Color.white)
                                .background(.blue)
                                .cornerRadius(20)
                        }
                    }
                    .padding(.horizontal)
                    
                    LazyVGrid(columns: Array(repeating: GridItem(spacing: 20), count: 2), spacing: 20) {
                        
                        ForEach(viewModel.mockActivities, id: \.id) { activity in
                            ActivityCard(activity: activity)
                        }
                        
                        
                    }
                    .padding(.horizontal)
                    
                    HStack {
                        Text("Recent Workouts")
                            .font(.title2)
                        
                        Spacer()
                        
                        NavigationLink {
                            EmptyView()
                        } label: {
                            Text("Show More")
                                .padding(.all, 10)
                                .foregroundStyle(Color.white)
                                .background(.blue)
                                .cornerRadius(20)
                        }
                    }
                    .padding(.horizontal)
                    
                    LazyVStack {
                        
                        ForEach(viewModel.mockWorkouts, id: \.id) { workout in
                            WorkoutCard(workout: workout)
                        }
                    }
                    .padding(.horizontal)
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
