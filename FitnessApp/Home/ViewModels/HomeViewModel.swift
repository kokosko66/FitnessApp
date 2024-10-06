//
//  HomeViewModel.swift
//  FitnessApp
//
//  Created by Rosen Raikov on 6.10.24.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    var calories: Int = 123
    var active: Int = 50
    var stand: Int = 8
    
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
