//
//  HomeView.swift
//  FitnessApp
//
//  Created by Rosen Raikov on 26.09.24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                Text("Welcome")
                    .font(.largeTitle)
                    .padding()
                
                HStack {
                    VStack {
                        Text("Calories")
                            .font(.callout)
                            .bold()
                            .foregroundStyle(Color.red) 
                        
                        Text("123 kcal")
                            .bold()
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
