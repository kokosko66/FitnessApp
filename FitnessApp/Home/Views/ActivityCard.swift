//
//  ActivityCard.swift
//  FitnessApp
//
//  Created by Rosen Raikov on 27.09.24.
//

import SwiftUI

struct ActivityCard: View {
    @State var activity: Activity
    var body: some View {
        ZStack {
            Color(uiColor: .systemGray6)
                .cornerRadius(15)
            
            VStack {
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text(activity.title)
                        
                        Text(activity.subtitle)
                            .font(.caption)
                            
                    }
                    Spacer()
                    
                    Image(systemName: activity.image)
                        .foregroundStyle(activity.tintColor)
                }
                
                Text(activity.amount)
                    .font(.title)
                    .bold()
                    .padding(.all, 10)
            }
            .padding()
        }
    }
}

#Preview {
    ActivityCard(activity: Activity(id: 0, title: "Todays steps", subtitle: "Goal: 10,000", image: "figure.walk", tintColor: .green, amount: "6,121"))
}
