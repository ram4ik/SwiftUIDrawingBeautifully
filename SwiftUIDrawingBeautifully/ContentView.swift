//
//  ContentView.swift
//  SwiftUIDrawingBeautifully
//
//  Created by ramil on 31.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, startRadius: 5, endRadius: 500)
                .scaleEffect(1.5)
            ZStack {
                Divider()
                Divider()
                    .rotationEffect(.degrees(90))
                Circle()
                    .trim(from: 1/4, to: 1)
                    .stroke(lineWidth: 2)
                    .scale(0.4)
                    .foregroundColor(.white)
                Capsule()
                    .scale(0.15)
                    .trim(from: 1/2, to: 1)
                    .stroke()
                    .rotationEffect(.degrees(180))
                    .foregroundColor(.white)
                Rectangle()
                    .frame(width: 62, height: 1)
                    .offset(y: 20)
                    .foregroundColor(.white)
                Rectangle()
                    .frame(width: 22, height: 1)
                    .rotationEffect(.degrees(90))
                    .foregroundColor(.white)
                    .offset(y: 72)
                Capsule()
                    .scale(0.075)
                    .rotationEffect(.degrees(180))
                    .foregroundColor(.blue)
                Capsule()
                    .stroke(lineWidth: 10)
                    .scale(0.075)
                    .rotationEffect(.degrees(180))
                    .foregroundColor(.white)
            }.scaleEffect(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
