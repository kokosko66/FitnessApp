//
//  WorkoutCard.swift
//  FitnessApp
//
//  Created by Rosen Raikov on 3.10.24.
//

import SwiftUI

struct WorkoutCard: View {
    var body: some View {
        HStack {
            Image(systemName: "figure.run")
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
                .foregroundStyle(.green)
                .padding()
                .background(.gray.opacity(0.1))
                .cornerRadius(15)
            VStack(spacing: 11.5) {
                HStack {
                    Text("Time running")
                    
                    Spacer()
                    
                    Text("23 mins")
                }
                HStack {
                    Text("Aug 19")
                    
                    Spacer()
                    
                    Text("Burned: 341kcal")
                }
            }
        }
    }
}

#Preview {
    WorkoutCard()
}
