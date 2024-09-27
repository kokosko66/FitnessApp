//
//  ProgressCricleView.swift
//  FitnessApp
//
//  Created by Rosen Raikov on 27.09.24.
//

import SwiftUI

struct ProgressCricleView: View {
    @Binding var progress: Int
    var goal: Int
    var color: Color
    private let width: CGFloat = 20
    
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(color.opacity(0.4), lineWidth: width)
            
            Circle()
                .trim(from: 0, to: CGFloat(progress) / CGFloat(goal))
                .stroke(color, style: StrokeStyle(lineWidth: width, lineCap: .round))
                .rotationEffect(.degrees(-90))
                .shadow(radius: 5)
        }
        .padding()
    }
}

#Preview {
    ProgressCricleView(progress: .constant(100), goal: 200, color: .red)
}
